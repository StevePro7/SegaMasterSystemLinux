using System.Linq;
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

		public void Process(int screen)
		{
			output.Clear();
			var inpFile = File.ReadAllLines("input/file.csv");
			var outFile = screen.ToString().PadLeft(2, '0');
			var outFileA = outFile + "A.csv";
			var outFileB = outFile + "B.csv";
			File.WriteAllLines("output/" + outFileA, inpFile.ToArray());
			File.WriteAllLines("output/" + outFileB, inpFile.ToArray());
			//File.WriteAllLines(path, contents);
		}
	}
}
