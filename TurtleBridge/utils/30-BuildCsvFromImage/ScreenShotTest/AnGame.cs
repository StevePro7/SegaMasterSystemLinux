using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace ScreenShotTest
{
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;

		private int width = 8;
		private int height = 8;

		ConfigurationManager configurationManager;
		FileManager fileManager;
		PaletteManager paletteManager;
		ImageManager imageManager;
		ResourceManager resourceManager;
		TileManager tileManager;
		//TilemapManager tilemapManager;
		MyController controller;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = width;
			graphics.PreferredBackBufferHeight = height;
			Content.RootDirectory = "Content";
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;

			configurationManager = new ConfigurationManager();
			fileManager = new FileManager();
			imageManager = new ImageManager();
			paletteManager = new PaletteManager();
			resourceManager = new ResourceManager();
			tileManager = new TileManager();
			//tilemapManager = new TilemapManager();

			controller = new MyController(
				configurationManager,
				fileManager,
				imageManager,
				paletteManager, 
				resourceManager,
				tileManager//,
				//tilemapManager
			);

			controller.Initialize(GraphicsDevice);
			base.Initialize();
		}

		protected override void LoadContent()
		{
			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);

			controller.LoadContent(Content, GraphicsDevice);

			PresentationParameters pp = GraphicsDevice.PresentationParameters;
			width = pp.BackBufferWidth;
			height = pp.BackBufferHeight;
		}

		protected override void UnloadContent()
		{
			Content.Unload();
		}

		protected override void Update(GameTime gameTime)
		{
			// Allows the game to exit
			if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
			{
				Exit();
			}

			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			Draw();
			base.Draw(gameTime);
			Exit();
		}

		private void Draw()
		{
			controller.Draw(GraphicsDevice, spriteBatch);
		}

	}
}
