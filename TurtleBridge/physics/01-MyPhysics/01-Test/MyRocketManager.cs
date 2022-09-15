using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _01_Test
{
	public class MyRocketManager
	{
		private bool _rocketFlying = false;
		private Vector2 _rocketPosition;
		private Vector2 _rocketDirection;
		private float _rocketAngle;
		//private float _rocketScaling = 0.1f;
		private float angle;
		private float radians;
		private float power;

		private Texture2D _rocketImage;

		public void Initialize()
		{
			_rocketPosition = new Vector2(10, 300);
			_rocketAngle = 0.0f;

			angle = 45;
			radians = MathHelper.ToRadians(angle);
			power = 300;
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
			_rocketAngle = radians;
			Vector2 up = new Vector2(0, -1);
			Matrix rotMatrix = Matrix.CreateRotationZ(_rocketAngle);
			_rocketDirection = Vector2.Transform(up, rotMatrix);
			_rocketDirection *= power / 50.0f;
		}

		public void Update()
		{
			if (!_rocketFlying)
			{
				return;
			}

			Vector2 gravity = new Vector2(0, 1);
			_rocketDirection += gravity / 10.0f;
			_rocketPosition += _rocketDirection;
			_rocketAngle = (float)Math.Atan2(_rocketDirection.X, -_rocketDirection.Y);
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			spriteBatch.Draw(_rocketImage, _rocketPosition, Color.White);
		}
	}
}
