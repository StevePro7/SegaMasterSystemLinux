using System;
using System.Collections.Generic;

namespace FunctionMgr
{
	public class BankManager
	{
		private FileManager fm;
		private List<string> lines;
		private const string software = "C:/Program Files/SDCC/bin/";

		public BankManager(FileManager fm)
		{
			this.fm = fm;
		}

		public void Init()
		{
			lines = new List<string>();
		}

		public void ProcessBanks(int numBanks)
		{
			for (int idx = 0; idx < numBanks; idx++)
			{
				var bank = idx + 2;
				ProcessBank(bank);
			}
		}

		public void ProcessBank(int bank)
		{
			fm.Banks(bank);
			//ProcessBank01(bank);
			// TODO make "raw" subdirectory and delete on each execution
			ProcessBank02(bank);
			fm.Scripts(bank, lines);
		}

		public void ProcessBank02(int bank)
		{
			// TODO - inject the WAV file name
			var filename = "INSERT_WAV_FILE_HERE.wav";

			var lower = "bank" + bank;
			var upper = "BANK" + bank;
			char quote = '"';

			lines.Clear();
			lines.Add("REM " + lower);
			lines.Add("@echo off");
			lines.Add("");
			lines.Add("cd ..");
			lines.Add("cd banks");
			lines.Add("::cd " + lower);
			lines.Add("::cd raw");
			lines.Add("");

			var pcmenc = String.Format("::{0}{1}pcmenc{0} -rto 1 -dt1 12 -dt2 12 -dt3 423 {2}",
				quote,
				software,
				filename);
			lines.Add(pcmenc);

			var move = String.Format("::mv {0}.pcmenc ../", filename);
			lines.Add(move);

			lines.Add("");
			lines.Add("::cd ../..");

			var folder2c = String.Format("{0}{1}folder2c{0} {2} {2} {3}",
				quote,
				software,
				lower,
				bank);
			lines.Add(folder2c);
			lines.Add("");

			var compile = String.Format("{0}{1}sdcc{0} --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg {2} {3}.c",
				quote,
				software,
				upper,
				lower);
			lines.Add(compile);
			lines.Add("");

			lines.Add("del *.asm > nul; del *.lst > nul; del *.sym > nul");
			lines.Add("");
			lines.Add("cd ..");
			lines.Add("cd scripts");
		}

		public void ProcessBank02_WAV(int bank)
		{
			// TODO - inject the WAV file name
			var filename = "Riff__05.wav";

			var lower = "bank" + bank;
			var upper = "BANK" + bank;
			char quote = '"';

			lines.Clear();
			lines.Add("REM " + lower);
			lines.Add("@echo off");
			lines.Add("");
			lines.Add("cd ..");
			lines.Add("cd banks");
			lines.Add("cd " + lower);
			lines.Add("cd raw");
			lines.Add("");

			var pcmenc = String.Format("{0}{1}pcmenc{0} -rto 1 -dt1 12 -dt2 12 -dt3 423 {2}",
				quote,
				software,
				filename);
			lines.Add(pcmenc);

			var move = String.Format("mv {0}.pcmenc ../", filename);
			lines.Add(move);

			lines.Add("");
			lines.Add("cd ../..");

			var folder2c = String.Format("{0}{1}folder2c{0} {2} {2} {3}",
				quote,
				software,
				lower,
				bank);
			lines.Add(folder2c);
			lines.Add("");

			var compile = String.Format("{0}{1}sdcc{0} --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg {2} {3}.c",
				quote,
				software,
				upper,
				lower);
			lines.Add(compile);
			lines.Add("");

			lines.Add("del *.asm > nul; del *.lst > nul; del *.sym > nul");
			lines.Add("");
			lines.Add("cd ..");
			lines.Add("cd scripts");
		}

		public void ProcessBank01(int bank)
		{
			var lower = "bank" + bank;
			var upper = "BANK" + bank;
			char quote = '"';

			lines.Clear();
			lines.Add("REM " + lower);
			lines.Add("@echo off");
			lines.Add("");
			lines.Add("cd ..");
			lines.Add("cd banks");
			lines.Add("");

			var folder2c = String.Format("{0}{1}folder2c{0} {2} {2} {3}",
				quote,
				software,
				lower,
				bank);
			lines.Add(folder2c);
			lines.Add("");

			var compile = String.Format("{0}{1}sdcc{0} --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg {2} {3}.c",
				quote,
				software,
				upper,
				lower);
			lines.Add(compile);
			lines.Add("");
			lines.Add("del *.asm > nul; del *.lst > nul; del *.sym > nul");
			lines.Add("");
			lines.Add("cd ..");
			lines.Add("cd scripts");
		}
	}
}
