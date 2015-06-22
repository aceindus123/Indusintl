using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;

public partial class Admin_EnrollCreate : System.Web.UI.Page
{
    protected WLearning obj = new WLearning();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        try
        {
            obj._sfname = fname.Text.ToString();
            obj._slname = lname.Text.ToString();
            obj._pfname = pfname.Text.ToString();
            obj._plname = plname.Text.ToString();
            obj._ptype = txtparent.SelectedItem.Text.ToString();
            obj._addr = address.Text.ToString();
            obj._city = city.Text.ToString();
            obj._state = state.Text.ToString();
            if (obj._country == "")
            {
                obj._country = country.Text.ToString();
            }
            else
            {
                obj._country = "NULL";
            }

            obj._zip = zip.Text.ToString();
            if (obj._phone == "")
            {
                obj._phone = home.Text.ToString();
            }
            else
            {
                obj._phone = "NULL";
            }
            obj._mobile = mobile.Text.ToString();
            obj._email = email.Text.ToString();
            obj._areu = txtareu.Text.ToString();
            obj._age = txtcage.Text.ToString();
            obj._grade = txtgrade.Text.ToString();
            obj._course = course.Text.ToString();
            if (obj._stdate == "")
            {
                obj._stdate = c_startfrom.Value;
            }
            else
            {
                obj._stdate = "NULL";
            }
            obj._thru = txthowu.Text.ToString();
            if (obj._refer == "")
            {
                obj._refer = referral.Text.ToString();
            }
            else
            {
                obj._refer = "NULL";
            }
            if (obj._comments == "")
            {
                obj._comments = add_infm.Text.ToString();
            }
            else
            {
                obj._comments = "NULL";
            }

            string sreg = obj.Insert_Enroll();
            if (sreg != "")
            {
                Response.Redirect("Admin_EnrollCreate.aspx");
            }
        }
        catch (Exception ex)
        {
            lblerr.Text = ex.Message.ToString();
        }

    }


    protected void cancelbtn_Click(object sender, EventArgs e)
    {

    }
    protected void course_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
