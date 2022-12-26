using Microsoft.Xna.Framework;
using System;
using WindowsGame.Master;

namespace WindowsGame.Common
{
	public interface ILevelManager
	{
		void Initialize();
		void Draw();
	}

	public class LevelManager : ILevelManager
	{
		public void Initialize()
		{
			collision_array = GetCollisionArray();
		//	drawtiles_array = GetDrawTilesArray();
		}

		public void Draw()
		{
			Vector2 pos = Vector2.Zero;
			for (byte col = 0; col < Constants.MAX_COLS; col++)
			{
				byte row = collision_array[col];
				if (0 != row)
				{

					pos = new Vector2(col * Constants.TILE_WIDE , row * Constants.TILE_HIGH);
					Engine.SpriteBatch.Draw(Assets.Tile88, pos, Color.White);

					//pos = new Vector2(col * Constants.TILE_WIDE, row * Constants.TILE_HIGH + 1 * Constants.TILE_HIGH);
					//spriteBatch.Draw(myContentManager.Tile88, pos, Color.White);
					//pos = new Vector2(col * Constants.TILE_WIDE, row * Constants.TILE_HIGH + 2 * Constants.TILE_HIGH);
					//spriteBatch.Draw(myContentManager.Tile88, pos, Color.White);
					//pos = new Vector2(col * Constants.TILE_WIDE, row * Constants.TILE_HIGH + 3 * Constants.TILE_HIGH);
					//spriteBatch.Draw(myContentManager.Tile88, pos, Color.White);
					//pos = new Vector2(col * Constants.TILE_WIDE, row * Constants.TILE_HIGH + 4 * Constants.TILE_HIGH);
					//spriteBatch.Draw(myContentManager.Tile88, pos, Color.White);
					//pos = new Vector2(col * Constants.TILE_WIDE, row * Constants.TILE_HIGH + 5 * Constants.TILE_HIGH);
					//spriteBatch.Draw(myContentManager.Tile88, pos, Color.White);
				}
			}
		}

		private Byte[] GetCollisionArray()
		{
			var coll = new byte[Constants.MAX_COLS];
			for (int idx = 0; idx < Constants.MAX_COLS; idx++)
			{
				coll[idx] = 18;
			}
			return coll;
		}


		public Byte[] collision_array { get; private set; }
		//private Byte[] drawtiles_array { get; set; }
	}
}