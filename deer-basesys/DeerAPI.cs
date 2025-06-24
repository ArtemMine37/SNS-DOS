using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;
//using Microsoft.Win32;

/*
 SNS-DOS Version 0.1 [old: 0.9.0]
- Implemented a few commands
- Implemented basic user system
- Improved & simplified console experience
- FINALLY: C# rewrite
- - Also runs well on Wine!
 */

namespace deer_basesys
{
    class DeerAPI
    {
        public static void ShowUiTitle(string Out) => Console.WriteLine("       -=SnsUI / " + Out + "=-");

        private static void ShowButtons(string fggfd, string vftgf53) => Console.WriteLine("To be implemented");

        public static int SkipEmulMode() { Console.WriteLine("SNS-DOS is running in Native mode."); return 1; } // Placeholder for now

        public static void CommandProcessor(string Input)
        {
            switch (Input) // TODO: Implement more commands
            {
                case "taskmgr": DeerBaseUtils.StartProgram("taskmgr"); break; // starts host task manager
                case "help": DeerBaseUtils.HelpMenu(); break; // commands list
                case "cmds": DeerBaseUtils.HelpMenu(); break;
                case "?": DeerBaseUtils.HelpMenu(); break;
                case "exit": Environment.Exit(1); break; // exit from sns-dos
                case "quit": Environment.Exit(1); break;
                case "cls": Console.Clear(); break; // clear terminal screen
                case "clear": Console.Clear(); break;
                case "cmd": DeerBaseUtils.StartProgram("cmd"); break; // starts host cmd
                case "notes": break; // New notepad, I guess?..
                case "snscode": Console.WriteLine("To be implemented"); break;
                case "about": DeerBaseUtils.AboutDeer(); break; // stub impl
                case "beta": DeerBaseUtils.ImplStatus(); break; // stub
                case "date": DeerBaseUtils.DTime(); break;
                case "time": DeerBaseUtils.DTime(); break;
                default: InvalidInputCmd(); break;
            }
        }
        public static string CheckValid()
        {// Read username input and then check if it's not restricted.
            Console.Write("Enter your username: "); // Beg for letters
            string r = Console.ReadLine().ToLower(); // Lowercase them (if it has a letter)
            string k = "INVALID"; // Return invalid username if it does not meet requirements
            if (r == null | r == "knowdont") { return k; }
            if (r == "sns-dos" | r == "sns-os" | r == "sns" | r == "snsui") { return k; }
            if (r == "admin" | r == "administrator" | r == "system" | r == "deer") { return k; }
            return r; // Return the valid one after passing
        }

        public static void InvalidCommand()
        {
            Console.Beep();
            Console.WriteLine("At least THIS is an invalid command, perhaps...");
            Console.Read();
        }

        public static void InvalidInputCmd()
        {
            Console.Beep();
            Console.WriteLine("Unknown command. Try 'help' to find required command.");
        }
    }
}
