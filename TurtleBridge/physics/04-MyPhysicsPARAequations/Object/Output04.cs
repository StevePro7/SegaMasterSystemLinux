using System;
using System.Collections.Generic;

namespace Test
{
	// https://www.youtube.com/watch?v=rNvaEnZT0u4&t=15s
	// Practice Problem: The Motorcycle Daredevil
	public class Output04 : Output, IOutput
	{
		private List<PhysicsData> physicsDataList;
		private PhysicsData physicsData;

		private List<float> deltaY;
		private List<int> valueY;

		private const int MaxFrames = 47;
		private float[] angles = { 65 };
		private float[] speeds = { 35 };

		public Output04()
		{
			physicsDataList = new List<PhysicsData>();
			deltaY = new List<float>();
			valueY = new List<int>();
			physicsDataList.Clear();
		}

		public void Process()
		{
			//Angle = 25;
			//Speed = 80;

			const int startHigh = 112;
			const int finshHigh = 224;

			int index = 0;

			Angle = angles[index];
			Speed = speeds[index];
			Initialize();

			deltaY.Clear();
			valueY.Clear();
			physicsData = new PhysicsData();
			physicsData.Angle = Angle;
			physicsData.Speed = Speed;

			float hangTime = HangTime();
			physicsData.HangTime = hangTime;

			// v = d / t OR d = vt
			float horzDist = InitVelX * hangTime;
			physicsData.HorzDist = horzDist;

			float halfTime = hangTime / 2;
			// d = vi * t + 1/2 * a * t^2
			float vertDist = InitVelY * halfTime + 0.5f * Gravity * halfTime * halfTime;
			physicsData.VertDist = vertDist;

			const int deltaX = 3;
			float moveX = InitVelX / deltaX;
			float deltaTime = 1 / moveX;

			float dt = 0.0f;
			int frame = 0;
			float vd = 0;
			deltaY.Add(vd);
			for (frame = 1; frame < MaxFrames; frame++)
			{
				vd = InitVelY * dt + 0.5f * Gravity * dt * dt;
				deltaY.Add(vd);
				dt += deltaTime;
			}

			int posnY = startHigh;
			float diff = 0.0f;
			float valu = 0.0f;
			int test = 0;
			int blah = 0;
			bool ok = true;
			valueY.Add(0);
			for (frame = 1; frame < MaxFrames; frame++)
			{
				diff = deltaY[frame - 1] - deltaY[frame];
				blah = Convert.ToInt32(diff);

				valu = diff * 256;
				test = Convert.ToInt32(valu);
				valueY.Add(test);

				posnY += blah;
				if (posnY >= finshHigh)
				{
					break;
				}
				if (diff >= 8)
				{
					ok = false;
					break;
				}
			}

			physicsData.MaxFrames = frame;
			if (ok)
			{
				physicsData.DeltaYData = String.Join("|", valueY);
			}

			physicsDataList.Add(physicsData);
		}

	
	}
}
