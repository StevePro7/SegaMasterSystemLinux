using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace Test
{
	// https://www.youtube.com/watch?v=rNvaEnZT0u4&t=15s
	// Practice Problem: The Motorcycle Daredevil
	public class Output03 : Output, IOutput
	{
		//private const float deltaTime = 0.056f;
		private float deltaTime = 0.0f;

		private List<float> deltaY;
		private List<int> valueY;
		private int index;

		public Output03()
		{
			Angle = 65;
			Speed = 35;

			deltaY = new List<float>();
			valueY = new List<int>();
			deltaY.Clear();
			index = deltaY.Count();
		}

		public void Process()
		{
			//bool positive;
			float hangTime = HangTime();
			// v = d / t OR d = vt
			float horzDist = InitVelX * hangTime;

			float halfTime = hangTime / 2;
			// d = vi * t + 1/2 * a * t^2
			float vertDist = InitVelY * halfTime + 0.5f * Gravity * halfTime * halfTime;

			// horzDist = 93.3m
			// vertDist = 33.4m

			const int deltaX = 3;
			float moveX = InitVelX / deltaX;
			deltaTime = 1 / moveX;

			List<string> lines = new List<string>();
			for (float dt = 0; dt < hangTime + 2.5f; dt += deltaTime)
			{
				float vd = InitVelY * dt + 0.5f * Gravity * dt * dt;
				deltaY.Add(vd);
			}

			index = 0;
			for (int index = 1; index < deltaY.Count; index++)
			{
				float diff = deltaY[index - 1] - deltaY[index];
				if (diff < 8)
				{
					float valu = diff * 256;
					int test = Convert.ToInt32(valu);
					valueY.Add(test);
				}
			}

			lines.Clear();
			lines.Add("static int jumps[] =");
			lines.Add("{");
			string text = String.Empty;
			for (int index = 0; index < valueY.Count; index++)
			{
				text += valueY[index] + ", ";
			}
			lines.Add("\t" +text);
			lines.Add("};");
			var contents = lines.ToArray();
			//File.WriteAllLines("Output03.csv", contents);
			File.WriteAllLines("Output03.c", contents);
		}
	}
}
