using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using UniversityInformationWebApp.DAL.Gateway;
using UniversityInformationWebApp.DAL.Models;

namespace UniversityInformationWebApp.BLL
{
    public class StudentManager
    {
        private StudnetGateway studnetGateway;

        public StudentManager()
        {
            studnetGateway=new StudnetGateway();
        }

        public List<StudentView> GetAllStudnet()
        {
            List<StudentView> students = studnetGateway.GetAllStudnet();
            return students;
        }

        public string StudentEntry(Student student)
        {
            int rowAffect = studnetGateway.StudentEntry(student);
            if (rowAffect > 0)
            {
                return "Insert Successful";  
            }
            else
            {
                return "Insert Failed";
            }
        }
    }
}