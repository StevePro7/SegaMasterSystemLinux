using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;

namespace LevelEditor
{
	public class InputManager
	{
		private ConfigManager configManager;
		private int wide, bott;
		private int size;

		public InputManager(ConfigManager configManager)
		{
			this.configManager = configManager;
		}

		public void Initialize()
		{
			wide = configManager.ScreenWide;
			bott = configManager.ScreenBott;
			size = configManager.ScreenSize;
		}

		private KeyboardState currKeyboardState, prevKeyboardState;
		private MouseState mouseState;

		public void Update()
		{
			currKeyboardState = Keyboard.GetState();
			prevKeyboardState = currKeyboardState;

			mouseState = Mouse.GetState();
			MousePosition = Vector2.Zero;

			int mx = mouseState.X;
			int my = mouseState.Y;
			if (mx >= 0 && my <= wide && my >= 0 && my <= bott)
			{
				int bx = mx / 32;
				int by = my / 32;

				MousePosition = new Vector2(bx, by);
			}
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

		public Vector2 MousePosition { get; private set; }
	}
}
