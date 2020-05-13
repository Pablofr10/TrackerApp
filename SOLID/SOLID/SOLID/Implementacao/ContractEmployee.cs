using SOLID.Interface;
using System;
using System.Collections.Generic;
using System.Text;

namespace SOLID.Implementacao
{
    public class ContractEmployee : IEmployee
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public ContractEmployee()
        { }

        public ContractEmployee(int id, string name)
        {
            this.Id = id;
            this.Name = name;
        }
        public decimal GetMinimumSalary()
        {
            return 5000;
        }
    }
}
