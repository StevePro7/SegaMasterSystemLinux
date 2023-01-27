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
			ProcessBank01(bank);
			fm.Build(bank, lines);
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
