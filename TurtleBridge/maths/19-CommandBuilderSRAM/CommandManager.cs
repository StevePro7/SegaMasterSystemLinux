﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace CommandBuilderSRAM
{
	public class CommandManager
	{
		const int MaxCommands = 32;

		public CommandManager()
		{
			Lines1 = new List<string>();
			Lines2 = new List<string>();
			LinesX = new List<string>();
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
				if (16 == count)
				{
					Lines1.Add(line1);
					Lines2.Add(line2);
					line1 = String.Empty;
					line2 = String.Empty;
					count = 0;
				}
			}

			if (0 != line1.Length)
			{
				Lines1.Add(line1);
				Lines2.Add(line2);
			}
		}

		public void Save()
		{
			LinesX.Add("#include \"command_object.h\"");
			LinesX.Add("");

			LinesX.Add("unsigned int command_frame_index[] =");
			LinesX.Add("{");
			for (int index = 0; index < Lines1.Count; index++)
			{
				var line1 = Lines1[index];
				LinesX.Add("\t" + line1);
			}
			LinesX.Add("};");
			LinesX.Add("");

			LinesX.Add("unsigned int command_this_command[] =");
			LinesX.Add("{");
			for (int index = 0; index < Lines1.Count; index++)
			{
				var line2 = Lines2[index];
				LinesX.Add("\t" + line2);
			}
			LinesX.Add("};");

			var contents = LinesX.ToArray();
			File.WriteAllLines("output/command_object.c", contents);
		}

		public List<string> Lines1 { get; private set; }
		public List<string> Lines2 { get; private set; }
		public List<string> LinesX { get; private set; }
		public List<string> Frames { get; private set; }
		public List<string> Commands { get; private set; }
	}
}

