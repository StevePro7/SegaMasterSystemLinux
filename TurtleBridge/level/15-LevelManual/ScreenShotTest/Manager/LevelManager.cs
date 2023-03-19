using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;

namespace ScreenShotTest
{
	public class LevelManager
	{
		private Game game;
		private AssetManager assetManager;
		private ConfigManager configManager;
		private FileManager fileManager;
		private InputManager inputManager;
		private SelectorManager selectorManager;
		private Stack<Vector2> stack;
		private int wide, high;
		private int rows, cols;

		public LevelManager(Game game, AssetManager assetManager, ConfigManager configManager, FileManager fileManager, InputManager inputManager, SelectorManager selectorManager, int wide, int high)
		{
			this.game = game;
			this.assetManager = assetManager;
			this.configManager = configManager;
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

			// TODO Hard code end-of-level??
			//for (int idx = 0; idx < 8; idx++)
			//{
			//	Tiles[cols - idx - 1] = (int)AssetType.BbridgeMidd;
			//}
			//Tiles[cols - 4] = (int)AssetType.RbridgeSignGoal;
		}

		public void Update()
		{
			int row = (int)(inputManager.MousePosition.Y);
			int col = (int)(inputManager.MousePosition.X);
			int selector = selectorManager.Selector;

			// Check delete first.
			if (inputManager.KeyHold(Keys.Delete))
			{
				if (stack.Count > 0)
				{
					Vector2 position = stack.Pop();
					col = (int)(position.X);
					Tiles[col] = (int)AssetType.AwavesBlock;
				}
			}

			if (inputManager.KeyHold(Keys.Back))
			{
				int end = Tiles.Length - col - 1;
				for (int idx = 0; idx < end; idx++)
				{
					Tiles[col + idx] = Tiles[col + idx + 1];
				}

				// Blank out the last column.
				Tiles[cols - 1] = (int)tile_type.tile_type_waves_block;
			}

			if (inputManager.KeyHold(Keys.A))
			{
				for (int idx = 0; idx < Tiles.Length; idx++)
				{
					Tiles[idx] = selectorManager.Selector;
				}
			}

			bool left = inputManager.LeftButton();
			bool rght = inputManager.RightButton();
			bool ctrl = inputManager.KeyDown(Keys.LeftControl);
			if (left || rght)
			{
				bool play = row < rows;
				if (!play)
				{
					return;
				}

				if (col < 0 || col >= cols || row < 0 || row >= rows)
				{
					return;
				}

				// Edge case for trees
				if (selectorManager.Selector == (int)AssetType.IislandTreeL)
				{
					if (col >= cols-2)
					{
						return;
					}
				}
			}

			if (inputManager.KeyHold(Keys.Right))
			{
				for (int idx = cols - 1; idx > col; idx--)
				{
					Tiles[idx] = Tiles[idx - 1];
				}

				Tiles[col] = (int)AssetType.AwavesBlock;
			}

			if (inputManager.KeyHold(Keys.Left))
			{
				for (int idx = 0; idx < col; idx++)
				{
					Tiles[idx] = Tiles[idx + 1];
				}

				Tiles[col] = (int)AssetType.AwavesBlock;
			}

			if (left)
			{
				var oldTile = Tiles[col];
				if (selector != oldTile)
				{
					Vector2 pos = inputManager.MousePosition;
					stack.Push(pos);
				}

				if (ctrl)
				{
					var tmpRow = row;
					if (0 == row)
					{
						tmpRow = 1;
					}
					var tmpSel = 16 - tmpRow;
					Tiles[col] = tmpSel;
				}
				else
				{
					Tiles[col] = selector;
				}
			}

			if (rght)
			{
				if (stack.Count > 0)
				{
					stack.Pop();
					//Vector2 position = stack.Pop();
				}

				Tiles[col] = (int)AssetType.AwavesBlock;
			}

			if (inputManager.KeyHold(Keys.Q))
			{
				for (int idx = 0; idx < cols; idx++)
				{
					Tiles[idx] = (int)AssetType.AwavesBlock;
				}
			}

			if (inputManager.KeyHold(Keys.Space))
			{
				Validate();
			}

			if (inputManager.KeyHold(Keys.Back))
			{
				string point = configManager.CheckPoint.ToString().PadLeft(2, '0');
				game.Window.Title = "CheckPoint-" + point;
			}
		}

		public void UpdateTrees()
		{
			for (int idx = 0; idx < cols - 1; idx++)
			{
				if ((int)AssetType.IislandTreeL == Tiles[idx])
				{
					Tiles[idx + 1] = (int)AssetType.JislandTreeR;
				}
			}
		}

		public void Validate()
		{
			IsValid = false;
			int tile = Tiles[0];
			if (!((tile == (int)AssetType.AwavesBlock) || (tile == (int)AssetType.BbridgeMidd) || ((tile == (int)AssetType.EislandMidd) || (tile == (int)AssetType.FislandLeft))))
			{
				BadCols = 0;
				return;
			}
			tile = Tiles[cols-1];
			if (!((tile == (int)AssetType.AwavesBlock) || (tile == (int)AssetType.BbridgeMidd) || ((tile == (int)AssetType.EislandMidd) || (tile == (int)AssetType.GislandRght))))
			{
				BadCols = 0;
				return;
			}

			var goals = 0;
			for (int idx = 1; idx < cols - 1; idx++)
			{
				tile = Tiles[idx];
				var prev = Tiles[idx - 1];
				var next = Tiles[idx + 1];

				if ((tile == (int)AssetType.RbridgeSignGoal) || tile == (int)AssetType.SislandSignGoal)
				{
					goals++;
					if (goals > 1)
					{
						BadCols = idx;
						return;
					}
				}
				if ((int)AssetType.QbridgeSideFlip== tile)
				{
					if ((int)AssetType.BbridgeMidd != next)
					{
						BadCols = idx;
						return;
					}
				}
				if ((int)AssetType.CbridgeSide == tile)
				{
					if ((int)AssetType.BbridgeMidd != prev)
					{
						BadCols = idx;
						return;
					}
				}
				if ((int)AssetType.FislandLeft == tile)
				{
					if (!((next == (int)AssetType.EislandMidd) || (next == (int)AssetType.GislandRght) || ((next == (int)AssetType.HislandSign) || (next== (int)AssetType.IislandTreeL))))
					{
						BadCols = idx;
						return;
					}
				}
				if ((int)AssetType.GislandRght == tile)
				{
					if (!((prev == (int)AssetType.EislandMidd) || (prev == (int)AssetType.FislandLeft) || ((prev == (int)AssetType.HislandSign))))
					{
						BadCols = idx;
						return;
					}
				}
				if ((int)AssetType.RbridgeSignGoal == tile)
				{
					if (!((prev == (int)AssetType.BbridgeMidd) || (next == (int)AssetType.BbridgeMidd)))
					{
						BadCols = idx;
						return;
					}
				}
				if (((int)AssetType.EislandMidd == tile) || ((int)AssetType.HislandSign == tile) || ((int)AssetType.SislandSignGoal == tile))
				{
					if ((prev == (int)AssetType.AwavesBlock) || (next == (int)AssetType.AwavesBlock))
					{
						BadCols = idx;
						return;
					}
				}
			}
			IsValid = true;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			Vector2 pos = Vector2.Zero;
			int tile = 0;
			Texture2D image;
			for (int idx = 0; idx < cols; idx++)
			{
				tile = Tiles[idx];
				//if (tile < (int)AssetType.SislandTinyXtra)
				//{
					image = assetManager.ImagesSmall[tile];
					spriteBatch.Draw(image, pos, Color.White);
				//}

				pos.X += 16;
			}
		}

		private int[] GetTiles()
		{
			for (int idx = 0; idx < cols; idx++)
			{
				Tiles[idx] = 0;
			}
			//Tiles[0] = (int)AssetType.BbridgeMidd;
			//Tiles[1] = (int)AssetType.BbridgeMidd;
			//Tiles[2] = (int)AssetType.FislandLeft;
			//Tiles[3] = (int)AssetType.TislandLeftXtra;
			//Tiles[4] = (int)AssetType.BbridgeMidd;
			//Tiles[5] = (int)AssetType.BbridgeMidd;
			////Tiles[6] = (int)AssetType.BbridgeMidd;

			return Tiles;
		}

		public int[] Tiles { get; set; }
		public bool IsValid { get; private set; }
		public int BadCols { get; private set; }
	}
}
