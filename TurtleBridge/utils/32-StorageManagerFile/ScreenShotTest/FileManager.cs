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
				bw.Write((byte)0x04);
				bw.Write((byte)0xB0);
				bw.Write((byte)0xE0);
				bw.Write((byte)0xAC);

				// Num lines.
				bw.Write((byte)lsb);
				bw.Write((byte)msb);

				// Values.
				bw.Write((byte)0x12);
				bw.Write((byte)0x24);
				bw.Write((byte)240);

				bw.Write((byte)0xFE);
			}
		}

		public void LoadContent(ContentManager content)
		{
		}
	}
}
