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
    protected WLearning obj = new WLearning();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        //string username = "";
        //string userlname = "";
        //string useraddress = "";
        //string usercity = "";
        //string userstate = "";
        //string usercountry = "";
        //string userzip = "";
        //string userwork = "";
        //string userhome = "";
        //string usermobile = "";
        //string userfax = "";
        //string useremail = "";
        //string userqualification = "";
        //string usercwork = "";
        //string userenroll = "";
        //string usercsdate = "";
        //string useraboutus = "";
        //string userrname = "";
        //string userstatus = "";
        //string usercomments = "";
        //string userresume = ""; ;
        //username = Convert.ToString(fname.Text);
        //userlname = Convert.ToString(lname.Text);
        //useraddress = Convert.ToString(address.Text);
        //usercity = Convert.ToString(city.Text);
        //userstate = Convert.ToString(state.Text);
        //usercountry = Convert.ToString(country.Text);
        //userzip = Convert.ToString(zip.Text);
        //userhome = Convert.ToString(home.Text);
        //usermobile = Convert.ToString(mobile.Text);
        //useremail = Convert.ToString(email.Text);
        //userenroll = Convert.ToString(course.Text);

        //usercsdate = Convert.ToString(c_startfrom.Text);
        //userrname = Convert.ToString(referral.Text);
        //usercomments = Convert.ToString(add_infm.Text);

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
            obj._stdate = c_startfrom.Text.ToString();
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

        SendMail(obj._sfname, obj._slname, obj._pfname, obj._addr, obj._city, obj._state, obj._country, obj._zip, obj._phone, obj._mobile, obj._email, obj._areu, obj._age, obj._grade, obj._course, obj._stdate, obj._thru, obj._refer, obj._comments);

    }

    private void SendMail(string FName, string LName,string fname, string Address, string City, string State, string Country, string Zip,  string HPhone, string mobile, string Fax, string Mail, string education, string resume, string comment, string csdate, string aboutus, string refname, string comments)
    {
        try
        {
            string Msg = "";
            string Phonenumber = HPhone;
            try
            {
                MailMessage mm = new MailMessage();
                mm.From = new MailAddress("info@indusintl.net", Mail);

                mm.To.Add("learning@indusintl.net");
               

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
