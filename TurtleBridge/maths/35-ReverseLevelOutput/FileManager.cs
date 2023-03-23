using System;
using System.Collections.Generic;
using System.IO;

namespace ExtractCheckpoints
{
	public class FileManager
	{
		private List<string> output;
		private Stack<string> stack;

		public FileManager()
		{
			output = new List<string>();
			stack = new Stack<string>();
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
			output.Clear();
			var lines = File.ReadAllLines("input/input.txt");
			foreach (var line in lines)
			{
				//var text = line;
				var text = ConvertManager.ConvertIn(line);
				stack.Push(text);
				output.Add(text);
			}

		//	output.AddRange(lines);
			output.Add("// --split--");
			var count = stack.Count;
			for (int idx = 0; idx <  count; idx++)
			{
				var line = stack.Pop();
				//var text = line;
				var text = ConvertManager.ConvertOt(line);
				output.Add(text);
			}

			var path = "output/output.csv";
			File.WriteAllLines(path, output.ToArray());
		}

	}
}
