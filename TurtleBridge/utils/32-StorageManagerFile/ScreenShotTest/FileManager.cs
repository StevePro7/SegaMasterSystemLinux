using Microsoft.Xna.Framework.Content;
using System.IO;

namespace ScreenShotTest
{
	public class FileManager
	{
		public void Initialize()
		{
			var name = "output.ssm";
			var file = File.Open(name, FileMode.Create);

			var numLines = 400;
			var msb = numLines / 256;
			var lsb = numLines % 256; 

			using (BinaryWriter bw = new BinaryWriter(file))
			{
				// MAGIC
				bw.Write(0x04);
				bw.Write(0xB0);
				bw.Write(0xE0);
				bw.Write(0xAC);

				// Num lines.
				bw.Write(lsb);
				bw.Write(msb);

				// Values.
				bw.Write(0x12);
				bw.Write(0x24);
				bw.Write(0x48);

				bw.Write(0xFE);
			}
		}

		public void LoadContent(ContentManager content)
		{
		}
	}
}
