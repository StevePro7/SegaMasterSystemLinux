using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Text;

namespace ScreenShotTest
{
	public class TileManager
	{
		ImageManager imageManager;
		int px, py;
		int tx, ty;

		public TileManager(ImageManager imageManager)
		{
			this.imageManager = imageManager;
		}

		public void LoadContent(Texture2D texture)
		{
			imageManager.LoadContent(texture);
			px = texture.Width;
			py = texture.Height;
			tx = px / 8;
			ty = py / 8;
		}

		public void Process()
		{
			int ix, iy;
			ix = 0;
			iy = 0;
			int out_index = 0;
			int inp_index = iy * ty + ix;

			var hash = imageManager.Process(inp_index, out_index);
		}
	}
}
