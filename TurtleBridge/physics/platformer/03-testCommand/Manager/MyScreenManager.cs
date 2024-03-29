﻿using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace Test
{
	public class MyScreenManager
	{
		MyContentManager myContentManager;
		MyInputManager myInputManager;
		MyLevelManager myLevelManager;
		MyPlayerManager myPlayerManager;

		public MyScreenManager(
			MyContentManager myContentManager,
			MyInputManager myInputManager,
			MyLevelManager myLevelManager,
			MyPlayerManager myPlayerManager
			)
		{
			this.myContentManager = myContentManager;
			this.myInputManager = myInputManager;
			this.myLevelManager = myLevelManager;
			this.myPlayerManager = myPlayerManager;
		}

		public void Initialize()
		{
		}

		public void Update(GameTime gameTime)
		{
			myPlayerManager.Update(gameTime);
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			spriteBatch.Begin();
			myLevelManager.Draw(spriteBatch);
			myPlayerManager.Draw(spriteBatch);
			spriteBatch.End();
		}
	}
}