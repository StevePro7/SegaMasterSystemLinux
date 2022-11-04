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
		private MyLevelManager myLevelManager;
		private struct_player_object po;

		public MyPlayerManager(MyContentManager myContentManager, MyInputManager myInputManager, MyLevelManager myLevelManager)
		{
			this.myContentManager = myContentManager;
			this.myInputManager = myInputManager;
			this.myLevelManager = myLevelManager;
		}

		public void Initialize()
		{
			//po.posnX = 64;
			po.posnX = 80;
			//po.posnX = 158;
			po.posnY = 160;
			po.frame = 2;
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
			if (myInputManager.KeyPress(Keys.Space))
			{
				var message = $"(x,y)=({po.posnX},{po.posnY})";
				Logger.Info(message);
			}
			if (myInputManager.KeyHold(Keys.Left))
			{
				po.posnX -= 1;
				updatePlayer();
			}
			if (myInputManager.KeyHold(Keys.Right))
			{
				po.posnX += 1;
				updatePlayer();
			}
			if (myInputManager.KeyHold(Keys.Up))
			{
				po.posnY -= 1;
				updatePlayer();
			}
			if (myInputManager.KeyHold(Keys.Down))
			{
				const int dy = 1;
				if (canMoveDown(dy))
				{
					po.posnY += dy;
					updatePlayer();
				}
				else
				{
					// TODO - need to look this up!!
					po.posnY = 160;
					updatePlayer();
				}
			}
		}

		private bool canMoveDown(int dy)
		{
			int tempCollY = 0;
			int tempPosnY = po.posnY + dy;
			int tempTileY = tempPosnY >> 3;

			tempCollY = myLevelManager.collision_array[po.tileX + 0];
			if (tempTileY == tempCollY)
			{
				return false;
			}
			else
			{
				tempCollY = myLevelManager.collision_array[po.tileX + 1];
				if (tempTileY == tempCollY)
				{
					return false;
				}
				else
				{
					tempCollY = myLevelManager.collision_array[po.tileX + 2];
					if (tempTileY == tempCollY)
					{
						return false;
					}
				}
			}

			return true;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			//spriteBatch.Draw(myContentManager.Black2442, new Vector2(64, 128), Color.White);
			//spriteBatch.Draw(myContentManager.Tile2432, new Vector2(64, 128), Color.White);
			spriteBatch.Draw(myContentManager.Skater[po.frame], new Vector2(po.drawX, po.drawY), Color.White);
		}
	}

}