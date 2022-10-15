using System;
using Microsoft.Xna.Framework;
using WindowsGame.Common.Interfaces;
using WindowsGame.Common.Static;
using WindowsGame.Master;

namespace WindowsGame.Common.Screens
{
	public class FiringScreen : BaseScreen, IScreen
	{
		public override void Initialize()
		{
			
		}

		public override void LoadContent()
		{
		}

		public ScreenType Update(GameTime gameTime)
		{
			
			return ScreenType.Firing;
		}

		public override void Draw()
		{
			Engine.SpriteBatch.DrawString(Assets.EmulogicFont, "FIRING", new Vector2(20, 20), Color.White);
		}

	}
}