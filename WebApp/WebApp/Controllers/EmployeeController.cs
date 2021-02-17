using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApp.Models;

namespace WebApp.Controllers
{
    [Route("api/Employees")]
    public class EmployeeController : Controller
    {

        private readonly EmployeeDAL _employeeDAL;
        public EmployeeController(EmployeeDAL employeeDAL)
        {
            _employeeDAL = employeeDAL;
        }
        [HttpGet]
        [Route("GetEmployees")]
        public async Task<IEnumerable<Employee>> GetEmployees()
        {
            return await _employeeDAL.GetAllEmployees();
        }

        [HttpPost]
        [Route("AddEmployee")]
        public int AddEmployee([FromBody] Employee employee)
        {
            return _employeeDAL.AddEmployee(employee);
        }

        [HttpGet]
        [Route("GetEmployeeDetail/{employeeID}")]
        public Employee GetEmployeeDetail(int employeeID)
        {
            return _employeeDAL.GetEmployee(employeeID);
        }

        [HttpPut]
        [Route("EditEmployee")]
        public int EditEmployee([FromBody] Employee employee)
        {
            return _employeeDAL.UpdateEmployee(employee);
        }

        [HttpDelete]
        [Route("DeleteEmployee/{EmployeeID}")]
        public int DeleteEmployee(int EmployeeID)
        {
            return _employeeDAL.DeleteEmployee(EmployeeID);
        }

        [HttpGet]
        [Route("GetEmployee/{employeeName}")]
        public Employee GetEmployee(string employeeName)
        {
            return _employeeDAL.SearchEmployee(employeeName);
        }

    }
}
