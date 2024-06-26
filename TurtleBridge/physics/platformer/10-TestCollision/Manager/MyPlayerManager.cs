﻿using System;
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
			po.posnX = 64;
			//po.posnX = 32;
			po.posnY = 144;
			po.frame = 4;
			//po.frame = 0;
			updatePlayer();
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
			//if (myInputManager.KeyHold(Keys.Up))
			//{
			//	po.posnY -= 1;
			//	updatePlayer();
			//}
			if (myInputManager.KeyHold(Keys.Down))
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
	}

}