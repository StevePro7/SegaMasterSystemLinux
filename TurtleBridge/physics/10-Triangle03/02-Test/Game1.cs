using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;

namespace _02_Test
{
	public class Game1 : Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		Texture2D[] triangle;
		//Texture2D block;
		//Texture2D steve;
		private const int High = 400;
		private readonly MyRocketManager myRocketManager;
		private readonly MyConfigManger myConfigManger;
		float x, y;

		public Game1()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = 800;
			graphics.PreferredBackBufferHeight = 500;
			Content.RootDirectory = "Content";
			myConfigManger = new MyConfigManger();
			myRocketManager = new MyRocketManager(myConfigManger);
			myRocketManager.Initialize();
			x = 0.0f;
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			Logger.Initialize();
			IsFixedTimeStep = true;
			var fps = 50;
			TargetElapsedTime = TimeSpan.FromSeconds(1.0f / fps);
			base.Initialize();
		}

		protected override void LoadContent()
		{
			spriteBatch = new SpriteBatch(GraphicsDevice);

			triangle = new Texture2D[2];
			triangle[0] = Content.Load<Texture2D>("triangle_max01");
			triangle[1] = Content.Load<Texture2D>("triangle_max02");
			myRocketManager.LoadContent(Content);
			//block = Content.Load<Texture2D>("block");
			//steve = Content.Load<Texture2D>("steve");
		}

		protected override void UnloadContent()
		{
			Content.Unload();
		}

		protected override void Update(GameTime gameTime)
		{
			if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
			{
				Exit();
			}

			if (Keyboard.GetState().IsKeyDown(Keys.Left))
			{
				
			}
			if (Keyboard.GetState().IsKeyDown(Keys.Right))
			{
				
			}

			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			GraphicsDevice.Clear(Color.CornflowerBlue);
			//GraphicsDevice.Clear(Color.White);

			spriteBatch.Begin();
			spriteBatch.Draw(triangle[0], new Vector2(200-triangle[0].Width, High), Color.White);
			spriteBatch.Draw(triangle[1], new Vector2(600, High), Color.White);
			myRocketManager.Draw(spriteBatch);

			//y = GetY(x);
			//DrawBlock(100 + x, 100 + y);
			
			spriteBatch.End();

			base.Draw(gameTime);
		}

		private void DrawBlock(float x, float y)
		{
			var pos = new Vector2(x - 15, y - 30);
			//spriteBatch.Draw(steve, pos, Color.White);
		}

		private float GetY(float x)
		{
			var rads = MathHelper.ToRadians(37);
			var angl = Math.Tan(rads);
			var high = x * angl;
			return (float)high;
		}
	}
}
