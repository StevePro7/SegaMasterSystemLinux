using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;

namespace CatapultMiniGame
{
	public class CatapultGame : Game
	{
		const int screenWidth = 1280;
		const int screenHeight = 720;
		const int starup = 0;
		int frame = 0;

		GraphicsDeviceManager graphics;

		SpriteBatch spriteBatch;
		public SpriteBatch SpriteBatch
		{
			get { return spriteBatch; }
		}

		// Input States
		//GamePadState currentGamePadState;
		//public GamePadState CurrentGamePadState
		//{
		//	get { return currentGamePadState; }
		//}
		//GamePadState lastGamePadState;
		//public GamePadState LastGamePadState
		//{
		//	get { return lastGamePadState; }
		//}
		KeyboardState currentKeyboardState;
		public KeyboardState CurrentKeyboardState
		{
			get { return currentKeyboardState; }
		}
		KeyboardState lastKeyboardState;
		public KeyboardState LastKeyboardState
		{
			get { return lastKeyboardState; }
		}

		// Font components
		SpriteFont tahomaFont;

		bool runGame = true;

		// Used to delay the start of the game
		bool playingGame = false;

		// Current high score
		// This is loaded at the start from a file.
		int highScore = 0;
		public int HighScore
		{
			get { return highScore; }
		}

		// Textures for background
		Texture2D backgroundTexture;
		Texture2D skyTexture;

		// Track where the player is viewing
		Vector2 screenPosition = Vector2.Zero;

		// Texture for object at the end of the rolling area
		Texture2D endObjectTexture;

		// Position of the object at the end of the rolling area
		Vector2 endObjectPos = new Vector2(1000, 500);

		// Our Catapult object
		Catapult playerCatapult;

		// Current distance of the pumpkin
		float pumpkinDistance;
		public float PumpkinDistance
		{
			get { return pumpkinDistance; }
		}

		public CatapultGame()
		{
			Logger.Initialize();
			//~Logger.Info("catapult game");
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = screenWidth;
			graphics.PreferredBackBufferHeight = screenHeight;
			Content.RootDirectory = "Content";

			IsFixedTimeStep = true;
			TargetElapsedTime = TimeSpan.FromSeconds(1.0f / 50.0f);
			playerCatapult = new Catapult(this);
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			base.Initialize();
		}

		protected override void LoadContent()
		{
			spriteBatch = new SpriteBatch(graphics.GraphicsDevice);
			backgroundTexture = Content.Load<Texture2D>("Textures/ground");
			skyTexture = Content.Load<Texture2D>("Textures/sky");
			endObjectTexture = Content.Load<Texture2D>("Textures/log");
			tahomaFont = Content.Load<SpriteFont>("Fonts/TahomaFont");
			playerCatapult.Initialize();
		}

		protected override void Update(GameTime gameTime)
		{
			frame++;
			Logger.Info(frame.ToString());

			// Allow the game to exit
			if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed ||
				Keyboard.GetState().IsKeyDown(Keys.Escape))
			{
				runGame = false;
			}

			// Update input
			//lastGamePadState = currentGamePadState;
			//currentGamePadState = GamePad.GetState(PlayerIndex.One);
			lastKeyboardState = currentKeyboardState;
			currentKeyboardState = Keyboard.GetState();

			// Wait 3 seconds until we start playing
			if (gameTime.TotalGameTime.Seconds >= starup && !playingGame)
			{
				playingGame = true;
			}

			// After 3 seconds play the game
			if (playingGame)
			{
				// Update the players Catapult
				playerCatapult.Update(gameTime);

				if (playerCatapult.CurrentState == CatapultState.Reset)
				{
					// reset background and log
					screenPosition = Vector2.Zero;

					endObjectPos.X = 1000;
					endObjectPos.Y = 500;
				}

				// Move background
				if (playerCatapult.CurrentState == CatapultState.ProjectileFlying)
				{
					screenPosition.X = (playerCatapult.PumpkinPosition.X - playerCatapult.PumpkinLaunchPosition) * -1.0f;
					endObjectPos.X = (playerCatapult.PumpkinPosition.X - playerCatapult.PumpkinLaunchPosition) * -1.0f + 1000;
				}

				// Calculate the pumpkin flying distance
				if (playerCatapult.CurrentState == CatapultState.ProjectileFlying ||
					playerCatapult.CurrentState == CatapultState.ProjectileHit)
				{
					pumpkinDistance = playerCatapult.PumpkinPosition.X - playerCatapult.PumpkinLaunchPosition;
					pumpkinDistance /= 15.0f;
				}

				// Is this a high score
				if (highScore < pumpkinDistance)
					highScore = (int)pumpkinDistance;
			}

			// Exit game
			if (!runGame)
			{
				Exit();
			}

			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			graphics.GraphicsDevice.Clear(Color.CornflowerBlue);

			// Where to draw the Sky
			Vector2 skyDrawPos = Vector2.Zero;
			skyDrawPos.Y -= 50;
			skyDrawPos.X = (screenPosition.X / 6) % 3840;

			// Where to draw the background hills
			Vector2 backgroundDrawPos = Vector2.Zero;
			backgroundDrawPos.Y += 225;
			backgroundDrawPos.X = screenPosition.X % 1920;

			string printString;
			Vector2 FontOrigin;

			// Start Drawing
			// https://nelsonhurst.com/xna-cheatsheet
			//sprite.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend);
			spriteBatch.Begin();

			// Draw the sky
			spriteBatch.Draw(skyTexture, skyDrawPos, Color.White);
			spriteBatch.Draw(skyTexture, skyDrawPos + new Vector2(skyTexture.Width, 0), null, Color.White, 0, Vector2.Zero, 1, SpriteEffects.FlipHorizontally, 0);

			// Check to see if we need to draw another sky
			if (skyDrawPos.X <= -(skyTexture.Width * 2) + screenWidth)
			{
				skyDrawPos.X += skyTexture.Width * 2;
				spriteBatch.Draw(skyTexture, skyDrawPos, Color.White);
				spriteBatch.Draw(skyTexture, skyDrawPos + new Vector2(skyTexture.Width, 0), null, Color.White, 0, Vector2.Zero, 1, SpriteEffects.FlipHorizontally, 0);
			}

			// Draw the background once
			spriteBatch.Draw(backgroundTexture, backgroundDrawPos, Color.White);
			spriteBatch.Draw(backgroundTexture, backgroundDrawPos + new Vector2(backgroundTexture.Width, 0), null, Color.White, 0, Vector2.Zero, 1, SpriteEffects.FlipHorizontally, 0);

			// Check to see if we need to draw another background
			if (backgroundDrawPos.X <= -(backgroundTexture.Width * 2) + screenWidth)
			{
				backgroundDrawPos.X += backgroundTexture.Width * 2;
				spriteBatch.Draw(backgroundTexture, backgroundDrawPos, Color.White);
				spriteBatch.Draw(backgroundTexture, backgroundDrawPos + new Vector2(backgroundTexture.Width, 0), null, Color.White, 0, Vector2.Zero, 1, SpriteEffects.FlipHorizontally, 0);
			}

			// Draw the log at the end
			spriteBatch.Draw(endObjectTexture, endObjectPos, Color.White);

			// Draw the Catapult
			playerCatapult.Draw(gameTime);

			// If we have not started to play
			if (!playingGame)
			{
				// Draw title
				//printString = "Catapult";
				//FontOrigin = tahomaFont.MeasureString(printString) / 2;
				//spriteBatch.DrawString(tahomaFont, printString, new Vector2(screenWidth / 2, 252), new Color(new Vector4(0, 0, 0, 3 - (float)gameTime.TotalGameTime.TotalSeconds)), 0, FontOrigin, 2, SpriteEffects.None, 0);
				//spriteBatch.DrawString(tahomaFont, printString, new Vector2(screenWidth / 2, 250), new Color(new Vector4(0.5f, 1.0f, 0.2f, 3 - (float)gameTime.TotalGameTime.TotalSeconds)), 0, FontOrigin, 2, SpriteEffects.None, 0);
			}
			else
			// We have started
			{
				if (playerCatapult.CurrentState == CatapultState.Rolling)
				{
					float rightTriggerAmt = 0;// currentGamePadState.Triggers.Right;
											  //if (rightTriggerAmt > 0.5f)
											  //	rightTriggerAmt = 1.0f - rightTriggerAmt;

					bool keysB = currentKeyboardState.IsKeyDown(Keys.B);
					if (keysB)
						rightTriggerAmt = 0.5f;

					rightTriggerAmt *= 2;

					printString = "Power Bonus: " + rightTriggerAmt.ToString("p1");
					spriteBatch.DrawString(tahomaFont, printString, new Vector2(52, 62), Color.Black, 0, Vector2.Zero, 1, SpriteEffects.None, 0);
					spriteBatch.DrawString(tahomaFont, printString, new Vector2(52, 60), Color.Azure, 0, Vector2.Zero, 1, SpriteEffects.None, 0);
				}

				// Draw the distance
				printString = "Distance: " + ((int)pumpkinDistance).ToString() + " ft.";
				spriteBatch.DrawString(tahomaFont, printString, new Vector2(802, 17), Color.Black, 0, Vector2.Zero, 1, SpriteEffects.None, 0);
				spriteBatch.DrawString(tahomaFont, printString, new Vector2(800, 15), Color.Azure, 0, Vector2.Zero, 1, SpriteEffects.None, 0);
				if (playerCatapult.PumpkinPosition.Y < -32)
				{
					float pumpkinHeight = -playerCatapult.PumpkinPosition.Y / 15.0f;

					printString = ((int)pumpkinHeight).ToString() + " ft.";
					spriteBatch.DrawString(tahomaFont, printString, new Vector2(playerCatapult.PumpkinLaunchPosition, 62), Color.Black, 0, Vector2.Zero, 1, SpriteEffects.None, 0);
					spriteBatch.DrawString(tahomaFont, printString, new Vector2(playerCatapult.PumpkinLaunchPosition, 60), Color.Azure, 0, Vector2.Zero, 1, SpriteEffects.None, 0);
				}

				// Draw the high score
				printString = "High Score: " + highScore.ToString() + " ft.";
				spriteBatch.DrawString(tahomaFont, printString, new Vector2(52, 17), Color.Black, 0, Vector2.Zero, 1, SpriteEffects.None, 0);
				spriteBatch.DrawString(tahomaFont, printString, new Vector2(52, 15), Color.Azure, 0, Vector2.Zero, 1, SpriteEffects.None, 0);

				// Print new high score if over 1000
				if (playerCatapult.CurrentState == CatapultState.ProjectileHit && highScore == (int)pumpkinDistance && highScore > 1000)
				{
					printString = "High Score!";
					FontOrigin = tahomaFont.MeasureString(printString) / 2; spriteBatch.DrawString(tahomaFont, printString,
								new Vector2(screenWidth / 2, 252), Color.Black, 0, FontOrigin, 2, SpriteEffects.None, 0);
					spriteBatch.DrawString(tahomaFont, printString, new Vector2(screenWidth / 2, 250), Color.Gold, 0, FontOrigin, 2, SpriteEffects.None, 0);
				}
				// Print that we crashed
				else if (playerCatapult.CurrentState == CatapultState.Crash)
				{
					printString = "Crash!";
					FontOrigin = tahomaFont.MeasureString(printString) / 2;
					spriteBatch.DrawString(tahomaFont, printString, new Vector2(screenWidth / 2, 252), Color.Black, 0, FontOrigin, 2, SpriteEffects.None, 0);
					spriteBatch.DrawString(tahomaFont, printString, new Vector2(screenWidth / 2, 250), Color.Red, 0, FontOrigin, 2, SpriteEffects.None, 0);
				}
				// Did we get boost power
				else if (playerCatapult.BoostPower > 0)
				{
					string boostPoints = "";
					for (int i = 0; i < playerCatapult.BoostPower; i++)
						boostPoints += "!";

					printString = "Boost Power" + boostPoints;
					FontOrigin = tahomaFont.MeasureString(printString) / 2;
					spriteBatch.DrawString(tahomaFont, printString, new Vector2(screenWidth / 2, 252), Color.Black, 0, FontOrigin, 2, SpriteEffects.None, 0);
					spriteBatch.DrawString(tahomaFont, printString, new Vector2(screenWidth / 2, 250), Color.Red, 0, FontOrigin, 2, SpriteEffects.None, 0);
				}
			}

			spriteBatch.End();
			base.Draw(gameTime);
		}

	}
}