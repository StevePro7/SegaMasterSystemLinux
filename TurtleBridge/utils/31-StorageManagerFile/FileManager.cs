using System.Collections.Generic;
using System.IO;

namespace StorageManager
{
	public class FileManager
	{
		private const string inFile = "physics.txt";
		private const string OUTPUT = "output";
		private IList<string> inpLines;
		private IList<string> outLines;

		public void Process(bool single)
		{
		}

		public void Load()
		{
			inpLines.Clear();
			var tmpLines = File.ReadAllLines(inFile);
			foreach(var tmpLine in tmpLines)
			{
				var newLine = tmpLine.Trim();
				if (newLine.Length == 0 || newLine == "0")
				{
					continue;
				}

				inpLines.Add(newLine);
			}
		}

		
		//	File.WriteAllLines(file, content);
		//}

		public void Init()
		{
			if (!Directory.Exists(OUTPUT))
			{
				Directory.CreateDirectory(OUTPUT);
			}

			inpLines = new List<string>();
			outLines = new List<string>();
		}
	}
}
