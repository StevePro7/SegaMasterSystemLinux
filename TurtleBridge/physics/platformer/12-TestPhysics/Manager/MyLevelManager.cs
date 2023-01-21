using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace Test
{
	public class MyLevelManager
	{
		MyContentManager myContentManager;

		public MyLevelManager(MyContentManager myContentManager)
		{
			this.myContentManager = myContentManager;
		}

		public void Initialize()
		{
			collision_array = getCollisionArray();
		//	drawtiles_array = GetDrawTilesArray();
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			Vector2 pos = Vector2.Zero;
			for (byte col = 0; col < Constants.MAX_COLS; col++)
			{
				pos = new Vector2(col * Constants.TILE_WIDE, Constants.ScreenHigh - 24);
				spriteBatch.Draw(myContentManager.Sea, pos, Color.White);

				//byte idx = (byte)(row * Constants.MAX_COLS + col);
				//byte row = collision_array[col];
				//if (0 != row)
				//{
				//	//pos = new Vector2(col * Constants.TILE_WIDE, row * Constants.TILE_HIGH);
				//	//spriteBatch.Draw(myContentManager.Tile1616, pos, Color.White);

				//	pos = new Vector2(col * Constants.TILE_WIDE , row * Constants.TILE_HIGH);
				//	spriteBatch.Draw(myContentManager.Tile88, pos, Color.White);
				//	pos = new Vector2(col * Constants.TILE_WIDE, row * Constants.TILE_HIGH + Constants.TILE_HIGH);
				//	spriteBatch.Draw(myContentManager.Tile88, pos, Color.White);
				//}
			}

			for (byte col = 0; col < 3; col++)
			{
				pos = new Vector2(col * Constants.TILE_WIDE, Constants.COLUMN_START);
				//spriteBatch.Draw(myContentManager.Tiles[(int)tile_type.tile_type_bridge_midd], pos, Color.White);
				//spriteBatch.Draw(myContentManager.Tiles[(int)tile_type.tile_type_island_midd], pos, Color.White);
				spriteBatch.Draw(myContentManager.Tiles[(int)tile_type.tile_type_turtle_sea2], pos, Color.White);
			}

		}

		private Byte[] getCollisionArray()
		{
			return new byte[]
			{
				18,18,18,18,18,18,18,18,0,0,0,0,18,18,18,18,18,18,18,18,0,0,0,0,0,0,0,0,0,0,0,0
			};
		}

		public Byte[] collision_array { get; private set; }
	}
}