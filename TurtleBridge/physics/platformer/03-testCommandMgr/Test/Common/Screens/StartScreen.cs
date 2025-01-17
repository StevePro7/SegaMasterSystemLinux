﻿using Microsoft.Xna.Framework;
using System;
using WindowsGame.Master;

namespace WindowsGame.Common
{
	public class StartScreen : IScreen
	{
		public void Initialize()
		{
		}

		public void LoadContent()
		{
		}

		public int Update(GameTime gameTime)
		{
			MyGame.Manager.Logger.Info(DateTime.Now.ToString() + "  " + DateTime.Now.Millisecond.ToString());
			MyGame.Manager.PlayerManager.Update(gameTime);
			return (int)ScreenType.Start;
		}

		public void Draw()
		{
			MyGame.Manager.LevelManager.Draw();
			MyGame.Manager.PlayerManager.Draw();
		}
	}
}
