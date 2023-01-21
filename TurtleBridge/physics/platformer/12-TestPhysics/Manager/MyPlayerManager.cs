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
			po.posnX = 72;
			//po.posnX = 32;
			po.posnY = 112;
			po.frame = 0;
			po.index = 0;
			//po.frame = 0;
			updatePlayer();
			physics_array = getPhysicsArray();
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
			if (myInputManager.KeyMove(Keys.Down))
			{
				if (po.index >= 40)
				{
					return;
				}
				sbyte value = physics_array[po.index++];
				po.posnX += 1;
				po.posnY -= value;
				updatePlayer();
			}
			if (myInputManager.KeyHold(Keys.Enter))
			{
				//const int dy = 1;
				const int dy = 0;
				bool isMoveDown = false;
				int tempCollY = 0;
				int tile = 0;
				canMoveDown(dy, ref isMoveDown, ref tempCollY, ref tile);

				bool onPlatform = !isMoveDown;

				var message = $"{po.posnY},{tempCollY},{po.drawX},{po.posnX},{po.tileX},{po.tileX-2},{po.tileX-1},{po.tileX},{po.tileX+1},{tile},{onPlatform}";
				Logger.Info(message);

				if (isMoveDown)
				{
					po.posnY += dy;
					updatePlayer();
				}
				else
				{
					
					po.posnY = po.posnY + 0; // tempCollY * 8;
					updatePlayer();
				}
			}
		}

		private void canMoveDown(int dy, ref bool isMoveDown, ref int tempCollY, ref int tile)
		{
			//int tempCollY = 0;
			int tempPosnY = po.posnY + dy;
			int tempTileY = tempPosnY >> 3;

			isMoveDown = false;
			tile = po.tileX - 2;    // Easy
			tile = po.tileX - 1;	// Hard
			tempCollY = myLevelManager.collision_array[tile];
			if (tempTileY == tempCollY)
			{
				return;
			}
			else
			{
				//tile = po.tileX - 1;
				//tempCollY = myLevelManager.collision_array[tile];
				//if (tempTileY == tempCollY)
				//{
				//	return;
				//}
				//else
				//{
				//	tile = po.tileX + 0;
				//	tempCollY = myLevelManager.collision_array[tile];
				//	if (tempTileY == tempCollY)
				//	{
				//		return;
				//	}
				//	else
				//	{
						tile = po.tileX + 1;
						tempCollY = myLevelManager.collision_array[tile];
						if (tempTileY == tempCollY)
						{
							return;
						}
				//	}
				//}
			}

			tempCollY = 0;
			tile = 0;
			isMoveDown = true;
			return;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			//spriteBatch.Draw(myContentManager.Black2442, new Vector2(64, 128), Color.White);
			//spriteBatch.Draw(myContentManager.Tile2432, new Vector2(64, 128), Color.White);
			spriteBatch.Draw(myContentManager.Skater[po.frame], new Vector2(po.drawX, po.drawY), Color.White);
		}

		private SByte[] getPhysicsArray()
		{
			return new sbyte[]
			{
				0, 0, 0, 0, -1, 0, -1, -1, -1, 0, -2, -1, -1, -1, -2, -1, -2, -2, -2, -1, -3, -2, -2, -2, -3, -2, -3, -3, -3, -2, -4, -3, -3, -3, -4, -3, -4, -4, -4, -4,
			};
		}

		public SByte[] physics_array { get; private set; }
	}

}