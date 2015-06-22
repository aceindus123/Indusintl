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
public partial class Admin_Enrolledit : System.Web.UI.Page
{
    protected WLearning obj = new WLearning();
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
            ds = obj.Get_Enroll_Data(uid);
           
            if (!ds.Tables[0].Rows.Count.Equals(0))
            {             
                fname.Text = ds.Tables[0].Rows[0]["stname"].ToString();
                lname.Text = ds.Tables[0].Rows[0]["stLname"].ToString();
                pfname.Text =ds.Tables[0].Rows[0]["Pfname"].ToString();
                plname.Text = ds.Tables[0].Rows[0]["Plname"].ToString();
                txtparent.Text = ds.Tables[0].Rows[0]["parenttype"].ToString();
                address.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                city.Text = ds.Tables[0].Rows[0]["City"].ToString();
                state.Text = ds.Tables[0].Rows[0]["State"].ToString();
                country.Text = ds.Tables[0].Rows[0]["Country"].ToString();
                zip.Text = ds.Tables[0].Rows[0]["Zip"].ToString();
                home.Text = ds.Tables[0].Rows[0]["PhoneNo"].ToString();
                mobile.Text = ds.Tables[0].Rows[0]["MobileNo"].ToString();
                email.Text = ds.Tables[0].Rows[0]["EmailID"].ToString();
                txtareu.Text = ds.Tables[0].Rows[0]["sttype"].ToString();
                txtcage.Text = ds.Tables[0].Rows[0]["Age"].ToString();
                txtgrade.Text = ds.Tables[0].Rows[0]["Grade"].ToString();
                course.Text = ds.Tables[0].Rows[0]["CourseEnroll"].ToString();
                c_startfrom.Text = ds.Tables[0].Rows[0]["StartDate"].ToString();
                txthowu.Text = ds.Tables[0].Rows[0]["HearThru"].ToString();
                referral.Text = ds.Tables[0].Rows[0]["ReferName"].ToString();
                add_infm.Text = ds.Tables[0].Rows[0]["OtherInfo"].ToString();
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




   
    protected void course_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        try
        {
            string usid = Request.QueryString["cid"].ToString();

            obj._sfname = fname.Text.ToString();
            obj._slname = lname.Text.ToString();
            obj._pfname = pfname.Text.ToString();
            obj._plname = plname.Text.ToString();
            obj._ptype = txtparent.SelectedItem.Text.ToString();
            obj._addr = address.Text.ToString();
            obj._city = city.Text.ToString();
            obj._state = state.Text.ToString();
            obj._country = country.Text.ToString();
            obj._zip = zip.Text.ToString();
            obj._phone = home.Text.ToString();
            obj._mobile = mobile.Text.ToString();
            obj._email = email.Text.ToString();
            obj._areu = txtareu.Text.ToString();
            obj._age = txtcage.Text.ToString();
            obj._grade = txtgrade.Text.ToString();
            obj._course = course.Text.ToString();
            obj._stdate = c_startfrom.Text.ToString();
            obj._thru = txthowu.Text.ToString();
            obj._refer = referral.Text.ToString();
            obj._comments = add_infm.Text.ToString();

            string sreg = obj.Update_Enroll(usid);

            if (sreg != "")
            {
               // Response.Redirect("Admin_Enroll.aspx?ret=ed");

                string strscpt = "alert('Enroll Updated sucessfully');location.replace('Admin_Enroll.aspx');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strscpt, true);
            }
        }
        catch (Exception ex)
        {
            lblerr.Text = ex.Message.ToString();
        }
    }

    protected void reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Enroll.aspx");
    }
}
