using System;
using System.Collections.Generic;
using System.IO;

namespace StorageManager
{
	public class FileManager
	{
		private const string inFile = "physics.txt";
		private const string otFile = "output.ssm";
		private IList<string> inpLines;
		private IList<string> outLines;

		public void Process(bool single)
		{
			byte lsb = 0;
			byte msb = 0;

			var file = File.Open(otFile, FileMode.Create);
			using (BinaryWriter bw = new BinaryWriter(file))
			{
				// MAGIC
				bw.Write((byte)0x04);
				bw.Write((byte)0xB0);
				bw.Write((byte)0xE0);
				bw.Write((byte)0xAC);

				// Num lines.
				Split((ushort)inpLines.Count, ref lsb, ref msb);
				bw.Write(lsb);
				bw.Write(msb);

				// Values.
				foreach (var inpLine in inpLines)
				{
					int valLine = Convert.ToInt32(inpLine);
					if (single)
					{
						bw.Write((byte)valLine);
					}
					else
					{
						Split((ushort)valLine, ref lsb, ref msb);
						bw.Write(lsb);
						bw.Write(msb);
					}
				}

				// Terminal
				bw.Write((byte)0xFE);
			}
		}

		private void Split(ushort input, ref byte lsb, ref byte msb)
		{
			msb = (byte)(input / 256);
			lsb = (byte)(input % 256);
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

		public void Init()
		{
			if (File.Exists(otFile))
			{
				File.Delete(otFile);
			}

			inpLines = new List<string>();
			outLines = new List<string>();
		}
	}
}
