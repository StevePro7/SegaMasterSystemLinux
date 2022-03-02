using System.Collections.Generic;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace LevelScreen
{
	public class AssetManager
	{
		public void Initialize()
		{
			Assets = new Dictionary<byte, Texture2D>();
		}

		public void LoadContent(ContentManager content)
		{
			Assets.Clear();

			// WaveEquator
			Assets[(byte)AssetType.WaveEquator | 0x00] = content.Load<Texture2D>("WaveEquator/WS-00");
			Assets[(byte)AssetType.WaveEquator | 0x01] = content.Load<Texture2D>("WaveEquator/WS-01");
			Assets[(byte)AssetType.WaveEquator | 0x02] = content.Load<Texture2D>("WaveEquator/WS-02");
			Assets[(byte)AssetType.WaveEquator | 0x03] = content.Load<Texture2D>("WaveEquator/WS-03");

			// LargeGround
			Assets[(byte)AssetType.LargeGround | 0x00] = content.Load<Texture2D>("LargeGround/GL-00");
			Assets[(byte)AssetType.LargeGround | 0x01] = content.Load<Texture2D>("LargeGround/GL-01");
			Assets[(byte)AssetType.LargeGround | 0x02] = content.Load<Texture2D>("LargeGround/GL-02");
			Assets[(byte)AssetType.LargeGround | 0x03] = content.Load<Texture2D>("LargeGround/GL-03");
			Assets[(byte)AssetType.LargeGround | 0x04] = content.Load<Texture2D>("LargeGround/GL-04");
			Assets[(byte)AssetType.LargeGround | 0x05] = content.Load<Texture2D>("LargeGround/GL-05");
			Assets[(byte)AssetType.LargeGround | 0x06] = content.Load<Texture2D>("LargeGround/GL-06");
			Assets[(byte)AssetType.LargeGround | 0x07] = content.Load<Texture2D>("LargeGround/GL-07");
			Assets[(byte)AssetType.LargeGround | 0x08] = content.Load<Texture2D>("LargeGround/GL-08");
			Assets[(byte)AssetType.LargeGround | 0x09] = content.Load<Texture2D>("LargeGround/GL-09");
			Assets[(byte)AssetType.LargeGround | 0x0A] = content.Load<Texture2D>("LargeGround/GL-10");
			Assets[(byte)AssetType.LargeGround | 0x0B] = content.Load<Texture2D>("LargeGround/GL-11");

			// SmallGround
			Assets[(byte)AssetType.SmallGround | 0x00] = content.Load<Texture2D>("SmallGround/GS-00");
			Assets[(byte)AssetType.SmallGround | 0x01] = content.Load<Texture2D>("SmallGround/GS-01");
			Assets[(byte)AssetType.SmallGround | 0x02] = content.Load<Texture2D>("SmallGround/GS-02");
			Assets[(byte)AssetType.SmallGround | 0x03] = content.Load<Texture2D>("SmallGround/GS-03");
			Assets[(byte)AssetType.SmallGround | 0x04] = content.Load<Texture2D>("SmallGround/GS-04");
			Assets[(byte)AssetType.SmallGround | 0x05] = content.Load<Texture2D>("SmallGround/GS-05");
			Assets[(byte)AssetType.SmallGround | 0x06] = content.Load<Texture2D>("SmallGround/GS-06");
			Assets[(byte)AssetType.SmallGround | 0x07] = content.Load<Texture2D>("SmallGround/GS-07");
			Assets[(byte)AssetType.SmallGround | 0x08] = content.Load<Texture2D>("SmallGround/GS-08");
			Assets[(byte)AssetType.SmallGround | 0x09] = content.Load<Texture2D>("SmallGround/GS-09");
			Assets[(byte)AssetType.SmallGround | 0x0A] = content.Load<Texture2D>("SmallGround/GS-10");
			Assets[(byte)AssetType.SmallGround | 0x0B] = content.Load<Texture2D>("SmallGround/GS-11");

			// EarthGround
			Assets[(byte)AssetType.EarthGround | 0x00] = content.Load<Texture2D>("EarthGround/ET-00");
			Assets[(byte)AssetType.EarthGround | 0x01] = content.Load<Texture2D>("EarthGround/ET-01");
			Assets[(byte)AssetType.EarthGround | 0x02] = content.Load<Texture2D>("EarthGround/ET-02");
			Assets[(byte)AssetType.EarthGround | 0x03] = content.Load<Texture2D>("EarthGround/ET-03");
			Assets[(byte)AssetType.EarthGround | 0x04] = content.Load<Texture2D>("EarthGround/ET-04");
			Assets[(byte)AssetType.EarthGround | 0x05] = content.Load<Texture2D>("EarthGround/ET-05");
			Assets[(byte)AssetType.EarthGround | 0x06] = content.Load<Texture2D>("EarthGround/ET-06");
			Assets[(byte)AssetType.EarthGround | 0x07] = content.Load<Texture2D>("EarthGround/ET-07");

			// DiverTurtle
			Assets[(byte)AssetType.DiverTurtle | 0x00] = content.Load<Texture2D>("DiverTurtle/STA1-00");
			Assets[(byte)AssetType.DiverTurtle | 0x01] = content.Load<Texture2D>("DiverTurtle/STA1-01");
			Assets[(byte)AssetType.DiverTurtle | 0x02] = content.Load<Texture2D>("DiverTurtle/STA1-02");
			Assets[(byte)AssetType.DiverTurtle | 0x03] = content.Load<Texture2D>("DiverTurtle/STA1-03");
			//Assets[(byte)AssetType.DiverTurtle | 0x04] = content.Load<Texture2D>("DiverTurtle/STA2-00");
			//Assets[(byte)AssetType.DiverTurtle | 0x05] = content.Load<Texture2D>("DiverTurtle/STA2-01");
			//Assets[(byte)AssetType.DiverTurtle | 0x06] = content.Load<Texture2D>("DiverTurtle/STA2-02");
			//Assets[(byte)AssetType.DiverTurtle | 0x07] = content.Load<Texture2D>("DiverTurtle/STA2-03");
			//Assets[(byte)AssetType.DiverTurtle | 0x08] = content.Load<Texture2D>("DiverTurtle/STB1-00");
			//Assets[(byte)AssetType.DiverTurtle | 0x09] = content.Load<Texture2D>("DiverTurtle/STB1-01");
			//Assets[(byte)AssetType.DiverTurtle | 0x0a] = content.Load<Texture2D>("DiverTurtle/STB1-02");
			//Assets[(byte)AssetType.DiverTurtle | 0x0B] = content.Load<Texture2D>("DiverTurtle/STB1-03");
			//Assets[(byte)AssetType.DiverTurtle | 0x0C] = content.Load<Texture2D>("DiverTurtle/STB2-00");
			//Assets[(byte)AssetType.DiverTurtle | 0x0D] = content.Load<Texture2D>("DiverTurtle/STB2-01");
			//Assets[(byte)AssetType.DiverTurtle | 0x0E] = content.Load<Texture2D>("DiverTurtle/STB2-02");
			//Assets[(byte)AssetType.DiverTurtle | 0x0F] = content.Load<Texture2D>("DiverTurtle/STB2-03");

			// HoverTurtle
			Assets[(byte)AssetType.HoverTurtle | 0x00] = content.Load<Texture2D>("HoverTurtle/HT01-00");
			Assets[(byte)AssetType.HoverTurtle | 0x01] = content.Load<Texture2D>("HoverTurtle/HT01-01");
			Assets[(byte)AssetType.HoverTurtle | 0x02] = content.Load<Texture2D>("HoverTurtle/HT01-02");
			Assets[(byte)AssetType.HoverTurtle | 0x03] = content.Load<Texture2D>("HoverTurtle/HT01-03");
			//Assets[(byte)AssetType.HoverTurtle | 0x04] = content.Load<Texture2D>("HoverTurtle/HT02-00");
			//Assets[(byte)AssetType.HoverTurtle | 0x05] = content.Load<Texture2D>("HoverTurtle/HT02-01");
			//Assets[(byte)AssetType.HoverTurtle | 0x06] = content.Load<Texture2D>("HoverTurtle/HT02-02");
			//Assets[(byte)AssetType.HoverTurtle | 0x07] = content.Load<Texture2D>("HoverTurtle/HT02-03");

			// FlyerTurtle
			Assets[(byte)AssetType.FlyerTurtle | 0x00] = content.Load<Texture2D>("FlyerTurtle/FT01-00");
			Assets[(byte)AssetType.FlyerTurtle | 0x01] = content.Load<Texture2D>("FlyerTurtle/FT01-01");
			Assets[(byte)AssetType.FlyerTurtle | 0x02] = content.Load<Texture2D>("FlyerTurtle/FT01-02");
			Assets[(byte)AssetType.FlyerTurtle | 0x03] = content.Load<Texture2D>("FlyerTurtle/FT01-03");
			//Assets[(byte)AssetType.HoverTurtle | 0x04] = content.Load<Texture2D>("FlyerTurtle/FT02-00");
			//Assets[(byte)AssetType.HoverTurtle | 0x05] = content.Load<Texture2D>("FlyerTurtle/FT02-01");
			//Assets[(byte)AssetType.HoverTurtle | 0x06] = content.Load<Texture2D>("FlyerTurtle/FT02-02");
			//Assets[(byte)AssetType.FlyerTurtle | 0x07] = content.Load<Texture2D>("FlyerTurtle/FT02-03");

			// TreesPlaneB
			Assets[(byte)AssetType.TreesPlaneB | 0x00] = content.Load<Texture2D>("TreesPlaneB/TS-00");
			Assets[(byte)AssetType.TreesPlaneB | 0x01] = content.Load<Texture2D>("TreesPlaneB/TS-01");
			Assets[(byte)AssetType.TreesPlaneB | 0x02] = content.Load<Texture2D>("TreesPlaneB/TS-02");
			Assets[(byte)AssetType.TreesPlaneB | 0x03] = content.Load<Texture2D>("TreesPlaneB/TS-03");
			Assets[(byte)AssetType.TreesPlaneB | 0x04] = content.Load<Texture2D>("TreesPlaneB/TS-04");
			Assets[(byte)AssetType.TreesPlaneB | 0x05] = content.Load<Texture2D>("TreesPlaneB/TS-05");
			Assets[(byte)AssetType.TreesPlaneB | 0x06] = content.Load<Texture2D>("TreesPlaneB/TS-06");
			Assets[(byte)AssetType.TreesPlaneB | 0x07] = content.Load<Texture2D>("TreesPlaneB/TS-07");

			// SignSendAll
			Assets[(byte)AssetType.SignSendAll | 0x00] = content.Load<Texture2D>("SignSendAll/SS-00");
			Assets[(byte)AssetType.SignSendAll | 0x01] = content.Load<Texture2D>("SignSendAll/SS-01");
			Assets[(byte)AssetType.SignSendAll | 0x02] = content.Load<Texture2D>("SignSendAll/SS-02");

			// SignGoalAll
			Assets[(byte)AssetType.SignGoalAll | 0x00] = content.Load<Texture2D>("SignGoalAll/SG-00");
			Assets[(byte)AssetType.SignGoalAll | 0x01] = content.Load<Texture2D>("SignGoalAll/SG-01");
			Assets[(byte)AssetType.SignGoalAll | 0x02] = content.Load<Texture2D>("SignGoalAll/SG-02");

			// CloudLargeC
			Assets[(byte)AssetType.CloudLargeC | 0x00] = content.Load<Texture2D>("CloudLargeC/CL-00");
			Assets[(byte)AssetType.CloudLargeC | 0x01] = content.Load<Texture2D>("CloudLargeC/CL-01");
			Assets[(byte)AssetType.CloudLargeC | 0x02] = content.Load<Texture2D>("CloudLargeC/CL-02");

			// CloudSmallC
			Assets[(byte)AssetType.CloudSmallC | 0x00] = content.Load<Texture2D>("CloudSmallC/CS-00");
			Assets[(byte)AssetType.CloudSmallC | 0x01] = content.Load<Texture2D>("CloudSmallC/CS-01");
			Assets[(byte)AssetType.CloudSmallC | 0x02] = content.Load<Texture2D>("CloudSmallC/CS-02");

			//Font = content.Load<SpriteFont>("Emulogic");
		}

		public IDictionary<byte, Texture2D> Assets { get; private set; }
		public SpriteFont Font { get; private set; }
	}
}
