using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.IO;
using System.Text;

namespace ScreenShotTest
{
	public class ImageManager
	{
		public void Process(SpriteBatch spriteBatch, Texture2D image)
		{
			int wide = image.Width;
			int high = image.Height;

			int tx = wide / 8;
			int ty = high / 8;

			var texColors = new Color[wide * high];

			var inp_index = 0;
			var inp_delta = tx * 8;
			var inp_start = GetStart(inp_index);

			int row_index;
			int tmp_index
			for (int row = 0; row < ty; row++)
			{
				for (int col = 0; col <tx; col++)
				{

				}
			}
		}

		private int GetStart(int index)
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
