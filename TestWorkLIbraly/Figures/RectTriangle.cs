namespace TestWorkLIbraly.Figures
{
    public class RectTriangle : Triangle
    {
        public RectTriangle(double SideA, double SideB, double SideC) : base(SideA, SideB, SideC)
        {

        }

        public override double GetSquare()
        {
            IList<double> sides = new List<double>() { sideA, sideB, sideC };
            double maxSide = sides.Max();
            sides.Remove(maxSide);
            double square = sides[0] * sides[1] / 2;
            return Square = square;
        }
    }
}