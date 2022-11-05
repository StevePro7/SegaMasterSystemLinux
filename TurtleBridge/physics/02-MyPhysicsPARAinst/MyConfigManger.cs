using System;
using System.Configuration;

namespace _02_Test
{
	public class MyConfigManger
	{
		public void Initialize()
		{
			Angle = Convert.ToSingle(ConfigurationManager.AppSettings["Angle"]);
			//Angle = 90 - Angle;
			Speed = Convert.ToSingle(ConfigurationManager.AppSettings["Speed"]);

			
		}

		public float Angle { get; private set; }
		public float Speed { get; private set; }
	}
}
