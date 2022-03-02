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

		private readonly IList<String> lines;
		int wideX, highY;
		int gridX, gridY;
		int size;

		public LevelManager(
			AssetManager assetManager,
			ConfigManager configManager
			)
		{
			this.assetManager = assetManager;
			this.configManager = configManager;
		}

		public void Initialize()
		{
			wideX = configManager.ScreenWide;
			highY = configManager.ScreenHigh;
			gridX = configManager.GridsXWide;
			gridY = configManager.GridsYHigh;
			size = configManager.ScreenSize;
			Tiles = new byte[gridY, gridX];
		}

		public void Draw(GraphicsDeviceManager graphics, SpriteBatch spriteBatch)
		{
			graphics.GraphicsDevice.Clear(Color.CornflowerBlue);
			spriteBatch.Begin();
			spriteBatch.End();
		}

		public byte[,] Tiles { get; private set; }
	}
}
