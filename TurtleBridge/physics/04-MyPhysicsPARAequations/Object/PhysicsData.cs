using System.Collections.Generic;

namespace Test
{
	public struct PhysicsData
	{
		public float Angle { get; set; }
		public float Speed { get; set; }
		public float HangTime { get; set; }
		public int HorzDist { get; set; }
		public int VertDist { get; set; }
		public int MinHeight { get; set; }
		public int MaxJumper { get; set; }
		public int MaxFrames { get; set; }
		public string DeltaYData { get; set; }
		public List<int> DeltaYList { get; set; }
		public bool Result { get; set; }
	}
}
