using System;
using Microsoft.Xna.Framework;
using WindowsGame.Common.Interfaces;
using WindowsGame.Common.Static;
using WindowsGame.Master;

namespace WindowsGame.Common.Screens
{
	public class ProjectileHitScreen : BaseScreen, IScreen
	{
		public override void Initialize()
		{
		}

		public override void LoadContent()
		{
		}

		public ScreenType Update(GameTime gameTime)
		{
			return ScreenType.ProjectileHit;
		}

		public override void Draw()
		{
			Engine.SpriteBatch.DrawString(Assets.EmulogicFont, "PROJECTILE HIT", new Vector2(20, 20), Color.White);
		}

	}
}