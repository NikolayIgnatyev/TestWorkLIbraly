using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestWorkLIbraly.Interfaces
{
    public interface IFigure
    {
        public int Square { get; set; }

        public int GetSquare()
        {
            return Square;
        }
    }
}
