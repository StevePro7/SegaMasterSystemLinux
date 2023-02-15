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
		private const float deltaTime = 0.115f;

		private List<float> deltaY;
		private List<int> valueY;
		private int index;

		public Output03()
		{
			Angle = 55;
			Speed = 31.2f;

			deltaY = new List<float>();
			valueY = new List<int>();
			deltaY.Clear();
			deltaY.Add(0);
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

			//positive = false;
			List<string> lines = new List<string>();
			for (float dt = deltaTime; dt < hangTime + 2; dt += deltaTime)
			{
				float vd = InitVelY * dt + 0.5f * Gravity * dt * dt;
				//float rn = (float)Math.Round(vd, 2);
				float rn = vd;
				deltaY.Add(rn);
				//lines.Add(rn.ToString());
				//float prev = deltaY[index - 1];
				//float diff = prev - vd;
				//deltaY.Add(diff);
				//float valu = diff * 256;
				//int data = (int)valu;

				//if (!positive)
				//{
				//	if (data >= 0)
				//	{
				//		// TODO log this value - first on decent.
				//		positive = true;
				//	}
				//}
				//index++;
			}

			index = 0;
			valueY.Add(0);
			for (int index = 1; index < deltaY.Count; index++)
			{
				float diff = deltaY[index - 1] - deltaY[index];
				int valu = (int)(diff * 256);
				valueY.Add(valu);
			}

			lines.Clear();
			lines.Add("static int jumps[] =");
			lines.Add("{");
			string text = String.Empty;
			for (int index = 1; index < valueY.Count; index++)
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
