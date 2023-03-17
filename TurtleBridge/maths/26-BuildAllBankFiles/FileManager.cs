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

		public void Process(int world)
		{
			int bank = world + 6;
			string dirX = world.ToString().PadLeft(2, '0');

			// Process header files.
			output.Clear();
			var path = String.Format("input/{0}/", dirX);
			var filesH = Directory.GetFiles(path, "*.h");
			foreach (var fileH in filesH)
			{
				var file = File.ReadAllLines(fileH);
				output.AddRange(file);
				output.Add("");
			}

			var nameH = String.Format("bank{0}.h", bank);
			var contentH = output.ToArray();
			File.WriteAllLines("output/" + nameH, contentH);

			// Process implementation files.
			output.Clear();
			var filesC = Directory.GetFiles(path, "*.c");
			foreach (var fileC in filesC)
			{
				var file = File.ReadAllLines(fileC);
				output.AddRange(file);
				output.Add("");
			}

			var nameC = String.Format("bank{0}.c", bank);
			var contentC = output.ToArray();
			File.WriteAllLines("output/" + nameC, contentC);
		}
	}
}
