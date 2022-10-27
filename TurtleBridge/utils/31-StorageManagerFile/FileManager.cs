using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace StorageManager
{
	public class FileManager
	{
		private const string inFile = "physics.txt";
		private const string oFile1 = "output.ssm";
		private const string oFile2 = "output.sav";
		private const string dataFh = "data.h";
		private const string dataFc = "data.c";
		private IList<string> inpLines;
		private IList<string> outLines;
		private IList<string> txtLines;

		public void Process2(bool single)
		{
			byte lsb = 0;
			byte msb = 0;

			outLines.Clear();
			string outLine = String.Empty;
			string hexLine = String.Empty;
			int count = inpLines.Count;
			int value = 0;
			for (int index = 0; index < count; index++)
			{
				string inpLine = inpLines[index];
				int valLine = Convert.ToInt32(inpLine);
				if (single)
				{
					hexLine += "0x" + valLine.ToString("X2");
					hexLine += ",";
					value++;
				}
				else
				{
					Split((ushort)valLine, ref lsb, ref msb);
					hexLine += "0x" + lsb.ToString("X2");
					hexLine += ",";
					value++;
					hexLine += "0x" + msb.ToString("X2");
					hexLine += ",";
					value++;
				}

				if (value == 16)
				{
					//hexLine = hexLine.Substring(0, hexLine.Length - 1);
					outLines.Add(hexLine);
					hexLine = String.Empty;
					value = 0;
				}
			}

			//hexLine = hexLine.Substring(0, hexLine.Length - 1);
			outLines.Add(hexLine);
			value = 0;

			txtLines.Clear();
			txtLines.Add("extern const unsigned char	data_val[];");
			txtLines.Add("#define				data_val_size " + count);
			File.WriteAllLines("data.h", txtLines.ToArray());

			txtLines.Clear();
			txtLines.Add("const unsigned char	data_val[] =");
			txtLines.Add("{");
			foreach (var txtLine in outLines)
			{
				txtLines.Add("\t" + txtLine);
			}
			txtLines.Add("};");
			File.WriteAllLines("data.c", txtLines.ToArray());
		}

		public void Process1(bool single)
		{
			byte lsb = 0;
			byte msb = 0;

			var file = File.Open(oFile1, FileMode.Create);
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

			File.Copy(oFile1, oFile2);
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
			if (File.Exists(oFile1))
			{
				File.Delete(oFile1);
			}
			if (File.Exists(oFile2))
			{
				File.Delete(oFile2);
			}
			inpLines = new List<string>();
			outLines = new List<string>();
			txtLines = new List<string>();
		}
	}
}
