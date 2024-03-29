﻿using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;

namespace _02_Test
{
	public class Game1 : Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		float angle, radians;
		float velInit;
		double velX, velY;
		float dispX;
		int dispY;
		float time;
		Texture2D image;
		List<Vector2> posn;

		public Game1()
		{
			graphics = new GraphicsDeviceManager(this);
			Content.RootDirectory = "Content";

			float num = (float)(-10 * -9.8);
			angle = 15;
			radians = MathHelper.ToRadians(angle);
			float den = (float)(2 * Math.Sin(radians) * Math.Sin(radians));
			var s1 = Math.Sin(radians);
			var s2 = Math.Cos(radians);
			var s3 = s1 * s2;
			var s4 = 2 * s3;
			var s5 = num / s4;
			float sqr = num / den;
			//float ans = (float)Math.Sqrt(sqr);
			var ans = Math.Sqrt(s5);

			angle = 30;
			radians = MathHelper.ToRadians(angle);
			velInit = 8.5f;
			velX = 19.2f;// 7.36f;// velInit * Math.Cos(radians);
			velY = 25.6f;// 4.25f;// velInit * Math.Sin(radians);

			//const float gravity = -9.8f;
			//dispY = 100;
			//float equY = (float)(0.5 * gravity + velY + dispY);
			time = 4.97f;

			dispX = (float)(velX * time);
			posn = new List<Vector2>();
			time = 0;
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			IsFixedTimeStep = true;
			TargetElapsedTime = TimeSpan.FromSeconds(1.0f / 10);
			Logger.Initialize();
			base.Initialize();
		}

		protected override void LoadContent()
		{
			spriteBatch = new SpriteBatch(GraphicsDevice);
			image = Content.Load<Texture2D>("000");
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

			//Logger.Info(dx.ToString());
			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			GraphicsDevice.Clear(Color.CornflowerBlue);

			var dt = 0.1f;
			time += dt;
			//float dx = (float)(velX * dt);
			//float dy = (float)(velY * dt);
			//var pos = new Vector2(dx, dy);
			//var e1 = time * time * -10;
			//var e2 = 40 * time;
			//var e3 = e1 + e2 + 20;

			var dx = velX * time;
			var dy1 = velY * time;
			var dy2 = 0.5 * -9.8 *time * time;
			var dy = dy1 + dy2;
			
			Logger.Info(dx.ToString() + "," + dy.ToString());
			//dx = 0;
			//dy = 0;
			var pos = new Vector2(00 + (float)dx, 0 + (float)dy);
			spriteBatch.Begin();
			spriteBatch.Draw(image, pos, Color.White);
			spriteBatch.End();

			base.Draw(gameTime);
		}
	}
}
