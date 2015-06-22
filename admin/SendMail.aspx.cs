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
using System.Net;
using System.Net.Mail;
using System.Web.SessionState;

public partial class SendMail : System.Web.UI.Page
{
    string xid = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Request.QueryString["cid"] != null)
        //    xid = Request.QueryString["cid"].ToString();
        if (Session["Emails"] != null)
            xid = Session["Emails"].ToString();

        // string[] emails = new string[];
        if (!IsPostBack)
        {
            toaddr.Text = xid;
            fromaddr.Text = "info@indusintl.net";
            subj.Text = "indusintl";
        }
    }
    protected void mailsend_Click(object sender, EventArgs e)
    {

        try
        {
            MailMessage mm = new MailMessage();
           
            mm.From = new MailAddress("info@indusintl.net", fromaddr.Text.ToString());
           
            xid = toaddr.Text.ToString();
            string[] xxx;
            xxx = xid.Split(",".ToCharArray());
            string x = "";
            for (int i = 0; i <= xxx.Length - 1; i++)
            {
                x = xxx[i].ToString();
                mm.To.Add(x);
            }
          
            mm.IsBodyHtml = true;
            mm.Body = txtmsg.Text;
            mm.Subject = subj.Text.ToString();
            SmtpClient smtp = new SmtpClient();

            smtp.Send(mm);
            msglbl.Text = "Successfully sent mail";

           Response.Redirect("Thanks.aspx");
        }

        catch (Exception ex)
        {
            msglbl.Text = ex.Message.ToString();
        }
    }
    
}
