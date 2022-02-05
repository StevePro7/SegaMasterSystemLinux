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

					int key = tileManager.ProcessTile(texColors, inp_start, inp_delta);
					//tilemapManager.ProcessTilemap(ix, iy, key);
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
