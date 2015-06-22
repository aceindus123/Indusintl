using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class Admin_Duration_Edit : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserName"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        string uid = Request.QueryString["cid"].ToString();

        if (!IsPostBack)
        {
            SqlDataAdapter imgtext4 = new SqlDataAdapter("Select * from ln_duration where id=" + uid, connection);
            DataSet ds4 = new DataSet();
            imgtext4.Fill(ds4, "ln_duration");


            if (!ds4.Tables[0].Rows.Count.Equals(0))
            {

                categ.Text = ds4.Tables[0].Rows[0]["Duration_Name"].ToString();
                string dtx = ds4.Tables[0].Rows[0]["DurTypeNam"].ToString();
                ddldtype.SelectedIndex = ddldtype.Items.IndexOf(ddldtype.Items.FindByText(dtx));
            }

        }

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        string streg = string.Empty;
        string arrlx = string.Empty;

        string usid = Request.QueryString["cid"].ToString();
        connection.Open();

        SqlCommand cmd = new SqlCommand("update ln_duration set Duration_Name=@cname,Durationtype=@dtp,DurTypeNam=@dtpn, pdate=@postdate where id=" + usid, connection);


        cmd.Parameters.Add(new SqlParameter("@cname", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@dtp", SqlDbType.Int));
        cmd.Parameters.Add(new SqlParameter("@dtpn", SqlDbType.NVarChar, 100));
        cmd.Parameters.Add(new SqlParameter("@postdate", SqlDbType.DateTime, 20));

        cmd.Parameters["@cname"].Value = categ.Text.ToString();
        cmd.Parameters["@dtp"].Value = Convert.ToInt32(ddldtype.SelectedItem.Value);
        cmd.Parameters["@dtpn"].Value = ddldtype.SelectedItem.Text.ToString();

        cmd.Parameters["@postdate"].Value = DateTime.Now.ToString();

        streg = cmd.ExecuteNonQuery().ToString();
        connection.Close();
      //  Response.Redirect("Admin_Duration.aspx?ret=edit");
        string strscpt = "alert('Duration Updated sucessfully');location.replace('Admin_Duration.aspx');";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strscpt, true);
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Duration.aspx");
    }

}
