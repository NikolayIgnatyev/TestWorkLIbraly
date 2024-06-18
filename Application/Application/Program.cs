using System.Diagnostics.Contracts;
using System.Security.Cryptography.X509Certificates;
using TestWorkLIbraly.Figures;
using TestWorkLIbraly.Figures.Base;

namespace Application
{
    public class Program
    {
        public static void Main(string[] args)
        {
            Figure triangle = new Triangle(25, 24, 8);
            triangle.GetSquare();
            //Console.WriteLine(triangle.GetSquare()); // also worked
            Console.WriteLine(triangle.Square);

            Figure circle = new Circle(5);
            circle.GetSquare();
            Console.WriteLine(circle.Square);
        }
    }
}