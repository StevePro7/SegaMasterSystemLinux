using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace LevelEditor
{
	public class BoardManager
	{
		private AssetManager assetManager;
		private ConfigManager configManager;

		public BoardManager(
			AssetManager assetManager,
			ConfigManager configManager
			)
		{
			this.assetManager = assetManager;
			this.configManager = configManager;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			//Texture2D texture;

			int wideX = configManager.ScreenWide;
			int gridX = configManager.GridsXWide;
			int gridY = configManager.GridsYHigh;
			int size = configManager.ScreenSize;

			int screens = 0;


			for (int x = 0; x < gridX; x++)
			{
				spriteBatch.Draw(assetManager.Assets[AssetType.SeaWavesHeight], new Vector2(x * size, 160), Color.White);
			}

			// Draw lines
			for (int y = 0; y < gridY; y++)
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
	}
}
