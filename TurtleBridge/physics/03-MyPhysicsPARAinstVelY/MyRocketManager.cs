using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;

namespace Test
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
		private IList<Vector2> _rocketPositionList;
		private IList<float> heights;

		private Texture2D _rocketImage;
		private const int Wide = 00;
		private const int High = 0;
		private float maxHigh;
		private const float gravity = -9.8f;

		public MyRocketManager(MyConfigManger myConfigManger)
		{
			this.myConfigManger = myConfigManger;
		}

		public void Initialize()
		{
			maxHigh = float.MaxValue;
			_rocketPositionList = new List<Vector2>();
			_rocketPositionList.Clear();
			heights = new List<float>();
			heights.Clear();
			_rocketPosition = new Vector2(Wide, High);
			_rocketPositionList.Add(_rocketPosition);

			angle = myConfigManger.Angle;
			radians = MathHelper.ToRadians(angle);
			speed = myConfigManger.Speed;
			veliX = (float)(speed * Math.Cos(radians));
			veliY = (float)(speed * Math.Sin(radians));
			timer = 0.0f;
		}

		public void LoadContent(ContentManager content)
		{
			_rocketImage = content.Load<Texture2D>("000");
		}

		public void Launch()
		{
			if (_rocketFlying)
			{
				return;
			}

			_rocketFlying = true;
			float delta = 0.02f;
			int frame = 0;
			int maxFr = 0;
			float posX = 0.0f;
			float posY = 0.0f; float tmpY = 0.0f;
			float accl = 0.0f;
			while (true)
			{
				frame++;
				timer += delta;
				posX = veliX * timer;
				accl = (float)(0.5 * gravity * timer * timer);
				tmpY = veliY * timer + accl;
				posY = High - tmpY;
				heights.Add(posY);
				_rocketPosition = new Vector2(posX, posY);
				var tmpHigh = posY;
				if (tmpHigh < maxHigh)
				{
					maxHigh = tmpHigh;
					maxFr = frame;
				}

				_rocketPositionList.Add(_rocketPosition);
				if (frame == 150)
				{
					break;
				}
			}
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			foreach (var pos in _rocketPositionList)
			{
				spriteBatch.Draw(_rocketImage, pos, Color.White);
			}
		}

		public bool IsRocketFlying { get { return _rocketFlying; } }
	}
}
