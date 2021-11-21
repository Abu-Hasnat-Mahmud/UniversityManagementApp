using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using UniversityInformationWebApp.DAL.Models;

namespace UniversityInformationWebApp.DAL.Gateway
{
    public class StudnetGateway:CommonGateway
    {
        public List<StudentView> GetAllStudnet()
        {
            string query = "SELECT * FROM StudentDepartmentView";
            Command=new SqlCommand(query,Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<StudentView>students=new List<StudentView>();
            while (Reader.Read())
            {
                StudentView student=new StudentView();
                student.StudentId = Convert.ToInt32(Reader["StudentId"]);
                student.RegNo = Reader["RegNo"].ToString();
                student.StudentName = Reader["StudentName"].ToString();
                student.Address = Reader["Address"].ToString();
                student.Email = Reader["Email"].ToString();
                student.Phone = Reader["Phone"].ToString();
                student.DepartmentId = Reader["DepartmentId"].GetHashCode();
                student.Code = Reader["Code"].ToString();
                student.DepartmentName = Reader["DepartmentName"].ToString();

                students.Add(student);
            }
            Connection.Close();
            return students;
        }

        public int StudentEntry(Student student)
        {
            string query = "INSERT INTO Student VALUES('"+student.RegNo+"','"+student.Name+"','"+student.Address+"','"+student.Email+"','"+student.Phone+"','"+student.DepartmentId+"')";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
        }
    }
}