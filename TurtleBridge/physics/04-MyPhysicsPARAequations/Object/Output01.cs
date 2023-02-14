using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test
{
	// https://www.youtube.com/watch?v=aY8z2qO44WA
	// Kinematics Part 3: Projectile Motion
	public class Output01 : Output, IOutput
	{
		public Output01()
		{
			Angle = 30;
			Speed = 8.5f;
		}

		public void Process()
		{
			//float a = -4.9f;
			//float b = 4.25f;
			//float c = 100.0f;

			//QuadraticB(a, b, c);
		}
	}
}
