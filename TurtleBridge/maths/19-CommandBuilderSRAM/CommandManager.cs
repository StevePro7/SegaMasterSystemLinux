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

				Console.WriteLine(frame);
			}
		}

		public IList<string> Frames { get; private set; }
		public IList<string> Commands { get; private set; }
	}
}


