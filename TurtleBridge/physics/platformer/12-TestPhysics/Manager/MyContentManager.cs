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
			Black2442 = content.Load<Texture2D>("Xblack_24x32");
			Tile88 = content.Load<Texture2D>("tile_8x8");
			Tile1616 = content.Load<Texture2D>("tile_16x16");
			Tile248 = content.Load<Texture2D>("tile_24x8");
			Tile2432 = content.Load<Texture2D>("tile_24x32");
			Tile328= content.Load<Texture2D>("tile_32x8");

			Skater = new Texture2D[8];
			Skater[0] = content.Load<Texture2D>("sprite_left01");
			Skater[1] = content.Load<Texture2D>("sprite_left02");
			Skater[2] = content.Load<Texture2D>("sprite_left03");
			Skater[3] = content.Load<Texture2D>("sprite_left04");

			Skater[4] = content.Load<Texture2D>("sprite_rght01");
			Skater[5] = content.Load<Texture2D>("sprite_rght02");
			Skater[6] = content.Load<Texture2D>("sprite_rght03");
			Skater[7] = content.Load<Texture2D>("sprite_rght04");
		}

		public void UnLoadContent(ContentManager content)
		{
			content.Unload();
		}

		public Texture2D Black2442 { get; private set; }
		public Texture2D Tile88 { get; private set; }
		public Texture2D Tile1616 { get; private set; }
		public Texture2D Tile248{ get; private set; }
		public Texture2D Tile2432 { get; private set; }
		public Texture2D Tile328 { get; private set; }
		public Texture2D[] Skater { get; private set; }
	}
}