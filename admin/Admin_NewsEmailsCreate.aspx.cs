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

public partial class Admin_NewsEmailsCreate : System.Web.UI.Page
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





        string useremail = emailid.Text.ToString();

        string streg = string.Empty;
        string arrlx = string.Empty;
        string[] myArr = useremail.Split(new Char[] {' ', ',' });
     

        for (int i = 0; i <= myArr.Length - 1; i++)
        {



            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();

            SqlCommand cmd = new SqlCommand("insert into ln_newsmails (emailid,course,pdate) VALUES(@aemail,@aname,@postdate)", connection);

            cmd.Parameters.Add(new SqlParameter("@aemail", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@aname", SqlDbType.NVarChar, 150));

            cmd.Parameters.Add(new SqlParameter("@postdate", SqlDbType.DateTime, 20));

            //cmd.Parameters["@aemail"].Value = useremail;
            cmd.Parameters["@aemail"].Value = myArr[i].ToString();
            cmd.Parameters["@aname"].Value = course.SelectedItem.Value;
            cmd.Parameters["@postdate"].Value = DateTime.Now.ToString();


            streg = cmd.ExecuteNonQuery().ToString();
            connection.Close();
        }
        Response.Redirect("Admin_NewsEmailsCreate.aspx?ret=ok");

    }
}
