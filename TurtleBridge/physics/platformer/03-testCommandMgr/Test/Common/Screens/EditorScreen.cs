using Microsoft.Xna.Framework;
using System;
using WindowsGame.Master;

namespace WindowsGame.Common
{
	public class EditorScreen : IScreen
	{
		public void Initialize()
		{
		}

		public void LoadContent()
		{
		}

		public int Update(GameTime gameTime)
		{
			Engine.Game.Window.Title = GetType().Name;
			return (int)ScreenType.Editor;
		}

		public void Draw()
		{
			for (int idx = 0; idx < Constants.MAX_COLS; idx++)
			{
				Engine.SpriteBatch.Draw(Assets.Sea3224, new Vector2(idx * 8, Constants.ScreenHigh - 24), Color.White);
			}
		}
	}
}
