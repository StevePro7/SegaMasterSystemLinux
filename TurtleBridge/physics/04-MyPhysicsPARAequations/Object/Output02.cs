using Microsoft.Xna.Framework;
using System.Collections.Generic;
using System.IO;

namespace Test
{
	// https://www.youtube.com/watch?v=rNvaEnZT0u4&t=15s
	// Practice Problem: The Motorcycle Daredevil
	public class Output02 : Output, IOutput
	{
		//private const float deltaTime = 0.115f;
		private float deltaTime = 0.0f;

		public Output02()
		{
			Angle = 55;
			Speed = 31.2f;
		}

		public void Process()
		{
			float hangTime = HangTime();

			// v = d / t OR d = vt
			float horzDist = InitVelX * hangTime;

			float halfTime = hangTime / 2;
			// d = vi * t + 1/2 * a * t^2
			float vertDist = InitVelY * halfTime + 0.5f * Gravity * halfTime * halfTime;

			// horzDist = 93.3m
			// vertDist = 33.4m

			List<string> lines = new List<string>();
			lines.Add("TheAngle," + Angle);
			lines.Add("TheSpeed," + Speed);
			lines.Add("InitVelX," + InitVelX);
			lines.Add("InitVelY," + InitVelY);
			lines.Add("HorzDist," + horzDist);
			lines.Add("VertDist," + vertDist);

			int deltaX = 2;
			float moveX = InitVelX / deltaX;
			deltaTime = 1 / moveX;
			float ptX = 0;
			for (float dt = 0; dt < hangTime; dt += deltaTime)
			{
				float ptY = InitVelY * dt + 0.5f * Gravity * dt * dt;
				Points.Add(new Vector2(ptX, ptY));
				ptX += 2;
			}

			var contents = lines.ToArray();
			File.WriteAllLines("Output02.csv", contents);
		}
	}
}
