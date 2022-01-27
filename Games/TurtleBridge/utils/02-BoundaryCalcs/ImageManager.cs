using System.Collections.Generic;
using System.IO;

namespace BinaryFileWrite
{
	public class ImageManager
	{
		int px;
		int py;
		int delta;
		int start;

		public void Process(int index)
		{
			int tx = px / 8;
			int ty = py / 8;

			delta = tx * 8;

			int base1 = index / tx;
			int base2 = base1 * tx;
			int bases = base2 * 64;

			int star1 = index % tx;
			int star2 = star1 * 8; 
			start = bases + star2;

			var msg = $"Index:{index} Start:{start} Delta:{delta}";
			System.Console.WriteLine(msg);
		}

		public void Init(int px, int py)
		{
			this.px = px;
			this.py = py;

			delta = 0;
			start = 0;
		}
	}
}
