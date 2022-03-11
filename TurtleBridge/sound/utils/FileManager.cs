using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace BinaryFileWrite
{
	public class FileManager
	{
		const int buffer = 16 * 1024;       // 16KB

		private IList<string> lines;
		private StringBuilder sb;

		public FileManager()
		{
			lines = new List<string>();
			sb = new StringBuilder();
		}

		public void Process(string fileName)
		{
			var path = $"input/{fileName}.psg";
			var file = File.Open(path, FileMode.Open);

			int start = 0;
			var outArray = new byte[buffer];
			using (BinaryReader b = new BinaryReader(file))
			{
				int length = (int)b.BaseStream.Length;
				int looper = length / buffer + 1;

				for (var loop = 0; loop < looper; loop++)
				{
					var outName = (loop+1).ToString().PadLeft(2, '0');
					var outCode = $"{fileName}_{outName}";
					var outBank = loop + 2;

					lines.Clear();
					var text = outCode; //"Riff__" + outName + "_wav_pcmenc";
					var line = "const unsigned char " + text + "[] = {";
					lines.Add(line);

					sb.Clear();

					int count = 0;
					int bytes = 0;

					b.BaseStream.Seek(start, SeekOrigin.Begin);
					while (start < length && count < buffer)
					{
						byte y = b.ReadByte();
						string s = Convert.ToString(y, 16).PadLeft(2, '0');
						string hex = $"0x{s},";
						sb.Append(hex);
						bytes++;
						if (16 == bytes)
						{
							line = sb.ToString();
							lines.Add(line);
							sb.Clear();
							bytes = 0;
						}

						outArray[count] = y;
						start++;
						count++;
					}

					if (bytes > 0)
					{
						line = sb.ToString();
						lines.Add(line);
						sb.Clear();
						bytes = 0;
					}
					lines.Add("};");

					// bankX.c
					var contents = lines.ToArray();
					File.WriteAllLines("output/bank" + outBank + ".c", contents);

					// bankX.h
					lines.Clear();
					line = "extern const unsigned char " + text + "[];";
					lines.Add(line);
					line = "#define\t\t\t\t" + text + "_size " + count;
					lines.Add(line);
					line = "#define\t\t\t\t" + text + "_bank " + outBank;
					lines.Add(line);
					contents = lines.ToArray();
					File.WriteAllLines("output/bank" + outBank + ".h", contents);

					// PSG file
					var outFile = $"output/{outCode}.psg";
					var fs = new FileStream(outFile, FileMode.Create, FileAccess.ReadWrite);
					BinaryWriter bw = new BinaryWriter(fs);
					bw.Write(outArray);
					bw.Close();
				}
			}
		}

		public void Setup(string fileName)
		{
			if (!Directory.Exists("output"))
			{
				Directory.CreateDirectory("output");
			}

		}

	}
}
