using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test
{
	public interface IOutput
	{
		void Initialize();
		void Process();
		float QuadraticB(float a, float b, float c);
		float HangTime();
	}
}
