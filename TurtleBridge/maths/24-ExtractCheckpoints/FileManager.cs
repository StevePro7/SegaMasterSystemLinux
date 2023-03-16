using System;
using System.Collections.Generic;
using System.IO;

namespace ExtractCheckpoints
{
	public class FileManager
	{
		private List<string> output;

		public FileManager()
		{
			output = new List<string>();
		}

		public void Initialize()
		{
			if (!Directory.Exists("output"))
			{
				Directory.CreateDirectory("output");
			}
		}

		public void Process(string inpName)
		{
			var lines = File.ReadAllLines("input/" + inpName + ".csv");
			var idx = 0;

			string outName = String.Empty;
			var cnt = lines.Length;
			while (idx < cnt)
			{
				var line = lines[idx];
				if (line.StartsWith("//"))
				{
					outName = line.Substring(3, 11);
					output.Clear();
					output.Add(line);
				}
				else if (0 == line.Length)
				{
					var contents = output.ToArray();
					var path = "output/" + outName + ".csv";
					File.WriteAllLines(path, contents);
				}
				else
				{
					output.Add(line);
				}
				idx++;
			}

			if (output.Count > 0)
			{
				var contents = output.ToArray();
				var path = "output/" + outName + ".csv";
				File.WriteAllLines(path, contents);
			}
		}
	}
}
