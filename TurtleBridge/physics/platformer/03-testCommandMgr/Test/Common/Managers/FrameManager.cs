using System;

namespace WindowsGame.Common
{
	public interface IFrameManager
	{
		void Initialize();
		void Update();
		UInt32 FrameCounter { get; }
	}

	public class FrameManager : IFrameManager
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
