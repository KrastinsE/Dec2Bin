using System;

namespace Dec2Bin.csproj
{
    class DecimalToBinary
    {
        static void Main(string[] args)
        {
            Console.Write("Decimal: ");
            int decimalNumber = int.Parse(Console.ReadLine());

            int remainder;
            string result = string.Empty;
            while (decimalNumber > 0)
            {
                remainder = decimalNumber % 2;
                decimalNumber /= 2;
                string v = remainder.ToString() + result;
                result = v;
            }
            Console.WriteLine("Binary:  {0}",result);
        }
    }
}
