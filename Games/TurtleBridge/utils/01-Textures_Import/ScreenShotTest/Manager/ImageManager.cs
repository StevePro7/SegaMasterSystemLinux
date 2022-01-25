using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Text;

namespace ScreenShotTest
{	
	public class ImageManager
	{
		PaletteManager paletteManager;
		Texture2D texture;
		StringBuilder sb;
		int px, py;
		int tx, ty;
		//int ix, iy;
		Color[] texColors;
		Color[] newColors;

		public ImageManager(PaletteManager paletteManager)
		{
			this.paletteManager = paletteManager;
			sb = new StringBuilder();
		}

		public void Process()
		{
			sb.Length = 0;
			int cx, cy;

			Color texColor;
			int index = 0;

			for (cy = 0; cy < 8; cy++)
			{
				//var outLine = String.Empty;
				for (cx = 0; cx < 8; cx++)
				{
					index = cy * 8 + cx;
					texColor = texColors[index];
					var text = paletteManager.GetColorAtIndex(texColor);
					var data = text.Replace("$", "");
					sb.Append(data);
					//outLine += text + ",";
					newColors[index] = texColors[index];
				}
				//outLine = outLine.Substring(0, outLine.Length - 1);
				//outlines.Add(outLine);
			}

			string hash = sb.ToString();
		}

		public void LoadContent(Texture2D texture)
		{
			this.texture = texture;
			px = texture.Width;
			py= texture.Height;

			texColors = new Color[px * py];
			newColors = new Color[px* py];

			texture.GetData(texColors);

			tx = px / 8;
			ty = py / 8;
			//sy = 0;
			//sx = 0;
		}
	}
}
