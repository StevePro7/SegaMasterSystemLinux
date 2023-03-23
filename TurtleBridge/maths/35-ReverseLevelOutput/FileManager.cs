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
			var lines = File.ReadAllLines("input/input.txt");
			foreach (var line in lines)
			{
				var text = line;
				stack.Push(text);
			}

			output.AddRange(lines);
			output.Add("// --split--");
			for (int idx = 0; idx <  stack.Count; idx++)
			{
				var line = stack.Pop();
				output.Add(line);
			}

			var path = "output/output.csv";
			File.WriteAllLines(path, output.ToArray());
		}

	}
}
