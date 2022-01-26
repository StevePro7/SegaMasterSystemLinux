using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.IO;

namespace ScreenShotTest
{
	/// <summary>
	/// This is the main type for your game
	/// </summary>
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		const string file = "yellow_16x8";

		PaletteManager paletteManager;
		ImageManager imageManager;
		TileManager tileManager;

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		//RenderTarget2D renderTarget;
		//private Texture2D image;
		//private Texture2D pixel;

		private bool save;

		//private int width = 32;
		//private int height = 24;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = 8;
			graphics.PreferredBackBufferHeight = 8;
			graphics.ApplyChanges();
			Content.RootDirectory = "Content";
		}

		/// <summary>
		/// Allows the game to perform any initialization it needs to before starting to run.
		/// This is where it can query for any required services and load any non-graphic
		/// related content.  Calling base.Initialize will enumerate through any components
		/// and initialize them as well.
		/// </summary>
		protected override void Initialize()
		{
			save = false;
			//if (null != ConfigurationManager.AppSettings["save"])
			//{
			//	save = Convert.ToBoolean(ConfigurationManager.AppSettings["save"]);
			//}
			//save = true;
			IsMouseVisible = true;
			base.Initialize();
		}

		/// <summary>
		/// LoadContent will be called once per game and is the place to load
		/// all of your content.
		/// </summary>
		protected override void LoadContent()
		{
			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);

			paletteManager = new PaletteManager();
			imageManager = new ImageManager(GraphicsDevice, paletteManager);
			tileManager = new TileManager(GraphicsDevice, imageManager);

			var texture = Content.Load<Texture2D>(file);
			tileManager.LoadContent(texture);

			//PresentationParameters pp = GraphicsDevice.PresentationParameters;
			//pp.BackBufferWidth = width;
			//pp.BackBufferHeight = height;
			//renderTarget = new RenderTarget2D(GraphicsDevice, width, height, false, SurfaceFormat.Color, DepthFormat.Depth24);
		}

		/// <summary>
		/// UnloadContent will be called once per game and is the place to unload
		/// all content.
		/// </summary>
		protected override void UnloadContent()
		{
			Content.Unload();
		}

		/// <summary>
		/// Allows the game to run logic such as updating the world,
		/// checking for collisions, gathering input, and playing audio.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Update(GameTime gameTime)
		{
			// Allows the game to exit
			if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
				this.Exit();

			base.Update(gameTime);
		}

		/// <summary>
		/// This is called when the game should draw itself.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Draw(GameTime gameTime)
		{
			Draw(save);
			//base.Draw(gameTime);

			if (save)
			{
				Exit();
			}
		}

		private void Draw(bool save)
		{
			tileManager.Process(save, spriteBatch);
		}

	}

}