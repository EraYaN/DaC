using System;
using System.Drawing;

namespace BitmapBash
{
	class Program
	{
		static void Main(string[] args)
		{
			Bitmap source = new Bitmap("bitmap.png");
			char[] ascii = " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~".ToCharArray();

			for (int i=0; i<ascii.Length; i++)
			{
				char c = ascii[i];
				Bitmap cbitmap = new Bitmap(6, 8);
				using (Graphics g = Graphics.FromImage(cbitmap))
				{
					g.DrawImage(source, new Rectangle(0, 0, cbitmap.Width, cbitmap.Height), new Rectangle(cbitmap.Width * (i % 32), cbitmap.Height * (int)Math.Ceiling((double)(i/32)), cbitmap.Width, cbitmap.Height), GraphicsUnit.Pixel);
				}
				cbitmap.Save((int)c + ".bmp"); 
			}
		}
	}
}
