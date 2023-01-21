using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;

namespace Test
{
	public class MyLevelManager
	{
		MyContentManager myContentManager;
		private byte[] collHigh = { 0, 16, 16, 16, 18, 18, 18, 18, 18, 18, 19, 18, 17, 16, 15, 14 };

		public MyLevelManager(MyContentManager myContentManager)
		{
			this.myContentManager = myContentManager;
		}

		public void Initialize()
		{
			drawtiles_array = getDrawTilesArray();
			collision_array = getCollisionArray();
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			Vector2 pos = Vector2.Zero;
			for (int col = 0; col < Constants.MAX_OBJS; col++)
			{
				pos = new Vector2(col * Constants.TILE_WIDE, Constants.ScreenHigh - 24);
				spriteBatch.Draw(myContentManager.Sea, pos, Color.White);
				var tile = drawtiles_array[col];
				pos.Y = 64;
				spriteBatch.Draw(myContentManager.Tiles[tile], pos, Color.White);
			}
		}

		private Byte[] getDrawTilesArray()
		{
			return new byte[]
			{
				(byte)tile_type.tile_type_turtle_fly2,
				(byte)tile_type.tile_type_turtle_fly2,
				(byte)tile_type.tile_type_turtle_fly2,
				(byte)tile_type.tile_type_turtle_fly2,

				(byte)tile_type.tile_type_waves_block,
				(byte)tile_type.tile_type_waves_block,
				(byte)tile_type.tile_type_waves_block,
				(byte)tile_type.tile_type_waves_block,
			};
		}

		private Byte[] getCollisionArray()
		{
			var collList = new List<byte>();
			for (int idx = 0; idx < drawtiles_array.Length; idx++)
			{
				var tile = drawtiles_array[idx];
				for (int lop = 0; lop < 4; lop++)
				{
					collList.Add(collHigh[tile]);
				}
			}

			return collList.ToArray();
		}

		public Byte[] drawtiles_array { get; private set; }
		public Byte[] collision_array { get; private set; }
	}
}