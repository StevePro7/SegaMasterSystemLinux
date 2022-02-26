using Microsoft.Xna.Framework.Input;

namespace LevelEditor
{
	public class InputManager
	{
		private KeyboardState currKeyboardState, prevKeyboardState;
		private MouseState mouseState;
		//private bool valid;

		public void Update()
		{
			currKeyboardState = Keyboard.GetState();
			mouseState = Mouse.GetState();
			ButtonState buttonState = mouseState.LeftButton;
			prevKeyboardState = currKeyboardState;
		}

		public bool KeyMove(Keys key)
		{
			return currKeyboardState.IsKeyDown(key);
		}

		public bool KeyHold(Keys key)
		{
			return currKeyboardState.IsKeyDown(key) && prevKeyboardState.IsKeyUp(key);
		}
	}
}
