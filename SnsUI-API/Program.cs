using System;

namespace SnsUI_API
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length > 0) { if (args[0].Contains("ShowTitle")) { ShowUiTitle(args[1]); } else { InvalidCommand(); } } else { InvalidCommand(); }
        }

        private static void ShowUiTitle(string @Out) => Console.WriteLine("       -=SnsUI / " + @Out + "=-");

        private static void InvalidCommand() { Console.Beep(); Console.WriteLine("This file does ONLY show a title."); Console.Read(); }
    }
}
