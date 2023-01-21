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
			po.posnY = 64;
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
			if (myInputManager.KeyMove(Keys.Down))
			{
				//var tile = po.tileX - 2;    // Easy
				var tile1 = po.tileX - 1;    // Hard
				var tile2 = po.tileX + 1;    // Hard
				var tempCollY1 = myLevelManager.collision_array[tile1];
				var tempCollY2 = myLevelManager.collision_array[tile2];
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
				
						tile = po.tileX + 1;
						tempCollY = myLevelManager.collision_array[tile];
						if (tempTileY == tempCollY)
						{
							return;
						}
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
				//0, 0, 0, 0, -1, 0, -1, -1, -1, 0, -2, -1, -1, -1, -2, -1, -2, -2, -2, -1, -3, -2, -2, -2, -3, -2, -3, -3, -3, -2, -4, -3, -3, -3, -4, -3, -4, -4, -4, -4,
				1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			};
		}

		public SByte[] physics_array { get; private set; }
	}

}