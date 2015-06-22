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
using System.Web.Mail;
using System.Web.SessionState;
using System.IO;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ret"] != null)
        {
            body1.Attributes.Add("onload", "return alertsubmit()");

        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (emailLogin.Text == "admin1" && pass.Text == "admin1")
        {
            tdmsg.InnerHtml = "";
           
            string usnm1 = emailLogin.Text.ToString();
            Session["Authentication"] = "true";


            string ap = "Y";
            string ep = "Y";
            string dp = "Y";

          //  Session.Add("UserId", usid);
          //  Session.Add("xId", uxid);
            Session.Add("Username", usnm1);
            Session.Add("Addp", ap);
            Session.Add("Editp", ep);
            Session.Add("Deletep", dp);

            Response.Redirect("Admin_Home.aspx");


        }
        //else
        //{
        //    ds = new DataSet();
        //    SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
        //    SqlDataAdapter imgtext = new SqlDataAdapter("Select * from Users_Info where UserId=" + "'" + emailLogin.Text.ToString() + "'" + " and Password='" + pass.Text.ToString() + "'", sqlConnection);
        //    imgtext.Fill(ds, "Users_Info");

        //    if (!ds.Tables[0].Rows.Count.Equals(0))
        //    {
        //        string usnm = ds.Tables[0].Rows[0]["Username"].ToString();
        //        string usid = ds.Tables[0].Rows[0]["UserId"].ToString();
        //        string uxid = ds.Tables[0].Rows[0]["Id"].ToString();
        //        string ap = ds.Tables[0].Rows[0]["Add_Perm"].ToString();
        //        string ep = ds.Tables[0].Rows[0]["Edit_Perm"].ToString();
        //        string dp = ds.Tables[0].Rows[0]["Delete_Perm"].ToString();

        //        Session["Authentication"] = "true";

        //        Session.Add("Username", usnm);
        //        Session.Add("UserId", usid);
        //        Session.Add("xId", uxid);

        //        Session.Add("Addp", ap);
        //        Session.Add("Editp", ep);
        //        Session.Add("Deletep", dp);

        //        Response.Redirect("Admin_Home.aspx");
        //    }
        //    else
        //    {

        //        tdmsg.InnerHtml = "Please Enter Correct UserId and Password";
        //        Response.Redirect("Default.aspx?ret=ok");
        //    }
       // }

    }
}
