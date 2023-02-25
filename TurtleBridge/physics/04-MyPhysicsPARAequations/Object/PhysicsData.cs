using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test
{
	public struct PhysicsData
	{
		public float Angle { get; set; }
		public float Speed { get; set; }
		public float HangTime { get; set; }
		public float HorzDist { get; set; }
		public float VertDist { get; set; }

		public List<int> DeltaYList { get; set; }
	}
}
