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

			PlaneA = new byte[gridX];
			PlaneB = new byte[gridX];
			PlaneA[0] = 0x20;
			PlaneA[1] = 0x21;
			PlaneA[2] = 0x26;
			PlaneA[3] = 0x27;

			PlaneB[1] = 0xA0;
			PlaneB[2] = 0xA1;
			PlaneB[3] = 0xA2;
		}

		public void Draw(GraphicsDeviceManager graphics, SpriteBatch spriteBatch)
		{
			var color = new Color(0x55, 0xAA, 0xFF);
			graphics.GraphicsDevice.Clear(color);
			spriteBatch.Begin();
			DrawWaves(spriteBatch);
			DrawPlaneA(spriteBatch);
			spriteBatch.End();
		}

		private void DrawPlaneB(SpriteBatch spriteBatch)
		{
		}

		private void DrawPlaneA(SpriteBatch spriteBatch)
		{
			int col = 0;
			int row = 0;
			int rowB = 0;

			byte upper = 0;
			byte lower = 0;
			byte index = 0;
			Texture2D image = null;
			Vector2 pos = Vector2.Zero;
			for (col = 0; col < 4; col++)
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
					//else if (9 == upper || 10 == upper)
					//{
					//	row -= 4 - 1;
					//}

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

		public byte[] PlaneA { get; private set; }
		public byte[] PlaneB { get; private set; }
	}
}
