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
using System.Data.SqlClient;
//using industimes.BussinessLogic;
//using industimes.safeConvert;
//using industimes.DataAccessLayer;
//using industimes.PropertiesLayer;
using System.Web.Mail;
using System.Web.SessionState;

public partial class Upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ret"] != null)
        {
            body1.Attributes.Add("onload", "return alertsubmit()");

        }
    }
  
    
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (emailLogin.Text == "industimes" && pass.Text == "indusgroup")
        {
            tdmsg.InnerHtml = "";
            string usnm = emailLogin.Text.ToString();
            Session["Authentication"] = "true";

            Session.Add("CUser", usnm);

            Response.Redirect("Upload_File.aspx");
        }

        else
        {

            tdmsg.InnerHtml = "Please Enter Correct UserId and Password";
            Response.Redirect("Upload.aspx?ret=ok");
        }
    }
}
