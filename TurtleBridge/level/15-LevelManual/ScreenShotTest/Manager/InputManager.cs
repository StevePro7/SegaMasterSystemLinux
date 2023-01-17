using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;

namespace ScreenShotTest
{
	public class InputManager
	{
		private int wide, high;

		public InputManager(int wide, int high)
		{
			this.wide = wide;
			this.high = high;
		}

		private KeyboardState currKeyboardState, prevKeyboardState;
		private MouseState mouseState;

		public void Update()
		{
			currKeyboardState = Keyboard.GetState();

			mouseState = Mouse.GetState();
			MousePosition = Vector2.Zero;

			int mx = mouseState.X;
			int my = mouseState.Y;
			if (mx >= 0 && my <= wide && my >= 0 && my <= high)
			{
				int bx = mx / 16;
				int by = my / 16;

				MousePosition = new Vector2(bx, by);
			}
			
			//TODO check!!
			prevKeyboardState = currKeyboardState;
		}
//TODO delete
//		public void Reset()
//		{
//			prevKeyboardState = currKeyboardState;
//		}

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
