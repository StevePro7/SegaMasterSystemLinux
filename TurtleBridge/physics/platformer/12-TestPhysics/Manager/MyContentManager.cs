using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Content;

namespace Test
{
	public class MyContentManager
	{
		public void Initialize(ContentManager content)
		{
			content.RootDirectory = Constants.CONTENT_DIRECTORY;
		}

		public void LoadContent(ContentManager content)
		{
			Sea = content.Load<Texture2D>("sea");
			Tile88 = content.Load<Texture2D>("tile_8x8");
			Tile1616 = content.Load<Texture2D>("tile_16x16");
			Tile248 = content.Load<Texture2D>("tile_24x8");
			Tile2432 = content.Load<Texture2D>("tile_24x32");
			Tile328= content.Load<Texture2D>("tile_32x8");

			Skater = new Texture2D[4];
			Skater[0] = content.Load<Texture2D>("sprite_rght01");
			Skater[1] = content.Load<Texture2D>("sprite_rght02");
			Skater[2] = content.Load<Texture2D>("sprite_rght03");
			Skater[3] = content.Load<Texture2D>("sprite_rght04");

			Tiles = new Texture2D[16];
			Tiles[(int)tile_type.tile_type_waves_block] = content.Load<Texture2D>("AwavesBlock");
			Tiles[(int)tile_type.tile_type_bridge_midd] = content.Load<Texture2D>("BbridgeMidd");
			Tiles[(int)tile_type.tile_type_island_midd] = content.Load<Texture2D>("EislandMidd");
			Tiles[(int)tile_type.tile_type_turtle_sea1] = content.Load<Texture2D>("KturtleSea1");
			Tiles[(int)tile_type.tile_type_turtle_sea2] = content.Load<Texture2D>("LturtleSea2");
			Tiles[(int)tile_type.tile_type_turtle_fly1] = content.Load<Texture2D>("MturtleFly1");
			Tiles[(int)tile_type.tile_type_turtle_fly2] = content.Load<Texture2D>("NturtleFly2");
			Tiles[(int)tile_type.tile_type_turtle_fly3] = content.Load<Texture2D>("OturtleFly3");
			Tiles[(int)tile_type.tile_type_turtle_fly4] = content.Load<Texture2D>("PturtleFly4");
		}

		public void UnLoadContent(ContentManager content)
		{
			content.Unload();
		}

		public Texture2D Sea { get; private set; }
		public Texture2D Tile88 { get; private set; }
		public Texture2D Tile1616 { get; private set; }
		public Texture2D Tile248{ get; private set; }
		public Texture2D Tile2432 { get; private set; }
		public Texture2D Tile328 { get; private set; }
		public Texture2D[] Skater { get; private set; }
		public Texture2D[] Tiles { get; private set; }
	}
}