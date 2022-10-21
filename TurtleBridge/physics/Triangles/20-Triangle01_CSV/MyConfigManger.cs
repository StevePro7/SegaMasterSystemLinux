using System;
using System.Configuration;

namespace Test
{
	public class MyConfigManger
	{
		public void Initialize()
		{
			Wide = Convert.ToInt32(ConfigurationManager.AppSettings["Wide"]);
			High = Convert.ToInt32(ConfigurationManager.AppSettings["High"]);
			Angle = Convert.ToSingle(ConfigurationManager.AppSettings["Angle"]);
			Speed = Convert.ToSingle(ConfigurationManager.AppSettings["Speed"]);
		}

		public int Wide { get; private set; }
		public int High { get; private set; }
		public float Angle { get; private set; }
		public float Speed { get; private set; }
	}
}
