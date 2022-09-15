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
		private float _rocketScaling = 0.1f;

		private Texture2D _rocketImage;

		public void Initialize()
		{
			_rocketPosition = new Vector2(10, 300);
			_rocketAngle = 0.0f;
		}

		public void LoadContent(ContentManager content)
		{
			_rocketImage = content.Load<Texture2D>("000");
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			spriteBatch.Draw(_rocketImage, _rocketPosition, Color.White);
		}
	}
}
