using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace CatapultMiniGame
{
	public enum CatapultState 
	{ 
		Rolling, 
		Firing, 
		Crash, 
		ProjectileFlying, 
		ProjectileHit,
		Reset,
		StevePro,
	}

	public class Catapult
	{
		// Hold what game I belong to
		CatapultGame curGame = null;
		bool firstTime = false;

		// Current state of the Catapult
		CatapultState currentState;
		public CatapultState CurrentState
		{
			get { return currentState; }
			set { currentState = value; }
		}

		// Texture used for base of Catapult
		Texture2D baseTexture;
		Texture2D baseTextureBack;

		// Texture for the arm
		Texture2D armTexture;

		// Textures for pumpkins
		Texture2D pumpkinTexture;
		Texture2D pumpkinSmashTexture;

		// Position and speed of catapult base
		Vector2 basePosition = Vector2.Zero;
		float baseSpeed;

		// Position and rotation of catapult arm
		Vector2 armCenter = new Vector2(200, 27);
		Vector2 armOffset = new Vector2(280, 100);
		float armRotation;

		// Position, speed, and rotation of pumpkin
		Vector2 pumpkinPosition = Vector2.Zero;
		public Vector2 PumpkinPosition
		{
			get { return pumpkinPosition; }
			set { pumpkinPosition = value; }
		}

		Vector2 pumpkinVelocity = Vector2.Zero;
		Vector2 pumpkinAcceleration = new Vector2(0, 0.001f);
		Vector2 pumpkinRotationPosition = Vector2.Zero;
		float pumpkinLaunchPosition;
		public float PumpkinLaunchPosition
		{
			get { return pumpkinLaunchPosition; }
			set { pumpkinLaunchPosition = value; }
		}
		float pumpkinRotation;

		// Level of boost power
		int boostPower;
		public int BoostPower
		{
			get { return boostPower; }
			set { boostPower = value; }
		}

		public Catapult(Game game)
		{
			curGame = (CatapultGame)game;
			ResetCatapult();
		}

		public void  Initialize()
		{
			baseTexture = curGame.Content.Load<Texture2D>("Textures/body_front");
			baseTextureBack = curGame.Content.Load<Texture2D>("Textures/body_back");
			pumpkinTexture = curGame.Content.Load<Texture2D>("Textures/pumpkin");
			pumpkinSmashTexture = curGame.Content.Load<Texture2D>("Textures/pumpkinsmash");
			armTexture = curGame.Content.Load<Texture2D>("Textures/arm");
		}

		public void Update(GameTime gameTime)
		{
			if (currentState == CatapultState.ProjectileFlying)
			{
				//Logger.Info(pumpkinPosition.Y.ToString());
			}

			if (gameTime == null)
				throw new ArgumentNullException("gameTime");

			// Do we need to reset
			if (currentState == CatapultState.Reset)
				ResetCatapult();

			// Are we currently rolling?
			if (currentState == CatapultState.Rolling)
			{
				// Add to current speed
				float speedAmt = 0.0f;// curGame.CurrentGamePadState.Triggers.Left;
				bool keysRight = curGame.CurrentKeyboardState.IsKeyDown(Keys.Right);
				if (keysRight)
				{
					speedAmt = 1.0f;
				}

				if (!firstTime && 0 != gameTime.ElapsedGameTime.Milliseconds)
				{
					//firstTime = true;
					speedAmt = 1.0f;
				}

				baseSpeed += speedAmt * gameTime.ElapsedGameTime.Milliseconds * 0.001f;

				// Move catapult based on speed
				basePosition.X += baseSpeed * gameTime.ElapsedGameTime.Milliseconds;
				

				// Move pumpkin to match catapult
				pumpkinPosition.X = pumpkinLaunchPosition = basePosition.X + 120;
				pumpkinPosition.Y = basePosition.Y + 80;

				// Check to see if we fire the pumpkin
				//if ((curGame.CurrentGamePadState.Buttons.A == ButtonState.Pressed && curGame.LastGamePadState.Buttons.A != ButtonState.Pressed) || (curGame.CurrentKeyboardState.IsKeyDown(Keys.Space) && curGame.LastKeyboardState.IsKeyUp(Keys.Space)))
				bool keysSpace = curGame.CurrentKeyboardState.IsKeyDown(Keys.Space) && curGame.LastKeyboardState.IsKeyUp(Keys.Space);
				if (basePosition.X >= 650)
				{
					basePosition.X = 650;
					keysSpace = true;
				}
				if (keysSpace)
				{
					Fire();
				}
			}
			// Are we in the firing state
			else if (currentState == CatapultState.Firing)
			{
				// Rotate the arm
				if (armRotation < MathHelper.ToRadians(81))
				{
					armRotation += MathHelper.ToRadians(gameTime.ElapsedGameTime.Milliseconds);

					Matrix matTranslate, matTranslateBack, matRotate, matFinal;
					matTranslate = Matrix.CreateTranslation((-pumpkinRotationPosition.X) - 170, -pumpkinRotationPosition.Y, 0);
					matTranslateBack = Matrix.CreateTranslation(pumpkinRotationPosition.X + 170, pumpkinRotationPosition.Y, 0);
					matRotate = Matrix.CreateRotationZ(armRotation);
					matFinal = matTranslate * matRotate * matTranslateBack;

					Vector2.Transform(ref pumpkinRotationPosition, ref matFinal, out pumpkinPosition);
					pumpkinLaunchPosition = pumpkinPosition.X;

					pumpkinRotation += MathHelper.ToRadians(gameTime.ElapsedGameTime.Milliseconds / 10.0f);
				}
				// We are done rotating so send the pumpkin flying
				else
				{
					currentState = CatapultState.ProjectileFlying;
					//currentState = CatapultState.StevePro;

					pumpkinVelocity.X = baseSpeed * 2.0f + 1;
					pumpkinVelocity.Y = -baseSpeed * 0.75f;

					// Add extra velocity for Right trigger 
					float rightTriggerAmt = 0;// curGame.CurrentGamePadState.Triggers.Right;
					if (rightTriggerAmt > 0.5f)
						rightTriggerAmt = 1.0f - rightTriggerAmt;

					bool keysB = curGame.CurrentKeyboardState.IsKeyDown(Keys.B);
					keysB = true;
					if (keysB)
					{
						rightTriggerAmt = 0.5f;
					}

					rightTriggerAmt *= 2;

					pumpkinVelocity *= 1.0f + rightTriggerAmt;

					// Check for extra boost power
					if (basePosition.X > 620)
					{
						boostPower = 3;
						pumpkinVelocity *= 2.0f;
					}
					else if (basePosition.X > 600)
					{
						boostPower = 2;
						pumpkinVelocity *= 1.6f;
					}
					else if (basePosition.X > 580)
					{
						boostPower = 1;
						pumpkinVelocity *= 1.3f;
					}
				}
			}
			// Pumpkin is in the flying state
			else if (currentState == CatapultState.ProjectileFlying)
			{
				// Update the position of the pumpkin
				pumpkinPosition += pumpkinVelocity * gameTime.ElapsedGameTime.Milliseconds;
				pumpkinVelocity += pumpkinAcceleration * gameTime.ElapsedGameTime.Milliseconds;

				// Move the catapult away from the pumpkin
				basePosition.X -= pumpkinVelocity.X * gameTime.ElapsedGameTime.Milliseconds;

				// Rotate the pumpkin as it flys
				pumpkinRotation += MathHelper.ToRadians(pumpkinVelocity.X * 3.5f);
				var degs = MathHelper.ToDegrees(pumpkinRotation) % 360;
				Logger.Info(degs.ToString());

				// Is the pumpkin hitting the ground
				if (pumpkinPosition.Y > 630)
				{
					// Move the pumpkin out of the ground and Change the pumkin velocity
					pumpkinPosition.Y = 630;
					pumpkinVelocity.Y *= -0.8f;
					pumpkinVelocity.X *= 0.7f;

					// Stop the pumpkin if the speed is too low
					if (pumpkinVelocity.X < 0.1f)
					{
						currentState = CatapultState.ProjectileHit;
					}
				}
			}
			// Did we crash into the log
			if (basePosition.X > 650)
			{
				currentState = CatapultState.Crash;
			}

			// If the projectile hit or we crashed reset the catapult
			if (curGame.CurrentKeyboardState.IsKeyDown(Keys.Enter))
			{
				currentState = CatapultState.Reset;
			}
			//if ((currentState == CatapultState.Crash || currentState == CatapultState.ProjectileHit) && (curGame.CurrentGamePadState.Buttons.A == ButtonState.Pressed || curGame.CurrentKeyboardState.IsKeyDown(Keys.Space)) && curGame.CurrentGamePadState.Triggers.Left == 0 && curGame.CurrentKeyboardState.IsKeyUp(Keys.Right))
			if ((currentState == CatapultState.Crash || currentState == CatapultState.ProjectileHit) && (curGame.CurrentKeyboardState.IsKeyDown(Keys.Space)) && curGame.CurrentKeyboardState.IsKeyUp(Keys.Right))
			{
				currentState = CatapultState.Reset;
			}
		}

		// Draw the catapult and pumpkin
		public void Draw(GameTime gameTime)
		{
			if (gameTime == null)
				throw new ArgumentNullException("gameTime");

			if (currentState == CatapultState.Crash)
			{
				curGame.SpriteBatch.Draw(baseTextureBack, basePosition, null, Color.White, MathHelper.ToRadians(-5), Vector2.Zero, 1.0f, SpriteEffects.None, 0);
				curGame.SpriteBatch.Draw(armTexture, basePosition + armOffset, null, Color.White, armRotation, armCenter, 1.0f, SpriteEffects.None, 0.0f);
				curGame.SpriteBatch.Draw(baseTexture, basePosition, null, Color.White, MathHelper.ToRadians(5), Vector2.Zero, 1.0f, SpriteEffects.None, 0);
			}
			else
			{
				curGame.SpriteBatch.Draw(baseTextureBack, basePosition, Color.White);
				curGame.SpriteBatch.Draw(armTexture, basePosition + armOffset, null, Color.White, armRotation, armCenter, 1.0f, SpriteEffects.None, 0.0f);
				curGame.SpriteBatch.Draw(baseTexture, basePosition, Color.White);
			}

			if (currentState != CatapultState.ProjectileHit && currentState != CatapultState.Crash)
				curGame.SpriteBatch.Draw(pumpkinTexture, new Vector2(pumpkinLaunchPosition, pumpkinPosition.Y), null, Color.White, pumpkinRotation, new Vector2(32, 32), 1.0f, SpriteEffects.None, 0.0f);
			else
				curGame.SpriteBatch.Draw(pumpkinSmashTexture, new Vector2(pumpkinLaunchPosition, pumpkinPosition.Y), null, Color.White, 0, new Vector2(50, 32), 1.0f, SpriteEffects.None, 0.0f);
		}

		// Reset the catapult and pumpkin to default positions
		private void ResetCatapult()
		{
			basePosition.X = -100;
			basePosition.Y = 430;
			baseSpeed = 0;

			pumpkinPosition = Vector2.Zero;
			armRotation = MathHelper.ToRadians(0);

			currentState = CatapultState.Rolling;

			pumpkinPosition = Vector2.Zero;
			pumpkinVelocity = Vector2.Zero;
			pumpkinPosition.X = pumpkinLaunchPosition = basePosition.X + 120;
			pumpkinPosition.Y = basePosition.Y + 80;
			pumpkinRotation = 0;

			boostPower = 0;
			firstTime = false;
		}

		// Change state to firing and play fire sound
		private void Fire()
		{
			currentState = CatapultState.Firing;
			pumpkinRotationPosition = pumpkinPosition;
		}
	}
}