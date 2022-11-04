using System;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;

namespace Test
{
	public class MyPlayerManager
	{
		private MyContentManager myContentManager;
		private struct_player_object po;

		public MyPlayerManager(MyContentManager myContentManager)
		{
			this.myContentManager = myContentManager;
		}

		public void Initialize()
		{
			po.posnX = 64;
			po.posnY = 160;
			po.drawX = po.posnX - 16;
			po.drawY = po.posnY - 32;
			po.frame = 0;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			//spriteBatch.Draw(myContentManager.Black2442, new Vector2(64, 128), Color.White);
			//spriteBatch.Draw(myContentManager.Tile2432, new Vector2(64, 128), Color.White);
			spriteBatch.Draw(myContentManager.Skater[po.frame], new Vector2(po.drawX, po.drawY), Color.White);
		}
	}

}