using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
//using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Drawing;
using System.IO;

namespace SpriteTool
{
    // RAM Addresses
    // 8x8: 120*256 + 16 * ID_MONO8 + offset
    // 16x16: (128+120)*256 + 64 * ID_MONO16 + offset
    // 24x24: 160*(6*ID_FULL24 + offset/(256-160)) + offset % (offset/(256-160))
    // 48x48: (128+120)*256 + 160*(24*ID_FULL480 + offset/(256-160)) + offset % (offset/(256-160))
    enum SpriteType
    {
        Grayscale, //24x24 or 48x48
        Mono, //16x16 or 8x8
        RGBI //24x24 or 48x48
    }
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Bitmap wimg;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void dropLabelMono_Drop(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                string[] files = (string[])e.Data.GetData(DataFormats.FileDrop);
                foreach (string f in files)
                {
                    processFile(f, SpriteType.Mono);
                }
            }
        }
        private void dropLabelGray_Drop(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                string[] files = (string[])e.Data.GetData(DataFormats.FileDrop);
                foreach (string f in files)
                {
                    processFile(f, SpriteType.Grayscale);
                }
            }
        }
        private void dropLabelRGBI_Drop(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                string[] files = (string[])e.Data.GetData(DataFormats.FileDrop);
                foreach (string f in files)
                {
                    processFile(f, SpriteType.RGBI);
                }
            }
        }
        void processFile(string filename, SpriteType stype)
        {
            wimg = (Bitmap)Bitmap.FromFile(filename, true);
            int h = wimg.Height;
            int w = wimg.Width;
            int size = w * h;
            Color[] sprite = new Color[size];
            int i = 0;
            for(int y = h-1;y>=0;y--){
                for (int x = w - 1; x >= 0; x--)
                {
                    sprite[i] = wimg.GetPixel(x, y);
                    i++;
                }
            }
            wimg.Dispose();
            using (StreamWriter sw = new StreamWriter(filename + ".h"))
            {
                sw.WriteLine("byte w = {0};", w);
                sw.WriteLine("byte h = {0};", h);
                sw.WriteLine("SpriteType stype = {0};", stype);
                sw.WriteLine("byte[] data = {");
                int data = 0;
                if (stype == SpriteType.Mono)
                {
                    i = 7;
                }
                else if (stype == SpriteType.Grayscale)
                {
                    i = 4;
                }
                else if (stype == SpriteType.RGBI)
                {
                    i = 4;
                }
                bool first = true;
                foreach (Color c in sprite)
                {
                    if (stype == SpriteType.Mono)
                    {
                        int grayscale1 = Conv8to1(ConvRGBto8(c));
                        data = data | (grayscale1 << (byte)i);
                        i--;                        
                    }
                    else if (stype == SpriteType.Grayscale)
                    {
                        int grayscale4 = Conv8to4(ConvRGBto8(c));
                        data = data | (grayscale4 << (byte)i);
                        i -= 4;                        
                    }
                    else if (stype == SpriteType.RGBI)
                    {
                        int I = Conv8to1(ConvRGBto8(c));
                        int R = Conv8to1(c.R);
                        int G = Conv8to1(c.G);
                        int B = Conv8to1(c.B);
                        data = data | (R << (byte)i+3);
                        data = data | (G << (byte)i + 2);
                        data = data | (B << (byte)i + 1);
                        data = data | (I << (byte)i);
                        i -= 4;                       
                    }
                    if (i < 0)
                    {
                        if (stype == SpriteType.Mono)
                        {
                            i = 7;
                        }
                        else if (stype == SpriteType.Grayscale)
                        {
                            i = 4;
                        }
                        else if (stype == SpriteType.RGBI)
                        {
                            i = 4;
                        }
                        if (!first)
                            sw.Write(",\r\n");
                        first = false;
                        sw.Write("\tB{0}", Convert.ToString(data, 2));
                        data = 0;
                    }
                    
                }
                sw.WriteLine("\r\n};");
            }
        }
        int Conv4to8(int a)
        {
            return (int)Math.Round((double)a * 255.0 / 15.0);
        }
        int Conv8to4(int a)
        {
            return (int)Math.Min(15, Math.Round((double)a / 256.0 * 16.0));
        }
        int Conv8to1(int a)
        {
            return (int)Math.Min(1, Math.Round((double)a / 256.0));
        }
        int ConvRGBto8(Color c)
        {
            return (int)Math.Round(((float)c.B + (float)c.G + (float)c.R)/3);
        }
    }
}
