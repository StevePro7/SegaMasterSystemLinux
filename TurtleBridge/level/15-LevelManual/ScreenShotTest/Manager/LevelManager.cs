using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class LevelManager
	{
		private AssetManager assetManager;
		private FileManager fileManager;
		private int cols;

		public LevelManager(AssetManager assetManager, FileManager fileManager)
		{
			this.assetManager = assetManager;
			this.fileManager = fileManager;
		}

		public void Initialize(int wide)
		{
			cols = wide / 16;
			Tiles = new int[cols];
			//Tiles = GetTiles();
		}

		public void LoadContent()
		{
			fileManager.LoadContent();
			Tiles = fileManager.Tiles;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			Vector2 pos = Vector2.Zero;
			int tile = 0;
			Texture2D image;
			for (int idx = 0; idx < cols; idx++)
			{
				tile = Tiles[idx];
				if (tile < (int)AssetType.SislandTinyXtra)
				{
					image = assetManager.ImagesSmall[tile];
					spriteBatch.Draw(image, pos, Color.White);
				}

				pos.X += 16;
			}
		}

		private int[] GetTiles()
		{
			for (int idx = 0; idx < cols; idx++)
			{
				Tiles[idx] = 0;
			}
			Tiles[0] = (int)AssetType.BbridgeMidd;
			Tiles[1] = (int)AssetType.BbridgeMidd;
			Tiles[2] = (int)AssetType.FislandLeft;
			Tiles[3] = (int)AssetType.TislandLeftXtra;
			Tiles[4] = (int)AssetType.BbridgeMidd;
			Tiles[5] = (int)AssetType.BbridgeMidd;
			//Tiles[6] = (int)AssetType.BbridgeMidd;

			return Tiles;
		}

		public int[] Tiles { get; private set; }
	}
}
