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
			//for (byte row = 0; row < Constants.MAX_ROWS; row++)
			{
				for (byte col = 0; col < Constants.MAX_COLS; col++)
				{
					//byte idx = (byte)(row * Constants.MAX_COLS + col);
					byte row = collision_array[col];
					if (0 != row)
					{
						//pos = new Vector2(col * Constants.TILE_WIDE, row * Constants.TILE_HIGH);
						//spriteBatch.Draw(myContentManager.Tile1616, pos, Color.White);

						pos = new Vector2(col * Constants.TILE_WIDE , row * Constants.TILE_HIGH);
						spriteBatch.Draw(myContentManager.Tile88, pos, Color.White);
						pos = new Vector2(col * Constants.TILE_WIDE, row * Constants.TILE_HIGH + Constants.TILE_HIGH);
						spriteBatch.Draw(myContentManager.Tile88, pos, Color.White);
					}
				}
			}
		}

		private Byte[] getCollisionArray()
		{
			return new byte[Constants.MAX_COLS]
			{
				20,20,20,20,20,20,20,20,0,0,0,0,20,20,20,20,20,20,20,20,0,0,0,0,0,0,0,0,0,0,0,0
			};
		}

		public Byte[] collision_array { get; private set; }
	}
}