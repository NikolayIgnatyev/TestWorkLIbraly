using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestWorkLIbraly.Figures.Base
{
    public class Figure
    {
        public double Square { get; set; }

        public virtual double GetSquare()
        {
            return Square;
        }
    }
}
