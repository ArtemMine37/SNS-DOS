using System;/*
using System.Diagnostics.Eventing.Reader;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;*/

namespace deer_basesys
{
    class DeerSystem
    {
        static void Main(string[] args)
        {
            if (args.Length >= 1) {
                switch (args[0])
                {
                    // For debug purposes (if there will be a problem while parsing)
                    case "--test":
                        string Out = args[1];
                        DeerAPI.ShowUiTitle(Out);
                        break;
                    case "--user": // Skip log in step
                            CommandPrompt("DeerAlpha");
                    break;
                    case "--native": // Placeholder
                            DeerAPI.SkipEmulMode();
                    break;
                    default: // Normal run
                        string user = DeerAPI.CheckValid();
                        CommandPrompt(user);
                        break;
                }
            } else { // The same normal run
            string user = DeerAPI.CheckValid();
            CommandPrompt(user);
            }
        }

        private static void CommandPrompt(string user)
        {
            Console.WriteLine("SNS-DOS Console [Version 1.0.2507]\n\nHi there, "+user+"!"); // TODO: Randomize greeting
            while (true) // Just make a loop
            {
                Console.Write(user+"> "); // Command line
                string Input = Console.ReadLine(); // Wait for text
                string Command = Input.ToLower(); // used to avoid weird errors related to incorrect input from user
                DeerAPI.CommandProcessor(Command); // Processing the text and executing a command
            }
            Environment.Exit(0);
        }

    }
}
