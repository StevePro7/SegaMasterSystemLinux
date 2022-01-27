using System;
using System.Collections.Generic;
using System.Configuration;

namespace BinaryFileWrite
{
	class Program
	{
		static void Main()
		{
			int tx = 2;
			int ty = 1;

			int px = tx * 8;
			int py = ty * 8;

			var imageManager = new ImageManager();
			imageManager.Init(px, py);

			//int index = 0;
			imageManager.Process(0);
			imageManager.Process(1);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
