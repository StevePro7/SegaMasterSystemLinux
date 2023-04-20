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
		private List<PhysicsData> physicsDataList;
		private PhysicsData physicsData;

		private List<float> deltaY;
		private List<int> valueY;

		private const int MaxFrames = 512;
		private const int MaxJumpin = 512+32;
		private const int MinHeight = 0;
		private const int startHigh = 112;
		private const int finshHigh = 224;

		//private float[] angles = { 45,65 };
		//private float[] speeds = { 35,35 };

		public Output04()
		{
			physicsDataList = new List<PhysicsData>();
			deltaY = new List<float>();
			valueY = new List<int>();
			physicsDataList.Clear();
		}

		public void Process()
		{
			for (int myAngle = 5; myAngle < 90; myAngle += 5)
			{
				Angle = myAngle;
				for (int mySpeed = 5; mySpeed < 90; mySpeed += 5)
				{
					Speed = mySpeed;
					ProcessItem();
				}

				ProcessItem();
			}

			Print();
		}

		private void Print()
		{
			List<string> lines = new List<string>();
			lines.Add("Result,Angle,Speed,HangTime,HorzDist,MaxJumper,VertDist,MinHeight,MaxFrames,DeltaYData");

			var sortData = physicsDataList.OrderBy(x => x.MaxJumper).ThenBy(y => y.Angle).ThenBy(z => z.Speed).ToList();
			//var sortData = physicsDataList.OrderBy(x => x.MaxJumper).ToList();
			for (int idx = 0; idx < sortData.Count; idx++)
			{
				var data = sortData[idx];
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

		private void ProcessItem()
		{
			Initialize();

			float hangTime = HangTime();

			// v = d / t OR d = vt
			float horzDist = InitVelX * hangTime;
			int myHorzDist = Convert.ToInt32(horzDist);
			int myMaxJumper = myHorzDist / 32;
			if (myMaxJumper < 2 || myHorzDist > MaxJumpin)
			{
				return;
			}

			hangTime = HangTime();
			float halfTime = hangTime / 2;

			// d = vi * t + 1/2 * a * t^2
			float vertDist = InitVelY * halfTime + 0.5f * Gravity * halfTime * halfTime;
			int myVertDist = Convert.ToInt32(vertDist);

			int minHeight = startHigh - physicsData.VertDist;
			if (minHeight < MinHeight)
			{
				return;
			}

			deltaY.Clear();
			valueY.Clear();
			physicsData = new PhysicsData();
			physicsData.DeltaYList = new List<int>();
			physicsData.DeltaYList.Clear();

			physicsData.Angle = Angle;
			physicsData.Speed = Speed;
			physicsData.HangTime = hangTime;

			// v = d / t OR d = vt
			physicsData.HorzDist = myHorzDist;
			physicsData.MaxJumper = myMaxJumper;

			// d = vi * t + 1/2 * a * t^2
			physicsData.VertDist = myVertDist;
			physicsData.MinHeight = minHeight;

			// Iterate all points to check validity...
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
				physicsDataList.Add(physicsData);
			}
			else
			{
				physicsData.DeltaYData = Math.Round(diff, 2).ToString();
			}

			//physicsDataList.Add(physicsData);
		}

	}
}
