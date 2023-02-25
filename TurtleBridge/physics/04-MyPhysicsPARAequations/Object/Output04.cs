using System;
using System.Collections.Generic;
using System.IO;

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

		private const int MaxFrames = 200;
		private float[] angles = { 45,65 };
		private float[] speeds = { 35,35 };

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

			int index = 0;
			ProcessItem(index);

			Print();
		}

		private void Print()
		{
			List<string> lines = new List<string>();
			lines.Add("Result,Angle,Speed,HangTime,HorzDist,MaxJumper,VertDist,MinHeight,MaxFrames,DeltaYData");

			for (int idx = 0; idx < physicsDataList.Count; idx++)
			{
				var data = physicsDataList[idx];
				var line = String.Format("{0},{1},{2},{3},{4},{5},{6},{7},{8},{9}",
					data.Result.ToString().ToUpper(),
					data.Angle,
					data.Speed,
					Math.Round(data.HangTime, 2),
					data.HorzDist,
					data.MaxJumper,
					data.VertDist,
					data.MinHeight,
					data.MaxFrames,
					data.DeltaYData);
				lines.Add(line);
			}

			var contents = lines.ToArray();
			File.WriteAllLines("Output04.csv", contents);
		}

		private void ProcessItem(int index )
		{
			const int startHigh = 112;
			const int finshHigh = 224;

			Angle = angles[index];
			Speed = speeds[index];
			Initialize();

			deltaY.Clear();
			valueY.Clear();
			physicsData = new PhysicsData();
			physicsData.DeltaYList = new List<int>();
			physicsData.DeltaYList.Clear();

			physicsData.Angle = Angle;
			physicsData.Speed = Speed;

			float hangTime = HangTime();
			physicsData.HangTime = hangTime;

			// v = d / t OR d = vt
			float horzDist = InitVelX * hangTime;
			physicsData.HorzDist = Convert.ToInt32(horzDist);
			physicsData.MaxJumper = physicsData.HorzDist / 32;

			float halfTime = hangTime / 2;
			// d = vi * t + 1/2 * a * t^2
			float vertDist = InitVelY * halfTime + 0.5f * Gravity * halfTime * halfTime;
			physicsData.VertDist = Convert.ToInt32(vertDist);
			physicsData.MinHeight = startHigh - physicsData.VertDist;

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
			physicsData.Result = ok;
			if (ok)
			{
				for (int idx = 2; idx < valueY.Count; idx++)
				{
					physicsData.DeltaYList.Add(valueY[idx]);
				}

				physicsData.DeltaYData = String.Join("|", physicsData.DeltaYList);
			}
			else
			{
				physicsData.DeltaYData = Math.Round(diff, 2).ToString();
			}

			physicsDataList.Add(physicsData);
		}

	}
}
