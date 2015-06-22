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


public partial class Admin_NewsEmailsEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        string uid = string.Empty;
        DataSet ds = new DataSet();

        uid = Request.QueryString["cid"].ToString();
        if (!IsPostBack)
        {

            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            SqlDataAdapter imgtext = new SqlDataAdapter("Select * from ln_newsmails where id=" + uid, sqlConnection);
            imgtext.Fill(ds, "ln_newsmails");

            if (!ds.Tables[0].Rows.Count.Equals(0))
            {
                emailid.Text = ds.Tables[0].Rows[0]["emailid"].ToString();
                
            }
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
        try
        {
            string streg = string.Empty;
            string usid = Request.QueryString["cid"].ToString();
            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();

            SqlCommand cmd = new SqlCommand("Update ln_newsmails set emailid=@aemail,course=@aname,pdate=@postdate where id=" + usid + ";", connection);

            cmd.Parameters.Add(new SqlParameter("@aemail", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@aname", SqlDbType.NVarChar, 150));
            cmd.Parameters.Add(new SqlParameter("@postdate", SqlDbType.DateTime, 20));

            cmd.Parameters["@aemail"].Value = emailid.Text.ToString();
            cmd.Parameters["@aname"].Value = course.SelectedItem.Value;

            cmd.Parameters["@postdate"].Value = DateTime.Now.ToString();


            streg = cmd.ExecuteNonQuery().ToString();
            connection.Close();

            Response.Redirect("Admin_NewsEmails.aspx?ret=edit");

        }
        catch
        {
        }

    }

    protected void reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_NewsEmails.aspx");
    }


}
