using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;

namespace WindowsGame.Common.Managers
{
	public class InputManager
	{
		private KeyboardState currKeyboardState;
		private KeyboardState prevKeyboardState;

		public void Update(GameTime gameTime)
		{
			prevKeyboardState = currKeyboardState;
			currKeyboardState = Keyboard.GetState();
		}

		public Boolean KeyHold(Keys key)
		{
			return currKeyboardState.IsKeyDown(key) && prevKeyboardState.IsKeyUp(key);

		}
		public Boolean KeyPress(Keys key)
		{
			return currKeyboardState.IsKeyDown(key);
		}

	}
}