using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UniversityInformationWebApp.DAL.Models
{
    public class StudentView
    {
        public int  StudentId { get; set; }
        public string RegNo { get; set; }
        public string StudentName { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public int DepartmentId { get; set; }
        public string Code { get; set; }
        public string DepartmentName { get; set; }  
        
    }
}