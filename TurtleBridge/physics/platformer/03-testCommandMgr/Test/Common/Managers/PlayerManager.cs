using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;
using WindowsGame.Master;

namespace WindowsGame.Common
{
	public interface IPlayerManager
	{
		void Initialize();
		void Update(GameTime gameTime);
		void Draw();
	}

	public class PlayerManager : IPlayerManager
	{
		private struct_player_object po;

		public void Initialize()
		{
			po.posnX = 16;
			po.posnY = 144;
			po.frame = 0;
			updatePlayer();
		}

		

		public void Update(GameTime gameTime)
		{
			
			if (MyGame.Manager.InputManager.KeyMove(Keys.Space))
			{
				var message = $"(x,y)=({po.posnX},{po.posnY})";
				MyGame.Manager.Logger.Info(message);
			}
			if (MyGame.Manager.InputManager.KeyHold(Keys.Left))
			{
				po.posnX -= 1;
				updatePlayer();
			}
			if (MyGame.Manager.InputManager.KeyHold(Keys.Right))
			{
				po.posnX += 1;
				updatePlayer();
			}
			if (MyGame.Manager.InputManager.KeyHold(Keys.Up))
			{
				po.posnY -= 1;
				updatePlayer();
			}
			if (MyGame.Manager.InputManager.KeyHold(Keys.Down))
			{
				const int dy = 1;
				bool isMoveDown = false;
				int tempCollY = 0;
				canMoveDown(dy, ref isMoveDown, ref tempCollY);
				if (isMoveDown)
				{
					po.posnY += dy;
					updatePlayer();
				}
				else
				{
					// TODO - need to look this up!!
					po.posnY = tempCollY * 8;
					updatePlayer();
				}
			}
		}

		public void Draw()
		{
			Engine.SpriteBatch.Draw(Assets.Skater[po.frame], new Vector2(po.drawX, po.drawY), Color.White);
		}

		private void updatePlayer()
		{
			po.drawX = po.posnX;// + 4;// - 16;
			po.drawY = po.posnY - 32;
			po.tileX = po.posnX >> 3;
			po.tileY = po.posnY >> 3;
		}

		private void canMoveDown(int dy, ref bool isMoveDown, ref int tempCollY)
		{
			//int tempCollY = 0;
			int tempPosnY = po.posnY + dy;
			int tempTileY = tempPosnY >> 3;

			isMoveDown = false;
			tempCollY = MyGame.Manager.LevelManager.collision_array[po.tileX + 0];
			if (tempTileY == tempCollY)
			{
				return;
			}
			else
			{
				tempCollY = MyGame.Manager.LevelManager.collision_array[po.tileX + 1];
				if (tempTileY == tempCollY)
				{
					return;
				}
				else
				{
					tempCollY = MyGame.Manager.LevelManager.collision_array[po.tileX + 2];
					if (tempTileY == tempCollY)
					{
						return;
					}
				}
			}

			isMoveDown = true;
			return;
		}

		
	}

}