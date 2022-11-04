using System;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;

namespace Test
{
	public class MyPlayerManager
	{
		private MyContentManager myContentManager;
		private MyInputManager myInputManager;
		private struct_player_object po;

		public MyPlayerManager(MyContentManager myContentManager, MyInputManager myInputManager)
		{
			this.myContentManager = myContentManager;
			this.myInputManager = myInputManager;
		}

		public void Initialize()
		{
			po.posnX = 64;
			po.posnY = 160;
			po.frame = 0;
			updatePlayer();
		}

		private void updatePlayer()
		{
			po.drawX = po.posnX;// - 16;
			po.drawY = po.posnY - 32;
			po.tileX = po.posnX >> 3;
			po.tileY = po.posnY >> 3;
		}

		public void Update(GameTime gameTime)
		{
			if (myInputManager.KeyHold(Keys.Left))
			{
				po.posnX -= 1;
			}
			if (myInputManager.KeyHold(Keys.Right))
			{
				po.posnX += 1;
			}

			updatePlayer();
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			//spriteBatch.Draw(myContentManager.Black2442, new Vector2(64, 128), Color.White);
			//spriteBatch.Draw(myContentManager.Tile2432, new Vector2(64, 128), Color.White);
			spriteBatch.Draw(myContentManager.Skater[po.frame], new Vector2(po.drawX, po.drawY), Color.White);
		}
	}

}