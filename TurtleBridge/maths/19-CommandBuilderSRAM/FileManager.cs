using System;
using System.IO;

namespace CommandBuilderSRAM
{
	public class FileManager
	{
		public void Init()
		{
			if (!Directory.Exists("output"))
			{
				Directory.CreateDirectory("output");
			}

			var files = Directory.GetFiles("output");
			foreach (var file in files)
			{
				File.Delete(file);
			}
		}

		public void Process(string path)
		{
			Bytes = File.ReadAllBytes("input/" + path);
		}

		public byte[] Bytes { get; private set; }
	}
}
