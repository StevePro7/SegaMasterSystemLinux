using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;

namespace WindowsGame.Common
{
	public interface IInputManager
	{
		void Update(GameTime gameTime);
		Boolean KeyHold(Keys key);
		Boolean KeyMove(Keys key);
	}

	public class InputManager : IInputManager
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
			//return currKeyboardState.IsKeyDown(key);
		}

		public Boolean KeyMove(Keys key)
		{
			//return currKeyboardState.IsKeyDown(key) && prevKeyboardState.IsKeyUp(key);
			return currKeyboardState.IsKeyDown(key);
		}

	}
}