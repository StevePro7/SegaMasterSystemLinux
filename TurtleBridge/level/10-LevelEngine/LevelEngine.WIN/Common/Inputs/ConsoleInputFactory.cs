using Microsoft.Xna.Framework;
using System;
using WindowsGame.Common.Inputs.Types;
using WindowsGame.Common.Interfaces;
using WindowsGame.Common.Static;

namespace WindowsGame.Common.Inputs
{
	public class ConsoleInputFactory : BaseInputFactory, IInputFactory
	{
		public ConsoleInputFactory(IJoystickInput joystickInput)
		{
			JoystickInput = joystickInput;
		}

		public void Update(GameTime gameTime)
		{
			JoystickInput.Update(gameTime);
		}

		public Boolean Escape()
		{
			return JoyEscape();
		}

		public bool Advance()
		{
			throw new NotImplementedException();
		}

		public bool FullScreen()
		{
			throw new NotImplementedException();
		}

		public OptionType GetOptionType()
		{
			throw new NotImplementedException();
		}

		public bool LeftArrow()
		{
			throw new NotImplementedException();
		}

		public bool RghtArrow()
		{
			throw new NotImplementedException();
		}

		public bool VolumeIcon()
		{
			throw new NotImplementedException();
		}

		public bool CheatMode()
		{
			throw new NotImplementedException();
		}

		public bool Character()
		{
			throw new NotImplementedException();
		}
	}
}