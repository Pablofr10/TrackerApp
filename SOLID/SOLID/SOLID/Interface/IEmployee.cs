using System;
using System.Collections.Generic;
using System.Text;

namespace SOLID.Interface
{
    public interface IEmployee
    {
        int Id { get; set; }
        string Name { get; set; }
        decimal GetMinimumSalary();
    }
}
