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

		public void Process()
		{
			var files = ContentManager.Files;
			output.Clear();
			var lines = File.ReadAllLines("input/file.txt");
			//var line = lines[0];
			foreach (var line in lines)
			{
				var data = files[line];
				output.AddRange(data);
			}

			var contents = output.ToArray();
			File.WriteAllLines("output/temp.csv", contents);
		}
	}
}
