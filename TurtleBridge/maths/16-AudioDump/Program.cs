using System;

namespace AudioDump
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			fm.DumpFiles("SampleTest01");
			fm.DumpFiles("SampleTest02");
			fm.DumpFiles("SampleTest03");
			fm.DumpFiles("SampleTest04");

			//fm.Sporadic("SampleTest05", "mus_cont_psg", 6, 530);
			//fm.Sporadic("SampleTest05", "mus_level_psg", 6, 4135);
			//fm.Sporadic("SampleTest05", "mus_over_psg", 6, 881);
			//fm.Sporadic("SampleTest05", "mus_beat_psg", 6, 1573);

			fm.Sort();
			fm.Save();

			var am = new AudioManager();
			am.Calculate(fm.Data);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
