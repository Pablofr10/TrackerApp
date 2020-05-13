using SOLID.Interface;
using System;
using System.Collections.Generic;
using System.Text;

namespace SOLID
{
    public abstract class Employee : IEmployee, IEmployeeBonus
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public Employee()
        {}

        public Employee(int id, string name)
        {
            this.Id = id; 
            this.Name = name;
        }
        public abstract decimal CalculateBonus(decimal salary);
        
        public override string ToString()
        {
            return string.Format("ID: {0} Name: {1}", this.Id, this.Name);
        }

        public virtual decimal GetMinimumSalary()
        {
            return 15000;
        }
    }

    
}
