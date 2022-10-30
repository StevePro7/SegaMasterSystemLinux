using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace Test
{
	public class MyScreenManager
	{
		MyContentManager myContentManager;
		MyInputManager myInputManager;
		MyLevelManager myLevelManager;

		public MyScreenManager(
			MyContentManager myContentManager,
			MyInputManager myInputManager,
			MyLevelManager myLevelManager
			)
		{
			this.myContentManager = myContentManager;
			this.myInputManager = myInputManager;
			this.myLevelManager = myLevelManager;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			spriteBatch.Begin();
			myLevelManager.Draw(spriteBatch);
			spriteBatch.End();
		}
	}
}