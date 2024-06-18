using TestWorkLIbraly.Figures;
using TestWorkLIbraly.Figures.Base;

namespace TestProject
{
    [TestClass]
    public class UnitTest
    {
        [TestMethod]
        public void TestMethod_Triangle()
        {
            double sideA = 14;
            double sideB = 13;
            double sideC = 15;

            double result = 84;

            Figure triangle = new Triangle(sideA, sideB, sideC);
            triangle.GetSquare();
            Assert.AreEqual(result, triangle.Square);
        }

        [TestMethod]
        public void TestMethod_RectTriangle()
        {
            double sideA = 7;
            double sideB = 24;
            double sideC = 25;

            double result = 84;

            Figure triangle = new Triangle(sideA, sideB, sideC);
            triangle.GetSquare();
            Assert.AreEqual(result, triangle.Square);
        }

        [TestMethod]
        public void TestMethod_Circle()
        {
            double radius = 5;

            double result = 78.54;

            Figure circle = new Circle(radius);
            circle.GetSquare();
            Assert.AreEqual(result, circle.Square);
        }
    }
}