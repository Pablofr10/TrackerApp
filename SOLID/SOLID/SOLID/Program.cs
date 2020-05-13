using SOLID.Implementacao;
using SOLID.Interface;
using System;
using System.Collections.Generic;

namespace SOLID
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Employee> employees = new List<Employee>();
            employees.Add(new PermanentEmployee(1, "John"));
            employees.Add(new TempEmployee(2, "Jason"));
            //employees.Add(new ContractEmployee(3, "Mike"));

            foreach (var employee in employees)
            {
                Console.WriteLine(string.Format("Employee {0} Bonus: {1}",
                employee.ToString(),
                employee.CalculateBonus(1000000).ToString(),
                employee.GetMinimumSalary().ToString()));
            }

            Console.WriteLine();

            List <IEmployee> employeesOnly = new List<IEmployee>();
            employeesOnly.Add(new PermanentEmployee(1, "John"));
            employeesOnly.Add(new TempEmployee(2, "Jason"));
            employeesOnly.Add(new ContractEmployee(3, "Mike"));

            foreach (var employee in employeesOnly)
            {
                Console.WriteLine(string.Format("Employee {0} Bonus: {1}",
                employee.ToString(),
                employee.GetMinimumSalary().ToString()));
            }
        }
    }
}
