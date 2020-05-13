using System;
using System.Collections.Generic;
using System.Text;

namespace SOLID.Implementacao
{
    public class TempEmployee : Employee
    {
        public TempEmployee()
        { }

        public TempEmployee(int id, string name) : base(id, name)
        {
        }
        public override decimal CalculateBonus(decimal salary)
        {
            return (salary * .5M);
        }
        public override decimal GetMinimumSalary()
        {
            return 5000;
        }
    }
}
