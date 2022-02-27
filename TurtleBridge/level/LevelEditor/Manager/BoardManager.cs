using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace LevelEditor
{
	public class BoardManager
	{
		private AssetManager assetManager;
		private ConfigManager configManager;
		private MappingManager mappingManager;
		private InputManager inputManager;
		private SelectorManager selectorManager;

		private Stack<Vector2> stack;
		private readonly IList<String> lines;
		int wideX, highY;
		int gridX, gridY;
		int size;

		public BoardManager(
			AssetManager assetManager,
			ConfigManager configManager,
			InputManager inputManager,
			MappingManager mappingManager,
			SelectorManager selectorManager
			)
		{
			this.assetManager = assetManager;
			this.configManager = configManager;
			this.inputManager = inputManager;
			this.mappingManager = mappingManager;
			this.selectorManager = selectorManager;

			stack = new Stack<Vector2>();
			lines = new List<string>(gridY);
		}

		public void Initialize()
		{
			wideX = configManager.ScreenWide;
			highY = configManager.ScreenHigh;
			gridX = configManager.GridsXWide;
			gridY = configManager.GridsYHigh;
			size = configManager.ScreenSize;

			Tiles = new string[gridY, gridX];
			for (int row = 0; row < gridY; row++)
			{
				for (int col = 0; col < gridX; col++)
				{
					string tile = Constants.TileEmpty;
					if ((gridY - 1) == row)
					{
						tile = Constants.TileWaves;
					}

					Tiles[row, col] = tile;
				}
			}
		}

		public void Update()
		{
			int row = (int)(inputManager.MousePosition.Y);
			int col = (int)(inputManager.MousePosition.X);

			bool left = inputManager.LeftButton();
			bool rght = inputManager.RightButton();
			if (left)
			{
				if (col < 0 || col >= gridX || row < 0 || row >= gridY)
				{
					return;
				}

				bool isValid = ValidateTilePosition(row, col, selectorManager.Selector);
				if (isValid)
				{
					var oldTile = Tiles[row, col];
					if (selectorManager.Selector != oldTile)
					{
						stack.Push(inputManager.MousePosition);
					}

					Tiles[row, col] = selectorManager.Selector;
				}
			}

			if (rght)
			{
				if (col < 0 || col >= gridX || row < 0 || row >= gridY)
				{
					return;
				}

				bool isValid = ValidateTilePosition(row, col, Constants.TileEmpty);
				if (isValid)
				{
					if (stack.Count > 0)
					{
						Vector2 position = stack.Pop();
					}

					Tiles[row, col] = Constants.TileEmpty;
				}
			}

			if (inputManager.KeyHold(Keys.Delete))
			{
				if (stack.Count > 0)
				{
					Vector2 position = stack.Pop();
					row = (int)(position.Y);
					col = (int)(position.X);
					Tiles[row, col] = Constants.TileEmpty;
				}
			}
		}

		// TODO - validate heights
		private bool ValidateTilePosition(int row, int col, string select)
		{
			// Can't change sea waves
			if (5 == row)
			{
				return false;
			}
			if (row < 2)
			{
				// TODO should be 2 or 3?
				return false;
			}
			// Check immediately above sea waves.
			if (Constants.TileLarge == select ||
				Constants.TileSmall == select ||
				Constants.TileEarth == select ||
				Constants.TileDiver == select ||
				Constants.TileHover == select)
			{
				if (4 != row)
				{
					return false;
				}
			}

			if (Constants.TileTrees == select ||
				Constants.TileArrow == select ||
				Constants.TileGoals == select)
			{
				if (4 == row)
				{
					return false;
				}
				bool b1 = Tiles[row + 1, col] == Constants.TileEarth;
				bool b2 = Tiles[row + 1, col] == Constants.TileSmall;
				bool b3 = Tiles[row + 2, col] == Constants.TileLarge;
				return b1 || b2 || b3;
			}

			return true;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			Texture2D texture;
			int screens = 0;
			int bottom;

			// Draw board.
			AssetType assetType;
			for (int row = gridY - 1; row >= 0; row--)
			{
				for (int col = gridX - 1; col >= 0; col--)
				{
					String tile = Tiles[row, col];
					assetType = mappingManager.GetAssetType(tile);
					if (assetType != AssetType.EmptyAssetDraw)
					{
						texture = assetManager.Assets[assetType];
						bottom = row * size - texture.Height + size;
						spriteBatch.Draw(texture, new Vector2(col * size, bottom), Color.White);
					}
				}
			}

			// Draw legend
			bottom = gridY * size;
			spriteBatch.Draw(assetManager.Assets[AssetType.TheLargeLegend], new Vector2(size * 2, bottom), Color.White);
			spriteBatch.Draw(assetManager.Assets[AssetType.SeaWavesHeight], new Vector2(size * 3, bottom + size), Color.White);
			spriteBatch.DrawString(assetManager.Font, configManager.SeaWavesAt.ToString(), new Vector2(size * 3, bottom), Color.Yellow);
			spriteBatch.Draw(assetManager.Assets[AssetType.TheSmallLegend], new Vector2(size * 4, bottom), Color.White);
			spriteBatch.Draw(assetManager.Assets[AssetType.GroundTextMidd], new Vector2(size * 4, bottom + size), Color.White);
			spriteBatch.Draw(assetManager.Assets[AssetType.TreeLegendDraw], new Vector2(size * 5, bottom), Color.White);
			spriteBatch.Draw(assetManager.Assets[AssetType.TheTurtleDiver], new Vector2(size * 5, bottom + size), Color.White);
			spriteBatch.Draw(assetManager.Assets[AssetType.TheTurtleHover], new Vector2(size * 6, bottom), Color.White);
			spriteBatch.Draw(assetManager.Assets[AssetType.TheTurtleFlyer], new Vector2(size * 6, bottom + size), Color.White);
			spriteBatch.Draw(assetManager.Assets[AssetType.StevenSignSend], new Vector2(size * 7, bottom), Color.White);
			spriteBatch.Draw(assetManager.Assets[AssetType.StevenSignGoal], new Vector2(size * 7, bottom + size), Color.White);

			// Draw selector.
			assetType = mappingManager.GetLegendType(selectorManager.Selector);
			if (assetType != AssetType.EmptyAssetDraw)
			{
				texture = assetManager.Assets[assetType];
				bottom = highY - texture.Height + size;
				spriteBatch.Draw(texture, new Vector2(0, bottom + size), Color.White);
			}

			// Draw lines
			for (int y = 0; y <= gridY; y++)
			{
				spriteBatch.Draw(assetManager.Assets[AssetType.LineHorizontal], new Vector2(0, y * size), Color.White);
				for (int z = 0; z < wideX / 512; z++)
				{
					if (wideX > z * 512)
					{
						spriteBatch.Draw(assetManager.Assets[AssetType.LineHorizontal], new Vector2(z * 512, y * size), Color.White);
					}
				}
			}

			for (int x = 0; x < gridX; x++)
			{
				spriteBatch.Draw(assetManager.Assets[AssetType.LineVertically], new Vector2(x * size, 0), Color.White);
				if (0 == screens % 256 && 0 != x)
				{
					spriteBatch.Draw(assetManager.Assets[AssetType.LineVertically], new Vector2(x * size, 0), Color.Black);
				}
				screens += 32;
			}
		}

		public string[,] Tiles { get; private set; }
		//public string Selector { get; private set; }
	}
}
