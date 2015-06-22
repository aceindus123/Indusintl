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
using System.Net;
using System.Net.Mail;
using System.Web.SessionState;
using System.IO;


public partial class Enroll : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, EventArgs e)
    {


        string username = "";
        string userlname = "";
        string useraddress = "";
        string usercity = "";
        string userstate = "";
        string usercountry = "";
        string userzip = "";
        string userwork = "";
        string userhome = "";
        string usermobile = "";
        string userfax = "";
        string useremail = "";
        string userqualification = "";
        string usercwork = "";
        string userenroll = "";
        string usercsdate = "";
        string useraboutus = "";
        string userrname = "";
        string userstatus = "";
        string usercomments = "";
        string userresume = ""; ;
        username = Convert.ToString(fname.Text);
        userlname = Convert.ToString(lname.Text);
        useraddress = Convert.ToString(address.Text);
        usercity = Convert.ToString(city.Text);
        userstate = Convert.ToString(state.Text);
        usercountry = Convert.ToString(country.Text);
        userzip = Convert.ToString(zip.Text);
        userhome = Convert.ToString(home.Text);
        usermobile = Convert.ToString(mobile.Text);
        useremail = Convert.ToString(email.Text);
        userenroll = Convert.ToString(course.Text);

        usercsdate = Convert.ToString(c_startfrom.Text);
        userrname = Convert.ToString(referral.Text);
        usercomments = Convert.ToString(add_infm.Text);

        SendMail(username, userlname, useraddress, usercity, userstate, usercountry, userzip, userwork, userhome, usermobile, userfax, useremail, userqualification, userresume, usercomments, usercsdate, useraboutus, username, userenroll);

    }

    private void SendMail(string FName, string LName, string Address, string City, string State, string Country, string Zip, string WPhone, string HPhone, string mobile, string Fax, string Mail, string education, string resume, string comment, string csdate, string aboutus, string refname, string course)
    {
        try
        {
            string Msg = "";
            string Phonenumber = HPhone;
            try
            {
                MailMessage mm = new MailMessage();
                mm.From = new MailAddress("info@indusintl.net", Mail);

                mm.To.Add("learning@indusintl.com");
               

                Msg += "My Name : '" + FName + "'" + " " + "'" + LName + "'" +
                           "<br>Parent/Guardian :'" + txtparent.SelectedItem.Text.ToString() + "'" +
                           "<br>Parent Name :'" + pfname.Text.ToString() + "'" + " " + plname.Text.ToString() +
                           "<br>My mail ID :'" + Mail + "'" +
                            "<br>My Address:'" + Address + "'" +
                             "<br>My City :'" + City + "'" +
                              "<br>My State :'" + State + "'" +
                               "<br>My Country :'" + Country + "'" +
                                "<br>My Mobile Number : '" + mobile + "'" +
                              "<br>My Home Phone : '" + Phonenumber + "'" +
                               "<br>My Educational Qualification : '" + education + "'" +
                                "<br>Course opted : '" + course + "'" +
                                "<br>Course Starting Date : '" + csdate + "'" +
                                "<br>Are You? :'" + txtareu.Text.ToString() + "'" +
                                "<br>Grade: " +  txtgrade.SelectedItem.Text.ToString() + "'" +
                                   "<br>I heard about you from : '" + txthowu.Text.ToString() + "'" +
                                       "<br>Referred Name : '" + refname + "'" +
                                     
                                      "<br>Comments : '" + comment + "'";
                mm.Subject = "Enrollment form for Indus Learning ";
                mm.IsBodyHtml = true;

               
                mm.Body = Msg;
                SmtpClient smtp = new SmtpClient();
                smtp.Send(mm);
            }
            catch (Exception ex)
            {
                lblerror.Text = ex.Message;
            }
        }
        catch (Exception ee)
        {
            lblerror.Text = ee.Message;
        }
        Response.Redirect("Enroll.aspx?ret=ok");
    }


   
    protected void cancelbtn_Click(object sender, EventArgs e)
    {

    }
    protected void course_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
