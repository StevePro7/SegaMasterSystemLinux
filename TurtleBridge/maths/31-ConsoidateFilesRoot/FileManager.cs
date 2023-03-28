using System;
using System.Collections.Generic;
using System.IO;

namespace ConsoidateFiles
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

		public void Process(string directory)
		{
			output.Clear();
			output.Add("const unsigned char " + directory + "_txt[] =");
			output.Add("{");

			var searchPattern = directory + "*.c";
			var files = Directory.GetFiles("input/", searchPattern);
			foreach (var file in files)
			{
				var lines = File.ReadAllLines(file);
				foreach (var line in lines)
				{
					if (line.StartsWith("const") || line.StartsWith("{") || line.StartsWith("}"))
					{
						continue;
					}

					output.Add(line);
				}
			}

			output.Add("};");

			var contents = output.ToArray();
			var path = String.Format("output/{0}_NEW.c", directory);
			File.WriteAllLines(path, contents);
		}
	}
}
