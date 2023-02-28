using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace AudioDump
{
	public class AudioManager
	{
		private const int SIXTEEN = 16 * 1024;

		public AudioManager()
		{
			Lines = new List<string>();
		}

		public void Calculate(List<FileObject> fileObjs)
		{
			var fileWips = new List<FileObject>();
			int count = fileObjs.Count;
			int index = 0;
			for (int outer = 0; outer < count; outer++)
			{
				fileWips.Clear();
				var objOuter = fileObjs[outer];
				fileWips.Add(objOuter);
				int maxim = objOuter.Size;
				for (int inner = 0; inner < count; inner++)
				{
					if (inner == outer)
					{
						continue;
					}

					var objInner = fileObjs[inner];
					int value = maxim + objInner.Size;
					if (value < SIXTEEN)
					{
						if (value > maxim)
						{
							fileWips.Add(objInner);
							maxim = value;
						}
					}
				}

				// Chance for banking...
				if (fileWips.Count() > 1)
				{
					index++;
					Lines.Add(index.ToString().PadLeft(2, '0') + "," + objOuter.Name);
					foreach (var obj in fileWips)
					{
						string line = String.Format("{0},{1},{2},{3}",
						obj.Proj,
						obj.Bank,
						obj.Name,
						obj.Size);
						Lines.Add(line);
					}
					Lines.Add("TOTAL," + maxim);
					Lines.Add("");
				}
			}

			var fileName = "audioTotals.csv";
			var contents = Lines.ToArray();
			File.WriteAllLines(fileName, contents);
		}

		public List<string> Lines { get; private set; }
	}
}
