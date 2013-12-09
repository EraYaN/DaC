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
    // 16x16: (128+120)*256 + 64 * ID_MONO16 + offset   
    enum SpriteType
    {
        Mono, //16x16        
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
				if (files.Count() > 0)
				{
					string setname;
					if (setName_TextBox.Text != "")
						setname = setName_TextBox.Text;
					else
						setname = System.IO.Path.GetFileNameWithoutExtension(files[0]);
					bool firstfile = true;
					using (StreamWriter sw = new StreamWriter(setname + "_set.cpp"))
					{
                        using (StreamWriter sw_h = new StreamWriter(setname + "_set.h"))
                        {
                            using (StreamWriter sw_data = new StreamWriter(setname + "_set_data.cpp"))
                            {
                                using (StreamWriter sw_data_h = new StreamWriter(setname + "_set_data.h"))
                                {
                                    sw_h.WriteLine("#pragma once");
                                    sw_h.WriteLine("#ifndef _SPRITES_SET_{0}_", setname.ToUpper());
                                    sw_h.WriteLine("#define _SPRITES_SET_{0}_", setname.ToUpper());
                                    sw_h.WriteLine("#include \"{0}\"", setname + "_set_data.h");
                                    sw_h.WriteLine("extern Sprite *sprites_{0}_set[];", setname.ToLower());
                                    sw.WriteLine("#include \"Util.h\"");
                                    sw.WriteLine("//Number of sprites in set: {0}", files.Count());
                                    sw.Write("Sprite *sprites_{0}_set[] = ", setname.ToLower());
                                    sw.WriteLine("{");
                                    sw_data.WriteLine("#include \"Util.h\"");
                                    sw_data_h.WriteLine("#pragma once");
                                    sw_data_h.WriteLine("#ifndef _SPRITES_SET_{0}_DATA_", setname.ToUpper());
                                    sw_data_h.WriteLine("#define _SPRITES_SET_{0}_DATA_", setname.ToUpper());
                                    foreach (string f in files)
                                    {
                                        processFile(f, setname, sw, sw_h, sw_data, sw_data_h, firstfile);
                                        firstfile = false;
                                    }
                                    sw.WriteLine("\r\n};");
                                    sw_h.WriteLine("#endif");
                                    sw_data_h.WriteLine("#endif");
                                }
                            }
                        }
					}
				}
            }
        }
        void processFile(string filename, string setname, StreamWriter sw, StreamWriter sw_h, StreamWriter sw_data, StreamWriter sw_data_h, bool firstfile = false)
		{
			wimg = (Bitmap)Bitmap.FromFile(filename, true);
			int h = wimg.Height;
			int w = wimg.Width;
			int size = w * h;
			Color[] sprite = new Color[size];
			int i = 0;
			for (int y = h - 1; y >= 0; y--)
			{
				for (int x = w - 1; x >= 0; x--)
				{
					sprite[i] = wimg.GetPixel(x, y);
					i++;
				}
			}
			wimg.Dispose();
			string varname = System.IO.Path.GetFileNameWithoutExtension(filename);
			if(!firstfile){
				sw.WriteLine(",");
			}
			sw.Write("new Sprite(0,{0},{1},{2},set_{3}_sprite_{4})", w, h, (int)Math.Ceiling((w * h) / 8.0), setname, varname);
			sw_data.Write("extern const prog_uchar set_{0}_sprite_{1}[] = ", setname, varname);
            sw_data_h.WriteLine("PROGMEM extern const prog_uchar set_{0}_sprite_{1}[];", setname, varname);
			sw_data.WriteLine("{");
			int data = 0;
			i = 7;
			int count = 0 ;
			bool first = true;
			foreach (Color c in sprite)
			{
				int grayscale1 = Conv8to1(ConvRGBto8(c));
				data = data | (grayscale1 << (byte)i);
				i--;
				if (i < 0)
				{
					i = 7;
					if (!first)
						sw_data.Write(",");
					if (count % 8 == 0)
					{
                        if (!first)
                        {
                            sw_data.WriteLine();
                        }
						sw_data.Write("\t");
					}
					count++;
					first = false;
					sw_data.Write("{0,3}", data);
					data = 0;
				}
			}
			sw_data.WriteLine("\r\n};\r\n");
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
