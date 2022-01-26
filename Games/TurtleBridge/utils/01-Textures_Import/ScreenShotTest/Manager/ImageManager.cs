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
		Color[] allColors;
		RenderTarget2D renderTargetSmall, renderTargetLarge;

		public ImageManager(PaletteManager paletteManager)
		{
			this.paletteManager = paletteManager;
			sb = new StringBuilder();
		}

		public string Process(int inp_index, int out_index)
		{
			sb.Length = 0;
			int cx, cy;

			Color texColor;
			for (cy = 0; cy < 8; cy++)
			{
				for (cx = 0; cx < 8; cx++)
				{
					texColor = texColors[inp_index];
					var text = paletteManager.GetColorAtIndex(texColor);
					var data = text.Replace("$", "");
					sb.Append(data);
					newColors[cy * 8 + cx] = texColors[inp_index];
					allColors[out_index] = texColors[inp_index];
				}
			}

			string hash = sb.ToString();
			return hash;
		}

		public void LoadContent(GraphicsDevice graphicsDevice, Texture2D texture)
		{
			this.texture = texture;
			px = texture.Width;
			py= texture.Height;

			texColors = new Color[px * py];
			allColors = new Color[px * py];
			newColors = new Color[8 * 8];

			texture.GetData(texColors);

			tx = px / 8;
			ty = py / 8;
			//sy = 0;
			//sx = 0;

			renderTargetSmall = new RenderTarget2D(graphicsDevice, 8, 8, false, SurfaceFormat.Color, DepthFormat.Depth24);
			renderTargetLarge = new RenderTarget2D(graphicsDevice, 8, 8, false, SurfaceFormat.Color, DepthFormat.Depth24);
		}
	}
}
