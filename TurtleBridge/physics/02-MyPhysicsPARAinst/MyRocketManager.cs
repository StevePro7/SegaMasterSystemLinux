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
		private bool _loggerOutput = false;
		private Vector2 _rocketPosition;
		//private Vector2 _rocketDirection;
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
		private int maxHigh;
		private int gravPos;
		private const float gravity = -9.8f;
		private UInt16[] gravityArr = { 265, 289, 313, 339, 365, 393, 421, 451, 482, 513, 546, 580, 614, 650, 686, 724, 763, 802, 843, 885, 927, 971, 1016, 1061, 1108, 1156, 1204, 1254, 1305, 1356, 1409, 1463 };
		private byte gravity_idx;

		public MyRocketManager(MyConfigManger myConfigManger)
		{
			this.myConfigManger = myConfigManger;
		}

		public void Initialize()
		{
			maxHigh = int.MaxValue;
			gravPos = 0;
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

		public void Launch(GameTime gameTime)
		{
			if (_rocketFlying)
			{
				return;
			}

			Initialize();
			_rocketFlying = true;

			if (!_loggerOutput)
			{
				Logger.Info("Angle = " + angle);
				Logger.Info("Speed = " + speed);
				//Logger.Info("Wide  = " + Wide);
				//Logger.Info("High  = " + High);
			}

			int frame = 0;
			float posX = 0.0f;
			float posY = 0.0f;
			while (true)
			{
				float delta = (float)gameTime.ElapsedGameTime.TotalMilliseconds / 1000f;
				timer += delta;
				posX = veliX * timer;
				posY = (float)(veliY * timer + 0.5 * gravity * timer * timer);

				_rocketPosition = new Vector2(Wide + posX, High - posY);
				int tmpHigh = (int)(High - posY);
				if (tmpHigh < maxHigh)
				{
					maxHigh = tmpHigh;
					gravPos = (int)(Wide + posX);
				}
					_rocketPositionList.Add(_rocketPosition);

				frame++;
				if (_rocketPosition.Y >= High)
				{
					var maxWide = (int)(Wide + posX);
					_rocketFlying = false;
					if (!_loggerOutput)
					{
						Logger.Info("mWide = " + (maxWide - Wide).ToString());
						Logger.Info("mHigh = " + (High - maxHigh).ToString());
					}

					//Logger.Info("dWide = " + (int)posX);
					//Logger.Info("dHigh = " + (High - maxHigh));
					_loggerOutput = true;
					break;
				}
			}

			posX = 0;
			posY = maxHigh;
			gravity_idx = 0;
			if (frame > 10)
			{
				for (int idx = 0; idx < 200; idx++)
				{
					_rocketPosition = new Vector2(gravPos + posX, posY);
					_rocketPositionList.Add(_rocketPosition);
					posX += 2;

					//var tempHigh = (int)(maxHigh + posY);
					int gy = gravityArr[gravity_idx];
					int bigPosnY = (int)posY << 8;
					bigPosnY += gy;
					posY = (bigPosnY >> 8);

					gravity_idx++;
					if (gravity_idx >= gravityArr.Length)
					{
						gravity_idx = (byte)(gravityArr.Length - 1);
					}
				}
			}
		}

		public void Update(GameTime gameTime)
		{
			if (!_rocketFlying)
			{
				return;
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
