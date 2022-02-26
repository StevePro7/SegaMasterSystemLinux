using Microsoft.Xna.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LevelEditor
{
	public class ScreenManager
	{
		private InputManager inputManager;

		public ScreenManager(
			InputManager inputManager
			)
		{
			this.inputManager = inputManager;
		}

		public void Update(GameTime gameTime)
		{
			inputManager.Update();

		}
	}
}
