using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace LevelScreen
{
	public class FileManager
	{
		private ConfigManager configManager;

		public FileManager(ConfigManager configManager)
		{
			this.configManager = configManager;
		}

		public void Initialize()
		{
			int index = 0;
			int gridX = configManager.GridsXWide;

			PlaneA = new byte[gridX];
			PlaneB = new byte[gridX];

			var file = "PlaneA.csv";
			var lines = File.ReadAllLines(file);
			foreach (var line in lines)
			{
				var text = line;
				if (line.EndsWith(","))
				{
					text = line.Substring(0, line.Length - 1);
					var datas = text.Split(new char[] { ',' });
					foreach(var data in datas)
					{
						// https://theburningmonk.com/2010/02/converting-hex-to-int-in-csharp/
						PlaneA[index] = Convert.ToByte(data, 16);
						index++;
					}
				}
			}
		}


		public byte[] PlaneA { get; private set; }
		public byte[] PlaneB { get; private set; }
	}
}
