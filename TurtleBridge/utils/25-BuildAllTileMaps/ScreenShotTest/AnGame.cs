﻿using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace ScreenShotTest
{
	/// <summary>
	/// This is the main type for your game
	/// </summary>
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
		TilemapManager tilemapManager;
		MyController controller;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = width;
			graphics.PreferredBackBufferHeight = height;
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
			IsMouseVisible = true;

			configurationManager = new ConfigurationManager();
			fileManager = new FileManager();
			imageManager = new ImageManager();
			paletteManager = new PaletteManager();
			resourceManager = new ResourceManager();
			tileManager = new TileManager();
			tilemapManager = new TilemapManager();

			controller = new MyController(
				configurationManager,
				fileManager,
				imageManager,
				paletteManager, 
				resourceManager,
				tileManager,
				tilemapManager
			);

			controller.Initialize(GraphicsDevice);
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

			controller.LoadContent(Content, GraphicsDevice);

			PresentationParameters pp = GraphicsDevice.PresentationParameters;
			width = pp.BackBufferWidth;
			height = pp.BackBufferHeight;
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
