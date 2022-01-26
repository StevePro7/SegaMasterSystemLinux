using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Text;

namespace ScreenShotTest
{	
	public class ImageManager
	{
		GraphicsDevice graphicsDevice;
		PaletteManager paletteManager;
		Texture2D texture;
		Texture2D tileImg;
		StringBuilder sb;
		int px, py;
		int tx, ty;

		Color[] texColors;
		Color[] newColors;
		Color[] allColors;
		RenderTarget2D renderTargetSmall, renderTargetLarge;

		public ImageManager(GraphicsDevice graphicsDevice, PaletteManager paletteManager)
		{
			this.graphicsDevice = graphicsDevice;
			this.paletteManager = paletteManager;
			sb = new StringBuilder();
			tileImg = new Texture2D(graphicsDevice, 8, 8);
		}

		public void Draw(bool save, SpriteBatch spriteBatch)
		{
			tileImg.SetData<Color>(newColors);
			graphicsDevice.Clear(Color.Black);
			spriteBatch.Begin();
			spriteBatch.Draw(tileImg, Vector2.Zero, Color.White);
			spriteBatch.End();
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
					inp_index++;
					out_index++;
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

			renderTargetSmall = new RenderTarget2D(graphicsDevice, 8, 8, false, SurfaceFormat.Color, DepthFormat.Depth24);
			renderTargetLarge = new RenderTarget2D(graphicsDevice, 8, 8, false, SurfaceFormat.Color, DepthFormat.Depth24);
		}
	}
}
