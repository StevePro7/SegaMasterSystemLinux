using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;

namespace ScreenShotTest
{
	public class LevelManager
	{
		private AssetManager assetManager;
		private FileManager fileManager;
		private InputManager inputManager;
		private SelectorManager selectorManager;
		private Stack<Vector2> stack;
		private int wide, high;
		private int cols;
		private int rows;

		public LevelManager(AssetManager assetManager, FileManager fileManager, InputManager inputManager, SelectorManager selectorManager, int wide, int high)
		{
			this.assetManager = assetManager;
			this.fileManager = fileManager;
			this.inputManager = inputManager;
			this.selectorManager = selectorManager;
			stack = new Stack<Vector2>();
			this.wide = wide;
			this.high = high;
			cols = wide / 16;
			rows = high / 32;
			Tiles = new int[cols];
		}

		public void LoadContent()
		{
			fileManager.LoadContent();
			Tiles = fileManager.Tiles;
			for (int idx = 0; idx < 8; idx++)
			{
				Tiles[cols - idx - 1] = (int)AssetType.BbridgeMidd;
			}

			Tiles[cols - 4] = (int)AssetType.RbridgeSignGoal;
		}

		public void Update()
		{
			int row = (int)(inputManager.MousePosition.Y);
			int col = (int)(inputManager.MousePosition.X);
			int selector = selectorManager.Selector;

			bool left = inputManager.LeftButton();
			bool rght = inputManager.RightButton();

			if (inputManager.KeyHold(Keys.Delete))
			{
				if (stack.Count > 0)
				{
					Vector2 position = stack.Pop();
					//row = (int)(position.Y);
					col = (int)(position.X);
					//var oldTile = Tiles[col];
					Tiles[col] = (int)AssetType.AwavesBlock;
					//if (Tiles[col - 1] >= (int)AssetType.SislandTinyXtra)
					//{
					//	Tiles[col - 1] = (int)AssetType.AwavesBlock;
					//}
					//if (Tiles[col + 1] >= (int)AssetType.SislandTinyXtra)
					//{
					//	Tiles[col + 1] = (int)AssetType.AwavesBlock;
					//}
				}
			}

			if (left || rght)
			{
				bool play = row < rows;
				if (!play)
				{
					return;
				}

				if (col < 0 || col >= cols - 8 || row < 0 || row >= rows)
				{
					return;
				}
			}

			if (left)
			{
				//Logger.Info(col.ToString());
				//bool isValid	TODO
				var oldTile = Tiles[col];
				if (selector != oldTile)
				{
					if (selector < (int)AssetType.RbridgeSignGoal)
					{
						stack.Push(inputManager.MousePosition);
					}
				}
				//if (oldTile < (int)AssetType.SislandTinyXtra)
				//{
					Tiles[col] = selector;
				//	if (selector >= (int)AssetType.EislandTiny && selector <= (int)AssetType.JislandSign)
				//	{
				//		Tiles[col + 1] = selector + 14;
				//	}
				//}
			}

			if (rght)
			{
				if (stack.Count > 0)
				{
					stack.Pop();
					//Vector2 position = stack.Pop();
				}

				//var oldTile = Tiles[col];
				Tiles[col] = (int)AssetType.AwavesBlock;
				//if (oldTile >= (int)AssetType.EislandTiny && oldTile <= (int)AssetType.JislandSign)
				//{
				//	Tiles[col + 1] = (int)AssetType.AwavesBlock;
				//}
				//if (Tiles[col + 1] >= (int)AssetType.SislandTinyXtra)
				//{
				//	Tiles[col + 0] = (int)AssetType.AwavesBlock;
				//	Tiles[col + 1] = (int)AssetType.AwavesBlock;
				//}
			}
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
