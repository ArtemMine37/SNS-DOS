using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Text;
using System.Threading.Tasks;

namespace deer_basesys
{
    class DeerBaseUtils
    {
        private static int exit = 0;

        public static void DTime()
        {
            DateTime time = DateTime.Now;
            Console.WriteLine("Today is "+time.ToString("F")+". Have a nice day!");
        }

        public static void Calculator() // Placeholder for a calculator
        {

        }

        public static void HelpMenu() // Self-explanatory
        {
            Console.Clear(); // Clear the console
            DeerAPI.ShowUiTitle("SnsHelp / Help");
            Console.WriteLine("Select:\n1 => Basic commands\n2 => Fun and games\n3 => System Tools");
            Console.WriteLine("    <=[X - Exit | N = Page to display]=>");
            while (true) {
                ConsoleKeyInfo key = Console.ReadKey();
                string page = key.KeyChar.ToString().ToLower();
                // TODO: Expand pages functionality, like in original SNS-DOS
                Console.Clear();
                switch (page) {
                    case "1":
                        DeerAPI.ShowUiTitle("SnsHelp / Base");
                        Console.WriteLine(
                        "[help / cmds / ?] - Help command\n" +
                        "[echo] - Displays text\n" + // To be implemented
                        "[time] - Date & time\n" + // To be implemented
                        "[cls / clear] - Clears the screen\n" +
                        "[date / time] Shows current time\n" +
                        "[theme] - Theme changer (default: Light)\n" + // To be implemented
                        "[news] - Latest announcements"); // To be implemented
                        break;
                    case "2":
                        DeerAPI.ShowUiTitle("SnsHelp / Fun");
                        Console.WriteLine(
                        "[beta] - Check implementation status\n" + // Stub available
                        "[random / rnd] - Random number generator"); // To be implemented
                        break;
                    case "3":
                        DeerAPI.ShowUiTitle("SnsHelp / System");
                        Console.WriteLine(
                            "[about / ver / snsver] - Shows SNS-DOS info\n" + // To be implemented
                            "[quit / exit] - Exit from SNS-DOS\n" +
                            "[reboot] - Reboots SNS-DOS\n" + // To be implemented
                            "[run / start] - Executes a file\n" + // To be implemented
                            "[snstasks / top] - Built-in Task Manager\n" + // To be implemented
                            "[snsdisk / files] - File Manager"); // To be implemented
                        break;
                    case "x": return;
                    default:
                        Console.WriteLine("Wrong key!");
                        break;
                }
                Console.WriteLine("    <=[X - Exit | N = Page to display]=>");
            }
        }

        public static void SnsHelpInteraction()
        { // TODO (or not): Page interactions

            Console.Clear();
            DeerAPI.ShowUiTitle("SnsHelp - Page viewer");
        }

        public static void StartProgram(string Action)
        { // Starts process of your choice
            switch (Action) {
                case "taskmgr":
                    Console.WriteLine("Sent command to the host.");
                    Process.Start("taskmgr.exe");
                    break;
                case "cmd":
                    Console.WriteLine("Sent command to the host.");
                    Process.Start("cmd.exe");
                    break;

                default:
                    break;
            }
        }

        public static void AboutDeer() // TODO: Make snsver
        {
            DeerAPI.ShowUiTitle("About SNS-DOS");
            Console.Write("");
        }

        public static void ImplStatus()
        {
            Console.WriteLine(
            "\n[Implementation status]\n"+
            "Only some commands and basic things ported.\n"+
            "More coning soon.\n");
        }
    }
}
