using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.IO;
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
		int delta;
		int start;

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

		public void Draw(bool save, SpriteBatch spriteBatch, string txtTile)
		{
			tileImg.SetData<Color>(newColors);
			if (save)
			{
				//GraphicsDevice.SetRenderTarget(0, renderTarget);
				graphicsDevice.SetRenderTarget(renderTargetSmall);
				graphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, Color.CornflowerBlue, 1, 0);

				Draw(spriteBatch);

				graphicsDevice.SetRenderTarget(null);
				Texture2D resolvedTexture = (Texture2D)renderTargetSmall;
				Stream stream = File.Create("output/" + txtTile + ".png");
				resolvedTexture.SaveAsPng(stream, 8, 8);
			}
			else
			{
				Draw(spriteBatch);
			}
		}

		private void Draw(SpriteBatch spriteBatch)
		{
			graphicsDevice.Clear(Color.Black);
			spriteBatch.Begin();
			spriteBatch.Draw(tileImg, Vector2.Zero, Color.White);
			spriteBatch.End();
		}

		public string Process(int inp_index, int out_index)
		{
			sb.Length = 0;

			delta = tx * 8;

			int base1 = inp_index / tx;
			int base2 = base1 * tx;
			int bases = base2 * 64;

			int star1 = inp_index % tx;
			int star2 = star1 * 8;
			start = bases + star2;

			int row_index;
			int tmp_index;
			//tmp_index = inp_index;
			Color texColor;
			//int ix, iy;
			//ix = inp_index / tx;
			//iy = inp_index % ty;

			//int cx, cy;
			//row_index = start;
			//tmp_index = start;
			for (int cy = 0; cy < 8; cy++)
			{
				row_index = cy * delta;
				row_index = start + row_index;
			//	iy = cy * py;
			//	ix = (px - 1) * 8;
				for (int cx = 0; cx < 8; cx++)
				{
					tmp_index = row_index + cx;
					texColor = texColors[tmp_index];
					var text = paletteManager.GetColorAtIndex(texColor);
					var data = text.Replace("$", "");
					sb.Append(data);
					newColors[cy * 8 + cx] = texColors[tmp_index];
					allColors[out_index] = texColors[tmp_index];
			//		inp_index++;
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
			tx = px / 8;
			ty = py / 8;
			delta = 0;
			start = 0;

			texColors = new Color[px * py];
			allColors = new Color[px * py];
			newColors = new Color[8 * 8];

			texture.GetData(texColors);
			renderTargetSmall = new RenderTarget2D(graphicsDevice, 8, 8, false, SurfaceFormat.Color, DepthFormat.Depth24);
			renderTargetLarge = new RenderTarget2D(graphicsDevice, 8, 8, false, SurfaceFormat.Color, DepthFormat.Depth24);
		}
	}
}
