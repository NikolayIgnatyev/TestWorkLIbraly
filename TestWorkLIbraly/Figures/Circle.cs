using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TestWorkLIbraly.Figures.Base;

namespace TestWorkLIbraly.Figures
{
    public class Circle : Figure
    {
        public double Radius { get; set; }
        public Circle(double radius) 
        {
            Radius = radius;
        }

        public override double GetSquare()
        {
            return Square = Math.Round(Math.Pow(Radius, 2) * Math.PI, 3);
        }
    }
}
