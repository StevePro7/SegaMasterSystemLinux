using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace Test
{
	// https://www.youtube.com/watch?v=rNvaEnZT0u4&t=15s
	// Practice Problem: The Motorcycle Daredevil
	public class Output02 : Output, IOutput
	{
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
			for (float dt = 0; dt < hangTime; dt += 0.01f)
			{
				float vd = InitVelY * dt + 0.5f * Gravity * dt * dt;
				string pt = $"{dt},{vd}";
				lines.Add(pt);
			}

			var contents = lines.ToArray();
			File.WriteAllLines("Output02.csv", contents);
		}
	}
}
