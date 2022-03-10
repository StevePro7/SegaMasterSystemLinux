using System;
using System.Collections.Generic;
using System.IO;

namespace BinaryFileWrite
{
	public class FileManager
	{
		const int buffer = 16 * 1024;		// 16KB

		public FileManager()
		{
			ByteObjectList = new List<ByteObject>();
		}

		public void Process(string fileName)
		{
			var path = $"input/{fileName}";
			var file = File.Open(path, FileMode.Open);

			int start = 0;
			var outArray = new byte[buffer];
			using (BinaryReader b = new BinaryReader(file))
			{
				int length = (int)b.BaseStream.Length;
				int looper = length / buffer + 1;

				for (var loop = 0; loop < looper; loop++)
				{
					int count = 0;
					for (int idx = 0; idx < buffer; idx++)
					{
						outArray[idx] = 0;
					}

					b.BaseStream.Seek(start, SeekOrigin.Begin);
					while (start < length && count < buffer)
					{
						byte y = b.ReadByte();
						outArray[count] = y;
						start++;
						//count++;
					}

					var outName = loop.ToString().PadLeft(2, '0');
					var outFile = $"output/{outName}.dat";
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

			//var name = fileName.Replace(".", "_");
			//var path = $"output/{name}";
			//if (!Directory.Exists(path))
			//{
			//	Directory.CreateDirectory(path);
			//}
		}

		public IList<ByteObject> ByteObjectList { get; private set; }
	}
}
