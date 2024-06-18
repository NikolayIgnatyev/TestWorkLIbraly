using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TestWorkLIbraly.Figures.Base;

namespace TestWorkLIbraly.Figures
{
    public class Triangle : Figure
    {
        protected double sideA, sideB, sideC;
        public Triangle(double SideA, double SideB, double SideC)
        {
            sideA = SideA;
            sideB = SideB;
            sideC = SideC;
        }

        private bool IsRectangular()
        {
            IList<double> sides = new List<double>() { sideA, sideB, sideC };
            double maxSide = sides.Max();
            sides.Remove(maxSide);
            double sumPow = Math.Pow(sides[0], 2) + Math.Pow(sides[1], 2);
            double maxSidePow = Math.Pow(maxSide, 2);
            if (sumPow == maxSidePow)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public override double GetSquare()
        {
            if (IsRectangular())
            {
                return Square = new RectTriangle(sideA, sideB, sideC).GetSquare();
            }
            double perimeter = (sideA + sideB + sideC) / 2;
            double square = Math.Sqrt(perimeter * (perimeter - sideA) * (perimeter - sideB) * (perimeter - sideC));
            return Square = square;
        }

    }
}
