using Microsoft.Xna.Framework;

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

		private void updatePlayer()
		{
			po.drawX = po.posnX;// + 4;// - 16;
			po.drawY = po.posnY - 32;
			po.tileX = po.posnX >> 3;
			po.tileY = po.posnY >> 3;
		}

		public void Update(GameTime gameTime)
		{
			//if (myInputManager.KeyPress(Keys.Space))
			//{
			//	var message = $"(x,y)=({po.posnX},{po.posnY})";
			//	Logger.Info(message);
			//}
			//if (myInputManager.KeyHold(Keys.Left))
			//{
			//	po.posnX -= 1;
			//	updatePlayer();
			//}
			//if (myInputManager.KeyHold(Keys.Right))
			//{
			//	po.posnX += 1;
			//	updatePlayer();
			//}
			//if (myInputManager.KeyHold(Keys.Up))
			//{
			//	po.posnY -= 1;
			//	updatePlayer();
			//}
			//if (myInputManager.KeyHold(Keys.Down))
			//{
			//	const int dy = 1;
			//	bool isMoveDown = false;
			//	int tempCollY = 0;
			//	canMoveDown(dy, ref isMoveDown, ref tempCollY);
			//	if (isMoveDown)
			//	{
			//		po.posnY += dy;
			//		updatePlayer();
			//	}
			//	else
			//	{
			//		// TODO - need to look this up!!
			//		po.posnY = tempCollY * 8;
			//		updatePlayer();
			//	}
			//}
		}

		private void canMoveDown(int dy, ref bool isMoveDown, ref int tempCollY)
		{
			////int tempCollY = 0;
			//int tempPosnY = po.posnY + dy;
			//int tempTileY = tempPosnY >> 3;

			//isMoveDown = false;
			//tempCollY = myLevelManager.collision_array[po.tileX + 0];
			//if (tempTileY == tempCollY)
			//{
			//	return;
			//}
			//else
			//{
			//	tempCollY = myLevelManager.collision_array[po.tileX + 1];
			//	if (tempTileY == tempCollY)
			//	{
			//		return;
			//	}
			//	else
			//	{
			//		tempCollY = myLevelManager.collision_array[po.tileX + 2];
			//		if (tempTileY == tempCollY)
			//		{
			//			return;
			//		}
			//	}
			//}

			//isMoveDown = true;
			return;
		}

		public void Draw()
		{
			Engine.SpriteBatch.Draw(Assets.Skater[po.frame], new Vector2(po.drawX, po.drawY), Color.White);
		}
	}

}