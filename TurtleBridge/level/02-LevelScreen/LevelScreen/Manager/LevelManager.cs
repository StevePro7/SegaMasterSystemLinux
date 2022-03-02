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

			Tiles = new byte[gridY, gridX];
		}

		public void Draw(GraphicsDeviceManager graphics, SpriteBatch spriteBatch)
		{
			graphics.GraphicsDevice.Clear(Color.CornflowerBlue);
			spriteBatch.Begin();
			DrawSea(spriteBatch);
			spriteBatch.End();
		}

		private void DrawSea(SpriteBatch spriteBatch)
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

		public byte[,] Tiles { get; private set; }
	}
}
