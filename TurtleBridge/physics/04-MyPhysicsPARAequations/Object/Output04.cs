using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace Test
{
	// https://www.youtube.com/watch?v=rNvaEnZT0u4&t=15s
	// Practice Problem: The Motorcycle Daredevil
	public class Output04 : Output, IOutput
	{
		private List<float> angles;
		private List<float> speeds;
		private List<float> hangTimes;
		private List<float> horzDists;
		private List<float> vertDists;

		public Output04()
		{
			angles = new List<float>();
			speeds = new List<float>();
			hangTimes = new List<float>();
			horzDists = new List<float>();
			vertDists = new List<float>();

			hangTimes.Clear();
			horzDists.Clear();
			vertDists.Clear();
		}

		public void Process()
		{
			Angle = 5;
			Speed = 20;
			Initialize();
			angles.Add(Angle);
			speeds.Add(Speed);
			AddValue(Angle, Speed);

			Angle = 25;
			Speed = 80;
			Initialize();
			angles.Add(Angle);
			speeds.Add(Speed);
			AddValue(Angle, Speed);

			int cnt = angles.Count;
			String.Join(",", angles);
		}

		public void AddValue(float angle, float speed)
		{
			float hangTime = HangTime();

			// v = d / t OR d = vt
			float horzDist = InitVelX * hangTime;

			float halfTime = hangTime / 2;
			// d = vi * t + 1/2 * a * t^2
			float vertDist = InitVelY * halfTime + 0.5f * Gravity * halfTime * halfTime;

			hangTimes.Add(hangTime);
			horzDists.Add(horzDist);
			vertDists.Add(vertDist);
		}
	}
}
