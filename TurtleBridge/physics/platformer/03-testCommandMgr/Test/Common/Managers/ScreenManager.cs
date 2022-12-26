using Microsoft.Xna.Framework;
using System;
using System.Collections.Generic;
using WindowsGame.Master;

namespace WindowsGame.Common
{
	public interface IScreenManager
	{
		void Initialize();
		void LoadContent();
		void Update(GameTime gameTime);
		void Draw();
	}

	public class ScreenManager : IScreenManager
	{
		private IDictionary<Int32, IScreen> screens;
		private Int32 currScreen = (Int32)ScreenType.Start;
		private Int32 nextScreen = (Int32)ScreenType.Start;

		public void Initialize()
		{
			screens = GetScreens();
		}

		public void LoadContent()
		{
			foreach (var key in screens.Keys)
			{
				screens[key].Initialize();
			}
		}

		public void Update(GameTime gameTime)
		{
			if (currScreen != nextScreen)
			{
				currScreen = nextScreen;
				screens[currScreen].LoadContent();
			}

			nextScreen = screens[currScreen].Update(gameTime);
			//myPlayerManager.Update(gameTime);
		}

		public void Draw()
		{
			Engine.GraphicsDevice.Clear(Color.CornflowerBlue);
			Engine.SpriteBatch.Begin();
			screens[currScreen].Draw();
			//myLevelManager.Draw(spriteBatch);
			//myPlayerManager.Draw(spriteBatch);
			Engine.SpriteBatch.End();
		}

		private static Dictionary<Int32, IScreen> GetScreens()
		{
			return new Dictionary<Int32, IScreen>
			{
				{(Int32)ScreenType.Start, new StartScreen()},
				{(Int32)ScreenType.Record, new RecordScreen()},
				{(Int32)ScreenType.Playback, new PlaybackScreen()},
			};
		}
	}
}