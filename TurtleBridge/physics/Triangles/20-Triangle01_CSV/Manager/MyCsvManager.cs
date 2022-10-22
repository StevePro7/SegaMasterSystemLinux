using Microsoft.Xna.Framework;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace Test
{
	public class MyCsvManager
	{
		private Vector2 rocketPosition;
		private IList<Vector2> rocketPositionList;
		private float angle;
		private float radians;
		private float speed;
		private float veliX, veliY;
		private float timer;
		private float delta;
		private float posX2, posY2;
		private int frame;
		private const float gravity = -9.8f;
		//private const float gravity = -10.0f;

		public void Initialize()
		{
			rocketPositionList = new List<Vector2>();
			rocketPosition = Vector2.Zero;

			//for (angle = 0; angle <= 90; angle++)
			//{
			//	var rads1 = MathHelper.ToRadians(angle);
			//	var rads2 = MathHelper.ToRadians(90 - angle);
			//	var sin1 = Math.Sin(rads1);
			//	var cos2 = Math.Cos(rads2);
			//	var diff = (int)(sin1 - cos2);
			//	var msg = $"{sin1},{cos2},{diff}";
			//	if (diff != 0)
			//	{
			//		int x = 8;
			//	}
			//}
			angle = 55;// myConfigManger.Angle;
			radians = MathHelper.ToRadians(angle);
			speed = 65;// myConfigManger.Speed;
			var cos = Math.Cos(radians);
			var sin = Math.Sin(radians);
			veliX = (float)(speed * Math.Cos(radians));
			veliY = (float)(speed * Math.Sin(radians));
			posX2 = 0.0f;
			posY2 = 0.0f;
			timer = 0.0f;
			delta = 0.0f;
			frame = 0;
		}

		public void Process()
		{
			int wide = 100;
			int high = 400;
			rocketPosition = new Vector2(wide, high);
			rocketPositionList.Add(rocketPosition);

			delta = 20 / 1000f;
			timer = delta;
			float testx = veliX * delta;
			float testy = veliY * delta;
			
			var extra = 0.5 * gravity * timer * timer;
			var inter = testy + extra;
			posX2 += testx;
			posY2 += testy;

			while (true)
			{
				frame++;
				//delta = (float)gameTime.ElapsedGameTime.TotalMilliseconds / 1000f;
				
				timer += delta;
				float posX = veliX * timer;
				float posY = (float)(veliY * timer + 0.5 * gravity * timer * timer);

				int iPosX = (int)posX;
				int iPosY = (int)posY;
				if ((int)rocketPosition.X != iPosX && (int)rocketPosition.Y != iPosY)
				{
					rocketPosition = new Vector2(wide + iPosX, high - iPosY);
					if (rocketPosition.Y > high)
					{
						break;
					}

					//rocketPosition = new Vector2(wide + posX, high - posY);
					rocketPositionList.Add(rocketPosition);
				}
			}

			IList<string> lines = new List<string>();
			foreach (var pos in rocketPositionList)
			{
				var line = $"{pos.X},{pos.Y}";
				lines.Add(line);
			}

			File.WriteAllLines("stevepro4.csv", lines.ToArray());
			//rocketPosition = new Vector2(Wide + posX, High - posY);
		}
	}
}
