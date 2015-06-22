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
using System.Net;
using System.Net.Mail;
using System.Web.SessionState;

public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void imgbtnContinue_Click(object sender, EventArgs e)
    {
        int x = 0;
        string strResult = string.Empty;

        try
        {
            MailMessage mm = new MailMessage();
            txtEmail.Text = txtEmail.Text.Trim();

            mm.From = new MailAddress("info@indusintl.net", txtEmail.Text);
            string strBody = string.Empty;

            string strTo = "learning@indusintl.com";
            mm.To.Add(strTo);

            strBody = "";
            strBody = "<table width='100%'  border='0' align='center' cellpadding='0' cellspacing='0'><tr><td colspan='2'><a href='www.industraining.net'><img src='http://www.indusintl.net/images/logo.jpg' width='342' height='76' border='0'></a></td></tr>";
            strBody = strBody + "<tr><td height='3'></td></tr><tr><td><b>Message From " + txtName.Text + " ,</b></td></tr>";
            strBody = strBody + "<tr><td>Phone No. " + tel.Text + " ,</td></tr>";
            strBody = strBody + "<tr><td>Email ID: " + txtEmail.Text + ",  </td></tr>";
            strBody = strBody + "<tr><td height='3'></td></tr><tr><td>Address: " + address.Text + " ,</td></tr>";
            x = country.SelectedIndex;
            strBody = strBody + "<tr><td height='3'></td></tr><tr><td>Country: " + country.Items[x].Text.ToString() + " ,</td></tr>";
            
            strBody = strBody + "<tr><td height='2'></td></tr><tr><td><table border='0' cellpadding='0' cellspacing='0'><tr><td>Suggestions: </td><td>:</td><td>" + comments.Text + "</td></tr>";
            strBody = strBody + "<tr><td><hr height='3'></td></tr><tr><td height='5'></td></tr><tr><td>Please send me details.</td></tr><tr><td></td></tr>";
            strBody = strBody + "</table>";
            mm.IsBodyHtml = true;
            mm.Body = strBody;
            mm.Subject = "Request Details for IndusLearning";
            SmtpClient smtp = new SmtpClient();

            smtp.Send(mm);

            Response.Redirect("Thanks.aspx?flag=cont");
        }

        catch(Exception ex)
        {
            tderr.InnerHtml = ex.Message.ToString();
        }
    }
}
