using Microsoft.Xna.Framework;
using System;

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
		}

		public float QuadraticB(float a, float b, float c)
		{
			// https://www.google.com/search?q=quadratic+formula+to+calculate+b&rlz=1C1CHBD_en-GBGB690GB690&oq=quadratic+formula+to+calculate+b&aqs=chrome..69i57j0i22i30i625l7j0i390l2.7346j0j15&sourceid=chrome&ie=UTF-8#fpstate=ive&vld=cid:3819ab64,vid:IlNAJl36-10
			// x = (-b +/ sqrt(b^2 - 4ac)) / 2a
			// 2x^2 + 3x -2 = 0
			return 0.0f;
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
	}
}
