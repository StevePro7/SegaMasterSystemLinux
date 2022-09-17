using Microsoft.Xna.Framework;
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
		private Vector2 _rocketDirection;
		//private float _rocketAngle;
		//private float _rocketScaling = 0.1f;
		private float angle;
		private float radians;
		private float speed;
		private float veliX, veliY;
		private float timer;
		private IList<Vector2> _rocketPositionList;

		private Texture2D _rocketImage;
		private const int Wide = 10;
		private const int High = 400;
		private const float gravity = -9.8f;

		public MyRocketManager(MyConfigManger myConfigManger)
		{
			this.myConfigManger = myConfigManger;
		}

		public void Initialize()
		{
			_rocketPositionList = new List<Vector2>();
			_rocketPositionList.Clear();

			_rocketPosition = new Vector2(Wide, High);
			_rocketPositionList.Add(_rocketPosition);
			//_rocketAngle = 0.0f;

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

			Initialize();
			_rocketFlying = true;
		}

		public void Update(GameTime gameTime)
		{
			if (!_rocketFlying)
			{
				return;
			}

			float delta = (float)gameTime.ElapsedGameTime.TotalMilliseconds / 1000f;
			timer += delta;
			float posX = veliX * timer;
			float posY = (float)(veliY * timer + 0.5 * gravity * timer * timer);

			_rocketPosition = new Vector2(Wide + posX, High - posY);
			_rocketPositionList.Add(_rocketPosition);

			//if (_rocketPosition.Y >= High)
			//{
			//	_rocketFlying = false;
			//	foreach (var pos in _rocketPositionList)
			//	{
			//		//Logger.Info($"{pos.X},{pos.Y}");
			//	}
			//}
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
