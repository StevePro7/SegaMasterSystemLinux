using Microsoft.Xna.Framework;
using System;
using System.Collections.Generic;

namespace Test
{
	public abstract class Output
	{
		protected const float Gravity = -9.8f;

		public void Initialize()
		{
			var radians = MathHelper.ToRadians(Angle);
			InitVelX = (float)(Speed * Math.Cos(radians));
			InitVelY = (float)(Speed * Math.Sin(radians));
			Points = new List<Vector2>();
		}

		public float HangTime()
		{
			float finalVelY = -InitVelY;
			float totalVelY = finalVelY - InitVelY;
			float hangTime = totalVelY / Gravity;
			return hangTime;
		}

		public float Angle { get; set; }
		public float Speed { get; set; }

		public float InitVelX { get; set; }
		public float InitVelY { get; set; }

		public float InitDispX { get; set; }
		public float InitDispY { get; set; }

		public List<Vector2> Points { get; protected set; }
	}
}
