using Microsoft.Xna.Framework;
using System.Collections.Generic;

namespace Test
{
	public interface IOutput
	{
		void Initialize();
		void Process();
		float HangTime();
		List<Vector2> Points { get; }
	}
}
