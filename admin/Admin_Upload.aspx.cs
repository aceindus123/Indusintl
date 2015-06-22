using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Admin_Upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (Request.QueryString["ret"] != null)
        {
            body1.Attributes.Add("onload", "return alertsubmit()");

        }

    }

    #region Web Form Designer generated code
    override protected void OnInit(EventArgs e)
    {
        //
        // CODEGEN: This call is required by the ASP.NET Web Form Designer.
        //
        base.OnInit(e);
        if (Session["UserName"] == null)
        {
            Session.Add("requestUrl", Request.Url);
            Response.Redirect("Default.aspx");
        }
    }

    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    #endregion
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string ucourse = "";
        // string ucurriculum = "";
        string curname = "sdsd";
        string fName = "";
        string fext = string.Empty;

        ucourse = Convert.ToString(course.Text);
        if (curr.PostedFile != null)
        {
            fext = System.IO.Path.GetExtension(curr.FileName);
            if (fext != ".pdf")
            {
                lblerror.Text = "You can Upload only PDF Files!";
            }
       
        else
        {

            if (ucourse == "DWH/BO/COGNOS/Crystal Reports")
            {
                fName = "DWH-Training-Curriculum.pdf";
                curr.PostedFile.SaveAs(Server.MapPath("Curriculam/" + fName));
            }


            if (ucourse == "INFORMATICA")
            {
                fName = "Informatica-Training-Curriculum.pdf";
                curr.PostedFile.SaveAs(Server.MapPath("Curriculam/" + fName));
            }
            if (ucourse == "BUSINESS ANALYST")
            {
                fName = "BA-Training-Curriculum.pdf";
                curr.PostedFile.SaveAs(Server.MapPath("Curriculam/" + fName));
            }
            if (ucourse == "QA Manual and Automated Testing")
            {
                fName = "QATraining-CurriculumNew.pdf";
                curr.PostedFile.SaveAs(Server.MapPath("Curriculam/" + fName));
            }
            if (ucourse == "ORACLE DBA")
            {
                fName = "OracleDBA10g-TrngCurriculum.pdf";
                curr.PostedFile.SaveAs(Server.MapPath("Curriculam/" + fName));
            }
            if (ucourse == "ORACLE APPS")
            {
                fName = "Oracle10g-RAC-DATAGuard-TrngCurriculum.pdf";
                curr.PostedFile.SaveAs(Server.MapPath("Curriculam/" + fName));
            }
            if (ucourse == "SAP - FICO")
            {
                fName = "SAP-FICO-Training-Curriculum.pdf";
                curr.PostedFile.SaveAs(Server.MapPath("Curriculam/" + fName));
            }


            if (ucourse == ".NET / C# / ASP.NET / VB.NET")
            {
                fName = "DotNet.pdf";
                curr.PostedFile.SaveAs(Server.MapPath("Curriculam/" + fName));
            }
            if (ucourse == "SAP - HR")
            {
                fName = "SAP-HR-Training-Curriculum.pdf";
                curr.PostedFile.SaveAs(Server.MapPath("Curriculam/" + fName));
            }

            if (ucourse == "People Soft - Technical and Functional")
            {
                fName = "PSoft-Training-Curriculum.pdf";
                curr.PostedFile.SaveAs(Server.MapPath("Curriculam/" + fName));
            }
            if (ucourse == "Web Development")
            {
                fName = "WebDesign-Training-Curriculum.pdf";
                curr.PostedFile.SaveAs(Server.MapPath("Curriculam/" + fName));
            }

            if (ucourse == "JAVA / J2EE Training")
            {
                fName = "Java-Training-Curriculum.pdf";
                curr.PostedFile.SaveAs(Server.MapPath("Curriculam/" + fName));
            }

            if (ucourse == "UNIX ADMIN")
            {
                fName = "Unix.Admn-Training-Curriculum.pdf";
                curr.PostedFile.SaveAs(Server.MapPath("Curriculam/" + fName));
            }
            if (ucourse == "PMP Certification")
            {
                fName = "PSoft-Training-Curriculum.pdf";
                curr.PostedFile.SaveAs(Server.MapPath("Curriculam/" + fName));
            }
            Response.Redirect("Admin_Upload.aspx?ret=ok");
        }
      
    }
}
}
