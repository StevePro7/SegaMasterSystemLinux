using System;
using System.Collections.Generic;
using System.Configuration;

namespace BinaryFileWrite
{
	class Program
	{
		static void Main()
		{
			int tx = 4;
			int ty = 1;

			int px = tx * 8;
			int py = ty * 8;

			var imageManager = new ImageManager();
			imageManager.Init(px, py);

			for (int iy = 0; iy < ty; iy++)
			{
				for (int ix = 0; ix < tx; ix++)
				{
					//int index = (ty - 1) * iy + ix;
					int index = (iy * tx) + ix;
					imageManager.Process(index);
				}
			}

			//imageManager.Process(0);
			//imageManager.Process(1);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
