using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace BinaryFileWrite
{
	public class BankManager
	{
		private const string BANKS = "banks";
		private const string BANK = "bank";
		private const string SCRIPTS = "scripts";
		private IList<string> lines;

		public void Update(int lastBank)
		{
			int bank = 2;
			lines.Clear();
			lines.Add("@echo off");
			lines.Add("");
			lines.Add("cd ..");
			lines.Add("cd banks");
			lines.Add("cd bank" + bank);
			lines.Add("");
			lines.Add(":: Command");
			lines.Add("");
			lines.Add("cd ..");
			lines.Add($"cd folder2c bank{bank} bank{bank} {bank}");
			lines.Add("");
			lines.Add($"sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK{bank} bank{bank}.c");
			lines.Add("");
			lines.Add("del *.asm > nul; del *.lst > nul; del *.sym > nul");
			lines.Add("");
			lines.Add("cd ..");
			lines.Add("cd scripts");
		}

		public void Init(int lastBank)
		{
			if (!Directory.Exists(BANKS))
			{
				Directory.CreateDirectory(BANKS);
			}

			for (int bank = 2; bank <= lastBank; bank++)
			{
				var bankName = $"{BANKS}/{BANK}{bank}";
				if (!Directory.Exists(bankName))
				{
					Directory.CreateDirectory(bankName);
				}
			}

			if (!Directory.Exists(SCRIPTS))
			{
				Directory.CreateDirectory(SCRIPTS);
			}

			lines = new List<string>();
		}
	}
}
