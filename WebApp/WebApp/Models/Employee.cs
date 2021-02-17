using System;
using System.Collections.Generic;

#nullable disable

namespace WebApp.Models
{
    public partial class Employee
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime? BirthDate { get; set; }
        public DateTime? HireDate { get; set; }
        public string Address { get; set; }
        public string Title { get; set; }
        public int? Salary { get; set; }
        public int? Phone { get; set; }
    }
}
