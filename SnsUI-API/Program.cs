using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SnsUI_API
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length > 0)
            {
                string text = args[0];
                Console.WriteLine("Text {0} is now showed!", text);
                // For debug purposes (if there will be a problem while parsing)
                if (args[0].Contains("SnsUI.ShowTitle"))
                {
                    string Out = args[1];
                    ShowUiTitle(Out);
                }
                if (args[0].Contains("SnsUI.Updater"))
                {
                    string Out = args[1];
                    string Add1 = args[2];
                    SnsUI_Updater(Out, Add1);
                } else
                {
                    InvalidCommand();
                }
            }
            else
            {
                InvalidCommand();
            }
        }

        private static void ShowUiTitle(string @Out)
        {
            string Title = "       -=SnsUI / " + @Out + "=-";
            Console.WriteLine(Title);
        }

        private static void SnsUI_Updater(string @Out, string @Add1)
        {
            Console.WriteLine("bro how did u find this argument?");
        }

        private static void InvalidCommand()
        {
            Console.Beep();
            Console.WriteLine("bro why u tryin to access this API?");
            Console.Read();
        }
    }
}
