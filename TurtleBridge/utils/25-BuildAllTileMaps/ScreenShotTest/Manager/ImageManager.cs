using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.IO;
using System.Text;

namespace ScreenShotTest
{
	public class ImageManager
	{
		PaletteManager paletteManager;
		TileManager tileManager;
		TilemapManager tilemapManager;

		public void Initialize(
			PaletteManager paletteManager,
			TileManager tileManager,
			TilemapManager tilemapManager
			)
		{
			this.paletteManager = paletteManager;
			this.tileManager = tileManager;
			this.tilemapManager = tilemapManager;
		}

		public void Process(SpriteBatch spriteBatch, Texture2D image)
		{
			int px = image.Width;
			int py = image.Height;

			var texColors = new Color[px * py];
			image.GetData(texColors);

			int tx = px / 8;
			int ty = py / 8;

			int inp_delta = px;// tx * 8;
			for (int iy = 0; iy < ty; iy++)
			{
				for (int ix = 0; ix < tx; ix++)
				{
					int inp_index = (iy * tx) + ix;
					int inp_start = GetStart(inp_index, tx, ty);

					string hash = tileManager.ProcessTile(texColors, inp_start, inp_delta);
				}
			}
		}

		public void ProcessX(SpriteBatch spriteBatch, Texture2D image)
		{
			int px = image.Width;
			int py = image.Height;

			int tx = px / 8;
			int ty = py / 8;

			var texColors = new Color[px * py];
			image.GetData(texColors);

			//var inp_index = 0;
			var inp_delta = tx * 8;
			var inp_start = 0; // GetStart(inp_index);

			int row_index;
//			int tmp_index;

			for (int cy = 0; cy < 8; cy++)
			{
				row_index = cy * inp_delta;
				row_index = inp_start + row_index;

				for (int cx = 0; cx < 8; cx++)
				{
					//tmp_index = row_index + cx;
					//var texColor = texColors[tmp_index];
					//var text = paletteManager.GetColorAtIndex(texColor);
					//var data = text.Replace("$", "");
					//sb.Append(data);
					//newColors[cy * 8 + cx] = texColors[tmp_index];
					////allColors[tmp2_index] = texColors[tmp_index];
				}
			}
		}

		private int GetStart(int index, int tx, int yy)
		{
			int base1 = index / tx;
			int base2 = base1 * tx;
			int bases = base2 * 64;

			int star1 = index % tx;
			int star2 = star1 * 8;
			int start = bases + star2;

			return start;
		}
	}
}
