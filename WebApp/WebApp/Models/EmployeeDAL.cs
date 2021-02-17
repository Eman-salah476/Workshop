using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApp.Models;


namespace WebApp.Models
{
    public class EmployeeDAL
    {
        private readonly DigixpertsContext _context;
        public EmployeeDAL(DigixpertsContext context)
        {
            _context = context;
        }

        /// gets all employees list  
        public async Task<IEnumerable<Employee>> GetAllEmployees()
        {
            try
            {
                return await _context.Employees.ToListAsync();
            }
            catch
            {
                throw;
            }
        }

        /// add new employee      
        public int AddEmployee(Employee employee)
        {
            try
            {
                _context.Employees.Add(employee);
                _context.SaveChanges();
                return 1;
            }
            catch
            {
                throw;
            }
        }

        /// update an existing employee   
        public int UpdateEmployee(Employee employee)
        {
            try
            {
                _context.Entry(employee).State = EntityState.Modified;
                _context.SaveChanges();
                return 1;
            }
            catch
            {
                throw;
            }
        }

        /// get an employee detail    
        public Employee GetEmployee(int EmployeeID)
        {
            try
            {
                Employee employee = _context.Employees.Find(EmployeeID);
                return employee;
            }
            catch
            {
                throw;
            }
        }

        /// Delete an employee   
        public int DeleteEmployee(int EmployeeID)
        {
            try
            {
                Employee employee = _context.Employees.Find(EmployeeID);
                _context.Employees.Remove(employee);
                _context.SaveChanges();
                return 1;
            }
            catch
            {
                throw;
            }
        }

        public Employee SearchEmployee(string EmployeeName)
        {
            try
            {
                Employee employee = _context.Employees.Where(n => n.Name == EmployeeName).FirstOrDefault();
                return employee;
            }
            catch
            {
                throw;
            }
        }



    }
}
