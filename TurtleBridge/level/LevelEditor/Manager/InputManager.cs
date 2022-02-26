using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;

namespace LevelEditor
{
	public class InputManager
	{
		private ConfigManager configManager;
		private int wide, high;
		private int size;

		public InputManager(ConfigManager configManager)
		{
			this.configManager = configManager;
		}

		public void Initialize()
		{
			wide = configManager.ScreenWide;
			high = configManager.ScreenHigh;
			size = configManager.ScreenSize;
		}

		private KeyboardState currKeyboardState, prevKeyboardState;
		private MouseState mouseState;

		public void Update()
		{
			currKeyboardState = Keyboard.GetState();
			mouseState = Mouse.GetState();
			ButtonState buttonState = mouseState.LeftButton;
			prevKeyboardState = currKeyboardState;
		}

		public bool KeyDown(Keys key)
		{
			return currKeyboardState.IsKeyDown(key);
		}
		public bool KeyHold(Keys key)
		{
			return currKeyboardState.IsKeyDown(key) && prevKeyboardState.IsKeyUp(key);
		}

		public bool LeftButton()
		{
			return ButtonState.Pressed == mouseState.LeftButton;
		}
		public bool RightButton()
		{
			return ButtonState.Pressed == mouseState.RightButton;
		}
		public Vector2 MousePosition()
		{
			int mx = mouseState.X;
			int my = mouseState.Y;

			if (mx >= 0 && my <= wide && my >= 0 && my <= high)
			{
				int bx = mx / 32;
				int by = my / 32;

				return new Vector2(bx, by);
			}

			return Vector2.Zero;
		}
	}
}
