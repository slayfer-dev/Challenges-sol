//Author hogarth45
namespace CodeAbbey1
{

    class Program
    {
        static void Main(string[] args)
        {
            string second = null;
            string answer = null;
            decimal[] numberarry = new decimal[3] { 0, 0, 0 };
            string filePath = "inputfile.txt";
            StreamReader streamReader = new StreamReader(filePath);
            second = streamReader.ReadToEnd();
            streamReader.Close();
            second = second.Replace("\r\n", "|");
            string[] rows = second.Split(' ');

            numberarry[0] = Convert.ToDecimal(rows[0]);//P- Loan Size
            numberarry[1] = Convert.ToDecimal(rows[1])/100;//R- Interest Rate (yearly, compounded monthly)
            numberarry[2] = Convert.ToDecimal(rows[2]);//L- Length of loan
            //Find monthly payment

            decimal temp = numberarry[0];
            decimal monthly = 0;

            decimal r =numberarry[1] / 12;
            monthly = (decimal)(r*temp)/(decimal)(1-Math.Pow((double)(1+r),(double)(numberarry[2]*-1)));
            answer = (Math.Round(monthly,0,MidpointRounding.AwayFromZero)+1).ToString();
            Console.WriteLine("The answer is:");
            Console.Write(answer.Trim());
            Console.ReadKey();
        }
    }
}