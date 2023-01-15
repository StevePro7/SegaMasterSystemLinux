using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class BoardManager
	{
		private AssetManager assetManager;
		private FileManager fileManager;
		private Texture2D stripHorz, stripVert;

		public BoardManager(AssetManager assetManager, FileManager fileManager)
		{
			this.assetManager = assetManager;
			this.fileManager = fileManager;
		}

		public void LoadContent(ContentManager myContentManager)
		{
			stripHorz = myContentManager.Load<Texture2D>("StripHorz");
			stripVert = myContentManager.Load<Texture2D>("StripVert");
		}

		public void Draw(SpriteBatch spriteBatch, int wide, int high)
		{
			Texture2D image;
			Vector2 pos = new Vector2(0, 0);
			int x = 0;
			// Draw waves
			for (int box = 0; box < wide; box += 32)
			{
				image = assetManager.Images[(int)AssetType.AwavesBlock];
				spriteBatch.Draw(image, new Vector2(x, 0), Color.White);
				spriteBatch.Draw(image, new Vector2(x, 112), Color.White);
				x += 32;
			}

			// TODO replace with tile mgr
			//foreach (var obj in fileManager.Objects)
			//{
			//	image = assetManager.Images[obj];
			//	spriteBatch.Draw(image, pos, Color.White);
			//	pos.X += image.Width;
			//}

			// Draw selectors
			pos = new Vector2(256+128, 112);
			int delta = 0;
			int index;
			for (index = 4; index < 10; index++)
			{
				image = assetManager.Images[index];
				delta = 0;
				if (image.Width == 32)
				{
					delta = 16;
				}
				spriteBatch.Draw(image, new Vector2(pos.X + delta, pos.Y), Color.White);
				pos.X += 64;
			}

			// Draw lines
			for (int col = 0; col < wide; col += 32)
			{
				spriteBatch.Draw(stripVert, new Vector2(col, 0), new Rectangle(0, 0, 2, 112), Color.White);
				if (col > 0 && 0 == col % 64)
				{
					spriteBatch.Draw(stripVert, new Vector2(col, 112), new Rectangle(0, 0, 2, 112), Color.White);
				}
				if (col > 0 && 0 == col % 256)
				{
					spriteBatch.Draw(stripVert, new Vector2(col, 0), new Rectangle(0, 0, 2, 224), Color.Black);
				}
			}
			for (int row = 0; row < wide; row += 512)
			{
				spriteBatch.Draw(stripHorz, new Vector2(row, 112), Color.Black);
			}


		}
	}
}
