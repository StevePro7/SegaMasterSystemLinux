using System;
using System.Configuration;

namespace _01_Test
{
	public class MyConfigManger
	{
		public void Initialize()
		{
			Angle = Convert.ToSingle(ConfigurationManager.AppSettings["Angle"]);
			Angle = 90 - Angle;
			Power = Convert.ToSingle(ConfigurationManager.AppSettings["Power"]);

			Logger.Info("Angle = " + Angle);
			Logger.Info("Power = " + Power);
		}

		public float Angle { get; private set; }
		public float Power { get; private set; }
	}
}
