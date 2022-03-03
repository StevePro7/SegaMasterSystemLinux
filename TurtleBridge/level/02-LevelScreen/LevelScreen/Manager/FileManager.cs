using System;
using System.IO;

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
			int gridX = configManager.GridsXWide;

			PlaneA = new byte[gridX];
			PlaneB = new byte[gridX];

			InitPlane(gridX, "PlaneA.csv", PlaneA);
			InitPlane(gridX, "PlaneB.csv", PlaneB);
		}

		private void InitPlane(int gridX, string file, byte[] input)
		{
			int index = 0;
			var lines = File.ReadAllLines(file);
			foreach (var line in lines)
			{
				var text = line;
				if (line.EndsWith(","))
				{
					text = line.Substring(0, line.Length - 1);
					var datas = text.Split(new char[] { ',' });
					foreach (var data in datas)
					{
						// https://theburningmonk.com/2010/02/converting-hex-to-int-in-csharp
						input[index] = Convert.ToByte(data, 16);
						index++;
					}
				}
			}

			if (index != gridX)
			{
				var msg = $"File: {file} Expect:{gridX} Actual:{index}";
				throw new Exception(msg);
			}
		}

		public byte[] PlaneA { get; private set; }
		public byte[] PlaneB { get; private set; }
	}
}
