using System;

namespace Test
{
	public class MyFrameManager
	{
		public void Initialize()
		{
			FrameCounter = 0;
		}

		public void Update()
		{
			FrameCounter++;
		}

		public UInt32 FrameCounter { get; private set; }
	}
}
