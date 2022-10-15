using System;
using Microsoft.Xna.Framework;
using WindowsGame.Common.Interfaces;
using WindowsGame.Common.Static;
using WindowsGame.Master;

namespace WindowsGame.Common.Screens
{
	public class RollingScreen : BaseScreen, IScreen
	{
		public override void Initialize()
		{
		}

		public override void LoadContent()
		{
		}

		public ScreenType Update(GameTime gameTime)
		{
			return ScreenType.Rolling;
		}

		public override void Draw()
		{
			Engine.SpriteBatch.DrawString(Assets.EmulogicFont, "ROLLING", new Vector2(20, 20), Color.White);
		}
	}
}