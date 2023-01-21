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
			//po.posnX = 72;
			po.posnX = 16;
			//po.posnX = 80;
			po.posnY = 150;
			po.frame = 0;
			po.index = 0;
			po.isOnground = false;
			//po.frame = 0;
			updatePlayer();
			physics_array = getPhysicsArray();
			Logger.Info($"Player in the air py={po.posnY}");
		}

		private void updatePlayer()
		{
			po.drawX = po.posnX - 16;
			po.drawY = po.posnY - 32;
			po.tileX = po.posnX >> 3;
			po.tileY = po.posnY >> 3;
		}

		public void Update(GameTime gameTime)
		{
			if (myInputManager.KeyHold(Keys.Space))
			{
				var message = $"(x,y)=({po.posnX},{po.posnY})";
				Logger.Info(message);
			}
			if (myInputManager.KeyHold(Keys.Enter))
			//if (myInputManager.KeyMove(Keys.Enter))
			{
				// IMPORTANT must return so do NOT add deltaY despite being on platform!
				if (po.isOnground)
				{
					//Logger.Info($"Player on ground2 py={po.posnY}");
					return;
				}
				if (po.index >= physics_array.Length)
				{
					// Prevent buffer overrun.
					return;
				}

				//var tile = po.tileX - 2;    // Easy
				var tile1 = po.tileX - 1;    // Hard
				var tile2 = po.tileX + 1;    // Hard
				var tempCollY1 = myLevelManager.collision_array[tile1];
				var tempCollY2 = myLevelManager.collision_array[tile2];

				var deltaY = physics_array[po.index];
				// Ascending
				if (deltaY < 0)
				{
					var tempY = po.posnY + deltaY;
					var tileY = tempY >> 3;

					po.posnY = tempY;
					po.index++;
					updatePlayer();
					Logger.Info($"Player in the air py={po.posnY}  {po.tileY} [{tempCollY1}]");
				}
				// Descending
				if (deltaY == 0)
				{
					Logger.Info($"Player APEX APEX! py={po.posnY}  {po.tileY} [{tempCollY1}]");
					po.index++;
					return;
				}
				if (deltaY >= 0 )
				{
					var tempY = po.posnY + deltaY;
					var tileY = tempY >> 3;
					if ((tileY == tempCollY1) || (tileY == tempCollY2))
					{
						po.posnY = tileY << 3;
						po.isOnground = true;
						po.index = 0;
						Logger.Info($"Player on ground! py={po.posnY}");
					}
					else
					{
						po.posnY = tempY;
						po.index++;
						updatePlayer();
						Logger.Info($"Player in the air py={po.posnY}  {po.tileY} [{tempCollY1}]");
					}
				}
			}
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			spriteBatch.Draw(myContentManager.Skater[po.frame], new Vector2(po.drawX, po.drawY), Color.White);
		}

		private SByte[] getPhysicsArray()
		{
			return new sbyte[]
			{
				-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
				//-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0,0, 0, 0, 0,0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			};
		}

		public SByte[] physics_array { get; private set; }
	}

}