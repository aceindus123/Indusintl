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


public partial class newsletter : System.Web.UI.Page
{
    string fulldet = string.Empty;
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
   
    protected void btnsend_Click(object sender, EventArgs e)
    {
              
        string emid = string.Empty;
        string useremail = txtName.Text.ToString();

        string streg = string.Empty;
        string arrlx = string.Empty;
        string[] myArr = useremail.Split(new Char[] { ' ', ',' });


        for (int i = 0; i <= myArr.Length - 1; i++)
        {

            {

              
                emid = myArr[i].ToString();
                string emlid = "http://www.indusintl.net/admin/Unsubscribe.aspx?eid=" + emid;
                fulldet = "<table width='100%'>";

                fulldet = fulldet + "<tr> <td colspan='2'> <img src='http://www.indusintl.net/admin/images/wt_newsltr_hdin.gif' border='0' alt='Indus Learning'/></td></tr>";
                fulldet = fulldet + "<tr> <td>Dear Student, </br> </td> </tr>";
                fulldet = fulldet + "<tr> <td>" + newscontent.Text + "</td> </tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td>Your www.indusintl.net Member Support Team</td></tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td>You are a indusintl.net Subscriber. This E-mail comes to you in accordance with indusintl.net Privacy Policy. To unsubscribe,<a href=" + emlid + " target='_blank'>Click here.</a> indusintl.net is not responsible for content other than this.</td></tr>";
                fulldet = fulldet + "</table>";

                string Msg = "";
               
                try
                {
                    MailMessage mm = new MailMessage();

                    //  mm.From = "learning@indusintl.com";
                    //  mm.From = "info@matrimonyplaza.net";
                    //mm.To = "rlaxmi2003@yahoo.com";

                    mm.From = txtFrom.Text.ToString();
                    mm.To = myArr[i].ToString();
                    Msg += fulldet;

                    mm.Subject = txtSubject.Text.ToString();
                    mm.BodyFormat = MailFormat.Html;

                    mm.Body = Msg;

                    //send the message
                    System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("192.168.1.12");

                    //to authenticate we set the username and password properites on the SmtpClient
                    smtp.Credentials = new System.Net.NetworkCredential("aceindus", "aceindus9");
                   // smtp.Send(mm);
                    SmtpMail.Send(mm);


// old one
                    //MailMessage mm = new MailMessage();
                    //mm.From = txtFrom.Text.ToString();
                    //mm.To = myArr[i].ToString();
                    //Msg += fulldet;

                    //mm.Subject = txtSubject.Text.ToString();
                    //mm.BodyFormat = MailFormat.Html;

                    //mm.Body = Msg;



                    //System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient("localhost");

                    //// Additionally, if required, you

                    //client.Timeout = 500;
                    //// Pass the credentials if the server requires the client to authenticate before it will send e-mail on the client's behalf.
                    //client.Credentials = System.Net.CredentialCache.DefaultNetworkCredentials;



                    //client.Send(txtFrom.Text.ToString(), myArr[i].ToString(), txtSubject.Text.ToString(), Msg);
                    //SmtpMail.Send(mm);

                    ////MailMessage message = new MailMessage(txtFrom.Text.ToString(), myArr[i].ToString(),txtSubject.Text.ToString(),Msg);
                    ////// SmtpClient client = new SmtpClient(server);
                    ////System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient("localhost");
                    ////// Add credentials if the SMTP server requires them.
                    ////client.Credentials = System.Net.CredentialCache.DefaultNetworkCredentials;
                    ////client.Send(message);

                    
                   


                }
                catch (Exception ex)
                {
                    lblerror.Text = ex.Message;
                }
            }
        }

        Response.Redirect("newsletter.aspx?ret=ok");
    }

    protected void btnview_Click(object sender, EventArgs e)
    {

        string emid = string.Empty;
        string useremail = txtName.Text.ToString();

        string streg = string.Empty;
        string arrlx = string.Empty;
        string[] myArr = useremail.Split(new Char[] { ' ', ',' });

        for (int i = 0; i <= myArr.Length - 1; i++)
        {
 
                emid = myArr[i].ToString();
                fulldet = string.Empty;
                string emlid = "Unsubscribe.aspx?eid=" + emid;
                fulldet = "<table width='700px'>";

                fulldet = fulldet + "<tr> <td colspan='2'> <img src='images/wt_newsltr_hdin.gif' border='0' alt='Induslearning'/></td></tr>";
                fulldet = fulldet + "<tr> <td>Dear Student, </br> </td> </tr>";
                fulldet = fulldet + "<tr> <td>" + newscontent.Text+ "</td> </tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td>Your Indusintl.net Member Support Team</td></tr>";
           
              
                fulldet = fulldet + "<tr> <td> </td></tr>";
                fulldet = fulldet + "<tr> <td>You are a indusintl.net Subscriber. This E-mail comes to you in accordance with Indusintl.net Privacy Policy. To unsubscribe,<a href=" + emlid + " target='_blank'>Click here.</a> indusintl.net is not responsible for content other than this.</td></tr>";
                fulldet = fulldet + "</table>";

                maildata.InnerHtml = maildata.InnerHtml +  fulldet;
            }
           
    }

    protected void course_SelectedIndexChanged(object sender, EventArgs e)
    {
        //txtSubject.Text = "News Letter for " + course.SelectedItem.Text;

        DataSet ds = new DataSet();
        string fulldet = string.Empty;
        string strtxt = string.Empty;
        fulldet = "";
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
        if (course.SelectedItem.Value != "All")
        {
            strtxt = "Select * from ln_newsmails where course='" + course.SelectedItem.Value + "' order by Pdate desc";
         
        }

        else
        {
            strtxt = "Select * from ln_newsmails order by Pdate desc";
         
        }
        SqlDataAdapter imgtext = new SqlDataAdapter(strtxt, sqlConnection);
        imgtext.Fill(ds, "ln_newsmails");
        string emid = string.Empty;

        if (!ds.Tables[0].Rows.Count.Equals(0))
        {

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                if (txtName.Text.ToString() != "")
                {
                    txtName.Text = txtName.Text + ",";
                }

                txtName.Text =txtName.Text +  ds.Tables[0].Rows[i]["emailid"].ToString();
            }
        }


    }
  
}
