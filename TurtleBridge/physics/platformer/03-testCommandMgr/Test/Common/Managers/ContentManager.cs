using Microsoft.Xna.Framework.Graphics;
using WindowsGame.Master;

namespace WindowsGame.Common
{
	public interface IContentManager
	{
		void Initialize();
		void LoadContent();
		void UnLoadContent();
	}

	public class ContentManager : IContentManager
	{
		public void Initialize()
		{
			Engine.Content.RootDirectory = Constants.CONTENT_DIRECTORY;
		}

		public void LoadContent()
		{
			Assets.EmulogicFont = Engine.Content.Load<SpriteFont>("Emulogic");
			Assets.Black2442 = Engine.Content.Load<Texture2D>("black_24x32");
			Assets.Tile88 = Engine.Content.Load<Texture2D>("tile_8x8");
			Assets.Tile1616 = Engine.Content.Load<Texture2D>("tile_16x16");
			Assets.Tile248 = Engine.Content.Load<Texture2D>("tile_24x8");
			Assets.Tile2432 = Engine.Content.Load<Texture2D>("tile_24x32");

			Assets.Skater = new Texture2D[3];
			Assets.Skater[0] = Engine.Content.Load<Texture2D>("skate01");
			Assets.Skater[1] = Engine.Content.Load<Texture2D>("skate02");
			Assets.Skater[2] = Engine.Content.Load<Texture2D>("skate03");
		}

		public void UnLoadContent()
		{
			Engine.Content.Unload();
		}

	}
}