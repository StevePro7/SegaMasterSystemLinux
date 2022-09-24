using System;

namespace ScreenShotTest
{
	public class ConfigurationManager
	{
		public void Initialize()
		{
			Files = new string[]
			{
				//"skate01",
				//"skate02",
				"skate03",
			};
		}

		public string[] Files { get; private set; }
	}
}
