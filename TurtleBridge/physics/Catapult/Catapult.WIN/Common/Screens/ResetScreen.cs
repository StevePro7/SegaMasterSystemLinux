using System;
using Microsoft.Xna.Framework;
using WindowsGame.Common.Data;
using WindowsGame.Common.Interfaces;
using WindowsGame.Common.Static;
using WindowsGame.Master;

namespace WindowsGame.Common.Screens
{
	public class ResetScreen : BaseScreen, IScreen
	{
		public override void Initialize()
		{
		}

		public override void LoadContent()
		{
				}

		public ScreenType Update(GameTime gameTime)
		{
			
			return ScreenType.Reset;
		}

		public override void Draw()
		{
			Engine.SpriteBatch.DrawString(Assets.EmulogicFont, "RESET", new Vector2(20, 20), Color.White);
		}

	}
}