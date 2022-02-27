using Microsoft.Xna.Framework.Input;

namespace LevelEditor
{
	public class SelectorManager
	{
		private ConfigManager configManager;
		private InputManager inputManager;

		public SelectorManager(ConfigManager configManager, InputManager inputManager)
		{
			this.configManager = configManager;
			this.inputManager = inputManager;
		}

		public void Initialize()
		{
			Selector = Constants.TileArrow;
		}

		public void Update()
		{
			bool left = inputManager.LeftButton();

			
			if (inputManager.KeyDown(Keys.D1) || (left && (inputManager.MousePosition.X == 0 || inputManager.MousePosition.X == 1) && (inputManager.MousePosition.Y == 6 || inputManager.MousePosition.Y == 7)))
			{
				Selector = Constants.TileEmpty;
			}
			if (inputManager.KeyDown(Keys.D2) || (left && inputManager.MousePosition.X == 2 && (inputManager.MousePosition.Y == 6 || inputManager.MousePosition.Y == 7)))
			{
				Selector = Constants.TileLarge;
			}
			if (inputManager.KeyHold(Keys.Up) && left && inputManager.MousePosition.X == 3 && inputManager.MousePosition.Y == 6)
			{
				configManager.Decrement();
			}
			if (inputManager.KeyHold(Keys.Down) && left && inputManager.MousePosition.X == 3 && inputManager.MousePosition.Y == 6)
			{
				configManager.Increment();
			}
			if (inputManager.KeyDown(Keys.D3) || (left && inputManager.MousePosition.X == 4 && inputManager.MousePosition.Y == 6))
			{
				Selector = Constants.TileSmall;
			}
			if (inputManager.KeyDown(Keys.D4) || (left && inputManager.MousePosition.X == 4 && inputManager.MousePosition.Y == 7))
			{
				Selector = Constants.TileEarth;
			}
			if (inputManager.KeyDown(Keys.D5) || (left && inputManager.MousePosition.X == 5 && inputManager.MousePosition.Y == 6))
			{
				Selector = Constants.TileTrees;
			}
			if (inputManager.KeyDown(Keys.D6) || (left && inputManager.MousePosition.X == 5 && inputManager.MousePosition.Y == 7))
			{
				Selector = Constants.TileDiver;
			}
			if (inputManager.KeyDown(Keys.D7) || (left && inputManager.MousePosition.X == 6 && inputManager.MousePosition.Y == 6))
			{
				Selector = Constants.TileHover;
			}
			if (inputManager.KeyDown(Keys.D8) || (left && inputManager.MousePosition.X == 6 && inputManager.MousePosition.Y == 7))
			{
				Selector = Constants.TileFlyer;
			}
			if (inputManager.KeyDown(Keys.D9) || (left && inputManager.MousePosition.X == 7 && inputManager.MousePosition.Y == 6))
			{
				Selector = Constants.TileArrow;
			}
			if (inputManager.KeyDown(Keys.D0) || (left && inputManager.MousePosition.X == 7 && inputManager.MousePosition.Y == 7))
			{
				Selector = Constants.TileGoals;
			}
		}

		public string Selector { get; private set; }
	}
}
