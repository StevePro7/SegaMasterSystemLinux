using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LevelScreen
{
	public class LevelManager
	{
		private AssetManager assetManager;
		private ConfigManager configManager;
		private FunctionManager functionManager;

		//private readonly IList<String> lines;
		int wideX, highY;
		int gridX, gridY;
		int sized, waves;
		int earth;

		public LevelManager(
			AssetManager assetManager,
			ConfigManager configManager,
			FunctionManager functionManager
			)
		{
			this.assetManager = assetManager;
			this.configManager = configManager;
			this.functionManager = functionManager;
		}

		public void Initialize()
		{
			wideX = configManager.ScreenWide;
			highY = configManager.ScreenHigh;
			sized = configManager.ScreenSize;
			waves = configManager.SeaWavesAt;
			gridX = configManager.GridsXWide;
			gridY = configManager.GridsYHigh;
			earth = gridY - waves;

			PlaneA = new byte[]
			{
				0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x42, 0x43,
				0x44, 0x45, 0x42, 0x43, 0x44, 0x45, 0x42, 0x43,
				0x44, 0x45, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47,
				0x00, 0x00, 0x60, 0x61, 0x62, 0x63, 0x00, 0x00,
			};

			PlaneB = new byte[]
			{
				0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
				0x00, 0x90, 0x91, 0x92, 0x00, 0x00, 0x00, 0x00,
				0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
			};
		}

		public void LoadContent()
		{ 
}
		public void Draw(GraphicsDeviceManager graphics, SpriteBatch spriteBatch)
		{
			var color = new Color(0x55, 0xAA, 0xFF);
			graphics.GraphicsDevice.Clear(color);
			spriteBatch.Begin();
			DrawWaves(spriteBatch);
			DrawTiles(spriteBatch);
			//DrawLight(spriteBatch);
			spriteBatch.End();
		}

		private void DrawTiles(SpriteBatch spriteBatch)
		{
			int col = 0;
			int row = 0;
			int rowB = 0;

			byte upper = 0;
			byte lower = 0;
			byte index = 0;
			Texture2D image = null;
			Vector2 pos = Vector2.Zero;
			for (col = 0; col < gridX; col++)
			{
				row = earth;
				index = PlaneA[col];
				functionManager.ConvertByteToNibbles(index, ref upper, ref lower);
				if (0 != upper)
				{
					if (2 == upper)
					{
						row -= 10 - 1;
					}
					else if (3 == upper)
					{
						row -= 6 - 1;
					}
					else if (4 == upper || 5 == upper || 6 == upper || 7 == upper)
					{
						row -= 4 - 1;
					}

					image = assetManager.Assets[index];
					pos = new Vector2(col * sized, row * sized);
					spriteBatch.Draw(image, pos, Color.White);
				}

				index = PlaneB[col];
				functionManager.ConvertByteToNibbles(index, ref upper, ref lower);
				if (0 != upper)
				{
					if (8 == upper)
					{
						rowB = row - 10;
					}
					else if (9 == upper || 10 == upper)
					{
						rowB = row - 3;
					}

					image = assetManager.Assets[index];
					pos = new Vector2(col * sized, rowB * sized);
					spriteBatch.Draw(image, pos, Color.White);
				}
			}
		}

		private void DrawWaves(SpriteBatch spriteBatch)
		{
			byte index = 0;
			byte upper = (byte)AssetType.WaveEquator;
			byte lower = 0;
			Texture2D image = null;
			Vector2 pos = Vector2.Zero;

			int row = earth * sized;
			for (int col = 0; col < gridX; col++)
			{
				lower = (byte)(col % 4);
				functionManager.ConvertNibblesToByte(upper, lower, ref index);
				image = assetManager.Assets[index];
				pos = new Vector2(col * sized, row);
				spriteBatch.Draw(image, pos, Color.White);
			}
		}

		//private void DrawLight(spriteBatch)
		//{
		//}

		public byte[] PlaneA { get; private set; }
		public byte[] PlaneB { get; private set; }
	}
}
