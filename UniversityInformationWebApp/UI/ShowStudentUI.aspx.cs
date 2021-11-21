using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UniversityInformationWebApp.BLL;

namespace UniversityInformationWebApp.UI
{
    public partial class ShowStudentUI : System.Web.UI.Page
    {
        StudentManager studentManager=new StudentManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            studentGridView.DataSource = studentManager.GetAllStudnet();
            studentGridView.DataBind();
        }

        protected void UpdateLinkButton_OnClick(object sender, EventArgs e)
        {
            LinkButton link = (LinkButton) sender;
            DataControlFieldCell dataControlFieldCell = (DataControlFieldCell) link.Parent;
            GridViewRow gridViewRow = (GridViewRow) dataControlFieldCell.Parent;
            HiddenField idHiddenField = (HiddenField)gridViewRow.FindControl("idHiddenField");
            int id = Convert.ToInt32(idHiddenField.Value);

        }

        protected void deleteLinkButton_OnClick(object sender, EventArgs e)
        {
           
        }
    }
}