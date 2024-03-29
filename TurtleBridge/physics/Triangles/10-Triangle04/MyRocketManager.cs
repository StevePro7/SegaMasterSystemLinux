﻿using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;

namespace _02_Test
{
	public class MyRocketManager
	{
		private readonly MyConfigManger myConfigManger;

		private bool _rocketFlying = false;
		private Vector2 _rocketPosition;
		private float angle;
		private float radians;
		private float speed;
		private float veliX, veliY;
		private float timer;
		float delta;
		private IList<Vector2> _rocketPositionList;

		private Texture2D _rocketImage01, _rocketImage03;
		private int Wide = 0;
		private int High = 256- 32;
		private const float gravity = -9.8f;
		private byte index = 0;

		public MyRocketManager(MyConfigManger myConfigManger)
		{
			this.myConfigManger = myConfigManger;
			index = 2;
		}

		public void Initialize()
		{
			_rocketPositionList = new List<Vector2>();
			_rocketPositionList.Clear();

			InitPos(index);
			_rocketPosition = new Vector2(Wide, High);
			//_rocketPositionList.Add(_rocketPosition);
			//_rocketAngle = 0.0f;

			angle = myConfigManger.Angle;
			radians = MathHelper.ToRadians(angle);
			speed = myConfigManger.Speed;
			veliX = (float)(speed * Math.Cos(radians));
			veliY = (float)(speed * Math.Sin(radians));
			timer = 0.0f;
		}

		public void InitPos(byte myIndex)
		{
			delta = 0.0f;
			index = myIndex;
			if (1 == index)
			{
				Wide = 0; High = 256 - 32;								// W:0 H:224
			}
			if (2 == index)
			{
				Wide = 16; High = 256 - 32;								// W:16 H:224
			}
			if (3 == index)
			{
				Wide = 80 + 16; High = 256 - 80 - 32;					// W:96 H:144
			}
			if (4 == index)
			{
				Wide = 256 - 32 - 80 - 16; High = 256 - 80 - 32;		// W:128  H:144
			}
			if (5 == index)
			{
				Wide = 256-32-16; High = 256 - 32;						// W:208 H:224
			}

			var msg = $"(W,H)=({Wide},{High})";
			Logger.Info(msg);
		}

		public void LoadContent(ContentManager content)
		{
			_rocketImage01 = content.Load<Texture2D>("steve01");
			_rocketImage03 = content.Load<Texture2D>("steve03");
		}

		public void Launch(byte myIndex)
		{
			angle = myConfigManger.Angle;
			radians = MathHelper.ToRadians(angle);

			if (_rocketFlying)
			{
				return;
			}
			index = myIndex;
			if (3==index)
			{
				Initialize();
			}
			else
			{
				InitPos(myIndex);
			}

			_rocketFlying = true;
		}

		public void Update(GameTime gameTime)
		{
			if (!_rocketFlying)
			{
				return;
			}

			if (1 == index)
			{
				Update01(gameTime);
			}
			if (2 == index)
			{
				Update02(gameTime);
			}
			if (3 == index)
			{
				Update03(gameTime);
			}
			if (4 == index)
			{
				Update04(gameTime);
			}
			if (5 == index)
			{
				Update05(gameTime);
			}
		}

		private void Update01(GameTime gameTime)
		{
			Vector2 prevPos = _rocketPosition;
			_rocketPosition = new Vector2(prevPos.X + 1, High);
			if (_rocketPosition.X >= 200 - 57 - 16)
			{
				_rocketFlying = false;
			}
		}
		private void Update02(GameTime gameTime)
		{
			Vector2 prevPos = _rocketPosition;
			var posY = GetY(delta);
			delta++;
			_rocketPosition = new Vector2(prevPos.X + 1, High - posY);
			if (_rocketPosition.X >= 200 - 16)
			{
				_rocketFlying = false;
				delta = 0;
			}
		}
		private void Update03(GameTime gameTime)
		{
			float delta = (float)gameTime.ElapsedGameTime.TotalMilliseconds / 1000f;
			timer += delta;
			float posX = veliX * timer;
			float posY = (float)(veliY * timer + 0.5 * gravity * timer * timer);

			_rocketPosition = new Vector2(Wide + posX, High - posY);
			//_rocketPositionList.Add(_rocketPosition);

			if (_rocketPosition.Y >= High)
			{
				_rocketFlying = false;
				foreach (var pos in _rocketPositionList)
				{
					//Logger.Info($"{pos.X},{pos.Y}");
				}
			}
		}
		private void Update04(GameTime gameTime)
		{
			Vector2 prevPos = _rocketPosition;
			var posY = GetY(delta);
			delta++;
			_rocketPosition = new Vector2(prevPos.X + 1, High + posY);
			if (_rocketPosition.X >= 600 + 57 - 16)
			{
				_rocketFlying = false;
				delta = 0;
			}
		}
		private void Update05(GameTime gameTime)
		{
			Vector2 prevPos = _rocketPosition;
			_rocketPosition = new Vector2(prevPos.X + 1, High);
			if (_rocketPosition.X >= 750)
			{
				_rocketFlying = false;
			}
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			if (1 == index || 5==index)
			{
				spriteBatch.Draw(_rocketImage01, _rocketPosition, Color.White);
			}
			else
			{
				spriteBatch.Draw(_rocketImage03, _rocketPosition, Color.White);
			}

			spriteBatch.Draw(_rocketImage01, new Vector2(96, 112), Color.White);
			spriteBatch.Draw(_rocketImage01, new Vector2(128, 112), Color.White);
		}

		public bool IsRocketFlying { get { return _rocketFlying; } }

		private float GetY(float x)
		{
			var rads = MathHelper.ToRadians(angle);
			var angl = Math.Tan(rads);
			var high = x * angl;
			return (float)high;
		}
	}
}
