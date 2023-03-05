using System;
using System.Collections.Generic;
using System.IO;

namespace CommandBuilderSRAM
{
	public class CommandManager
	{
		const int MaxCommands = 32;

		public CommandManager()
		{
			Lines1 = new List<string>();
			Lines2 = new List<string>();
			Frames = new List<string>();
			Commands = new List<string>();
		}
		public void Process(byte[] bytes)
		{
			int start = 16;
			int count = MaxCommands * 2;
			for (int index = start; index < start + count; index+=2)
			{
				var byte1 = bytes[index + 0];
				var byte2 = bytes[index + 1];

				var frame = String.Format("0x{0}{1}",
					byte2.ToString("X").PadLeft(2, '0'),
					byte1.ToString("X").PadLeft(2, '0')
					);
				Frames.Add(frame);
			}

			start = start + count;
			for (int index = start; index < start + MaxCommands; index++)
			{
				var byte1 = bytes[index];
				var command = String.Format("0x{0}", byte1.ToString("X").PadLeft(2, '0'));
				Commands.Add(command);
			}

			count = 0;
			string line1 = String.Empty;
			string line2 = String.Empty;
			for (int index = 0; index < MaxCommands; index++)
			{
				line1 += Frames[index] + ",";
				line2 += Commands[index] + ",";
				count++;
				if (3 == count)
				{
					Lines1.Add(line1);
					Lines2.Add(line2);
					line1 = String.Empty;
					line2 = String.Empty;
					count = 0;
				}
			}

			Console.WriteLine(line1);
		}

		public IList<string> Lines1 { get; private set; }
		public IList<string> Lines2 { get; private set; }
		public IList<string> Frames { get; private set; }
		public IList<string> Commands { get; private set; }
	}
}


