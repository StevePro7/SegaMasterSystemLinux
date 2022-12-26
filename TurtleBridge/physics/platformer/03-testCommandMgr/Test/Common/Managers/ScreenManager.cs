using Microsoft.Xna.Framework;
using WindowsGame.Master;

namespace WindowsGame.Common
{
	public interface IScreenManager
	{
		void Initialize();
		void Update(GameTime gameTime);
		void Draw();
	}

	public class ScreenManager : IScreenManager
	{
		public void Initialize()
		{
		}

		public void Update(GameTime gameTime)
		{
			//myPlayerManager.Update(gameTime);
		}

		public void Draw()
		{
			Engine.SpriteBatch.Begin();
			//myLevelManager.Draw(spriteBatch);
			//myPlayerManager.Draw(spriteBatch);
			Engine.SpriteBatch.End();
		}
	}
}