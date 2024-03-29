﻿using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace Test
{
	public class AnGame : Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		MyContentManager myContentManager;
		MyCommandManager myCommandManager;
		MyInputManager myInputManager;
		MyLevelManager myLevelManager;
		MyPlayerManager myPlayerManager;
		MyScreenManager myScreenManager;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = Constants.ScreenWide;
			graphics.PreferredBackBufferHeight = Constants.ScreenHigh;
			graphics.ApplyChanges();

			myCommandManager = new MyCommandManager();
			myContentManager = new MyContentManager();
			myInputManager = new MyInputManager();
			myLevelManager = new MyLevelManager(myContentManager);
			myPlayerManager = new MyPlayerManager(myContentManager, myInputManager, myLevelManager);
			myScreenManager = new MyScreenManager(myContentManager, myInputManager, myLevelManager, myPlayerManager);
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			IsFixedTimeStep = true;
			TargetElapsedTime = TimeSpan.FromSeconds(1.0f / 50);
			Logger.Initialize();
			myContentManager.Initialize(Content);
			myCommandManager.Initialize();
			myLevelManager.Initialize();
			myPlayerManager.Initialize();
			base.Initialize();
		}

		protected override void LoadContent()
		{
			spriteBatch = new SpriteBatch(GraphicsDevice);
			myContentManager.LoadContent(Content);
		}

		protected override void UnloadContent()
		{
			myContentManager.UnLoadContent(Content);
		}

		protected override void Update(GameTime gameTime)
		{
			myInputManager.Update(gameTime);
			if (myInputManager.KeyPress(Keys.Escape))
			{
				Exit();
			}

			myPlayerManager.Update(gameTime);
			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			GraphicsDevice.Clear(Color.CornflowerBlue);
			myScreenManager.Draw(spriteBatch);
			base.Draw(gameTime);
		}

	}
}
