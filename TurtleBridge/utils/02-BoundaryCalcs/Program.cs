using System;
using System.Collections.Generic;
using System.Configuration;

namespace BinaryFileWrite
{
	class Program
	{
		static void Main()
		{
			int tx = 16;
			int ty = 4;

			int px = tx * 8;
			int py = ty * 8;

			var imageManager = new ImageManager();
			imageManager.Init(px, py);

			for (int iy = 0; iy < ty; iy++)
			{
				for (int ix = 0; ix < tx; ix++)
				{
					int index = (iy * tx) + ix;
					imageManager.Process(index);
				}
			}

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
