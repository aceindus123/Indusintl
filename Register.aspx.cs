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
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;



public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
        Panel1.Visible = false;
        pwd.Attributes.Add("value", pwd.Text); 
       repwd.Attributes.Add("value",repwd.Text);
      
        
        if(!IsPostBack)
       {
           DataSet ds = new DataSet();
           SqlConnection con = new SqlConnection(@"Password=Aceindus9;Persist Security Info=True;User ID=Indusedu;Initial Catalog=Indusedu;Data Source=Indusedu.db.5312056.hostedresource.com");
           con.Open();
           SqlDataAdapter da = new SqlDataAdapter("select course,filename from coursedetails  ", con);
           da.Fill(ds, "coursedetails");
           course.DataTextField = "course";
           course.DataValueField = "filename";
           course.DataSource = ds;
           course.DataBind();
           course.Items.Insert(0, "- Select -");

       }

    }


    public int Validate_Login(String email, String course)
    {
        SqlConnection con = new SqlConnection(@"Password=Aceindus9;Persist Security Info=True;User ID=Indusedu;Initial Catalog=Indusedu;Data Source=Indusedu.db.5312056.hostedresource.com");
        SqlCommand cmdselect = new SqlCommand();
        cmdselect.CommandType = CommandType.StoredProcedure;
        cmdselect.CommandText = "[dbo].[prcregisteronline]";
        cmdselect.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = email;
        cmdselect.Parameters.Add("@cour", SqlDbType.VarChar, 50).Value = course;
        cmdselect.Parameters.Add("@OutRes", SqlDbType.Int, 4);
        cmdselect.Parameters["@OutRes"].Direction = ParameterDirection.Output;
        cmdselect.Connection = con;
        int Results = 0;
        try
        {
            con.Open();
            cmdselect.ExecuteNonQuery();
            Results = (int)cmdselect.Parameters["@OutRes"].Value;
        }
        catch (SqlException ex)
        {
            lblerror.Text = ex.Message;
        }
        finally
        {
            cmdselect.Dispose();
            if (con != null)
            {
                con.Close();
            }
        }
        return Results;

    }
  
 
    protected void submitbtn_Click(object sender, ImageClickEventArgs e)
    {

         int Results = 0;
        if (email.Text!= "" && course.SelectedItem.Text != "")
        {
            Results = Validate_Login(email.Text, course.SelectedItem.Text);
        }
        else
        {
            lblerror.Text = "Please make sure that the username and the password is Correct";
        }

        if (Results == 1)
        {
           lblerror.Text="you have already registered in this course please try for another course";
           Response.Redirect("message.aspx?Name=" + txtUsername.Text + "&course=" + course.SelectedItem.Text + "");

        }
        else
        {
            lblerror.Text = "";
        }




        string useruname = "";
        string useremail = "";
        string userpwd = "";
        //string userrepwd = "";
        string useraddr = "";
        string userage = "";
        string usergender = "";
        string usertraining = "";
        string usercourse = "";
        string userfilename = "";
        string usercoursefrom = "";
        string usercourseto = "";
        string usercardname = "";
        string usercoursefees = "";
        string usercardno = "";
        string userpaym = "";
        string userexpdatemon = "";
        string userexpyear = "";
        string usercvv = "";
        string usercomments = "";
        string userregdate = "";
        //string userpassword = "";

        useruname = Convert.ToString(txtUsername.Text);
        useremail = Convert.ToString(email.Text);
        userpwd = Convert.ToString(pwd.Text);
        //userrepwd = Convert.ToString(repwd.Text);
        useraddr = Convert.ToString(addr.Text);
        userage = Convert.ToString(age.Text);
        usergender = Convert.ToString(gender.SelectedValue);
        usertraining = Convert.ToString(training.SelectedItem.Text);
        usercourse = Convert.ToString(course.SelectedItem.Text);
        userfilename = Convert.ToString(course.SelectedItem.Value);
        usercoursefrom = Convert.ToString(txtcoursestart.Text);
        usercourseto = Convert.ToString(txtcourseend.Text);
        usercardname = Convert.ToString(txtlname.Text);
        usercoursefees = Convert.ToString(txtcourfee.Text);
        usercardno = Convert.ToString(txtcardno.Text);
        userpaym = Convert.ToString(paym.Text);
        userexpdatemon = Convert.ToString(expdatemon.Text);
        userexpyear = Convert.ToString(expyear.Text);
        usercvv = Convert.ToString(txtcvvcode.Text);
        usercomments = Convert.ToString(comm.Text);
        userregdate = DateTime.Now.ToString();
        //userregdate = getdate();
        //userpassword = Convert.ToString(course.Text);

        string streg = string.Empty;

        SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
        connection.Open();

        SqlCommand cmd = new SqlCommand("insert into Registeronline (uname,email,userpwd,addr,age,gender,training,cour,filename, coursefrom,courseto,cardname,courfees,cardno,paym,expdatemon,expyear,cvv,comm,regdate) VALUES (@uname,@email,@userpwd,@addr,@age,@gender,@training,@cour,@filename,@coursefrom,@courseto,@cardname,@courfees,@cardno,@paym,@expdatemon,@expyear,@cvv,@comm,@regdate);", connection);


        cmd.Parameters.Add(new SqlParameter("@uname", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@email", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@userpwd", SqlDbType.NVarChar, 50));
        //cmd.Parameters.Add(new SqlParameter("@repwd", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@addr", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@age", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@gender", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@training", SqlDbType.NVarChar, 20000));
        cmd.Parameters.Add(new SqlParameter("@cour", SqlDbType.NVarChar, 20000));
        cmd.Parameters.Add(new SqlParameter("@filename", SqlDbType.NVarChar, 20000));
        cmd.Parameters.Add(new SqlParameter("@coursefrom", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@courseto", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@cardname", SqlDbType.NVarChar, 20000));
        cmd.Parameters.Add(new SqlParameter("@courfees", SqlDbType.NVarChar, 20000));
        cmd.Parameters.Add(new SqlParameter("@cardno", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@paym", SqlDbType.NVarChar, 20000));
        cmd.Parameters.Add(new SqlParameter("@expdatemon", SqlDbType.NVarChar, 20000));
        cmd.Parameters.Add(new SqlParameter("@expyear", SqlDbType.NVarChar, 20000));
        cmd.Parameters.Add(new SqlParameter("@cvv", SqlDbType.NVarChar, 20000));

        cmd.Parameters.Add(new SqlParameter("@comm", SqlDbType.NVarChar, 20000));
        cmd.Parameters.Add(new SqlParameter("@regdate", SqlDbType.NVarChar, 20000));
        //cmd.Parameters.Add(new SqlParameter("@password", SqlDbType.NVarChar, 20000));





        cmd.Parameters["@uname"].Value = useruname;
        cmd.Parameters["@email"].Value = useremail;
        cmd.Parameters["@userpwd"].Value = userpwd;
        //cmd.Parameters["@repwd"].Value = userrepwd;

        cmd.Parameters["@addr"].Value = useraddr;
        cmd.Parameters["@age"].Value = userage;

        cmd.Parameters["@gender"].Value = usergender;
        cmd.Parameters["@training"].Value = usertraining;
        cmd.Parameters["@cour"].Value = usercourse;
        cmd.Parameters["@filename"].Value = userfilename;
        cmd.Parameters["@coursefrom"].Value = usercoursefrom;
        cmd.Parameters["@courseto"].Value = usercourseto;
        cmd.Parameters["@cardname"].Value = usercardname;


        cmd.Parameters["@courfees"].Value = usercoursefees;
        cmd.Parameters["@cardno"].Value = usercardno;

        cmd.Parameters["@paym"].Value = userpaym;
        cmd.Parameters["@expdatemon"].Value = userexpdatemon;
        cmd.Parameters["@expyear"].Value = userexpyear;
        cmd.Parameters["@cvv"].Value = usercvv;


        cmd.Parameters["@comm"].Value = usercomments;
        cmd.Parameters["@regdate"].Value = userregdate;

        //cmd.Parameters["@password"].Value = userpassword;

        streg = cmd.ExecuteNonQuery().ToString();
        connection.Close();


        string strScript = "";
        strScript = "alert('Thanking you! You have been registered successfully.');location.replace('Default.aspx');";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);       
        


        SendMail(useruname, useremail, userpwd, useraddr, userage, usergender, usertraining, usercourse, usercoursefrom, usercourseto, usercardname, usercoursefees, usercardno, userpaym, userexpdatemon, userexpyear, usercvv, usercomments);

    }

    private void SendMail(string uname, string email, string userpwd, string addr, string age, string gender,string training, string cour,string coursefrom,string courseto, string cardname,string courfees,string cardno,string paym,string expdatemon, string expyear, string cvv,string comm)
    {
        try
        {
            string Msg = "";

            try
            {
                MailMessage mm = new MailMessage();
                mm.From = new MailAddress("info@indusintl.net", email);

                mm.To.Add("training@indusedu.com");
                mm.To.Add("info@mnhbs.com");
                mm.To.Add("infohyd@mnhbs.com");
                mm.To.Add("accounts@mnhbs.com");

                Msg += "My Name : '" + uname + "'" +

                           "<br>My Email ID :'" + email + "'" +
                            "<br>My Password:'" + userpwd + "'" +
                           //"<br>My Retype Password :'" + repwd + "'" +
                               "<br>My Address :'" + addr + "'" +
                               "<br>My Age :'" + age + "'" +
                                "<br>My Gender : '" + gender + "'" +
                                "<br> Training: '" + training + "'" +
                              "<br> Course : '" + cour + "'" +
                               
                               "<br>coursefrom:'" + coursefrom + "'" +
                               "<br>courseto:'" + courseto + "'" +
                           "<br> Cardname:'" + cardname + "'" +
                              "<br>coursefees :'" + courfees + "'" +
                               "<br>cardno :'" + cardno + "'" +
                               "<br>Paymentthrough:'" + paym + "'" +
                                "<br>Cardexpirydatemonth: '" + expdatemon + "'" +
                                "<br>Cardexpiryyear: '" + expyear + "'" +
                              "<br> Cvv: '" + cvv + "'" +
                              //"<br> Registration Date: '" + regdate + "'" +
                               "<br> Comm : '" + comm + "'";
                                 //"<br> Password: '" + password + "'";



                mm.Subject = "Enrollment form for Indus Training ";
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



    }

    protected void training_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            switch (training.SelectedIndex)
            {
                case 1://onlinetraining
                    course.Visible = true;
                    DataSet ds = new DataSet();
                    SqlConnection con = new SqlConnection(@"Password=Aceindus9;Persist Security Info=True;User ID=Indusedu;Initial Catalog=Indusedu;Data Source=Indusedu.db.5312056.hostedresource.com");
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter("select course,filename from coursedetails  ", con);
                    da.Fill(ds, "coursedetails");
                    course.DataTextField = "course";
                    course.DataValueField = "filename";
                    course.DataSource = ds;
                    course.DataBind();
                    course.Items.Insert(0, "- Select -");
                    break;
                case 2://classroomtraining
                    course.Visible = true;
                    DataSet ds1 = new DataSet();
                    SqlConnection con1 = new SqlConnection(@"Password=Aceindus9;Persist Security Info=True;User ID=Indusedu;Initial Catalog=Indusedu;Data Source=Indusedu.db.5312056.hostedresource.com");
                    con1.Open();
                    SqlDataAdapter da1 = new SqlDataAdapter("select course,filename from coursedetails  ", con1);
                    da1.Fill(ds1, "coursedetails");
                    course.DataTextField = "course";
                    course.DataValueField = "filename";
                    course.DataSource = ds1;
                    course.DataBind();
                    course.Items.Insert(0, "- Select -");
                    break;
            }

            if ((training.Text == "Online Training" && course.Text != "select"))
            {
                Panel1.Visible = true;
            }
            else
            {

                Panel1.Visible = false;
            }
        }
        

    }

    protected void course_SelectedIndexChanged(object sender, EventArgs e)
    {
        if ((training.Text == "Online Training" && course.Text != "select"))
        {
            Panel1.Visible = true;
        }
        else
        {

            Panel1.Visible = false;
        }

    }
    protected void paym_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }


    
    protected void cancelbtn_Click(object sender, ImageClickEventArgs e)
    {
        txtUsername.Text = "";
        email.Text = "";
        pwd.Text = "";
        addr.Text = "";
        age.Text = "";
        gender.SelectedValue = "";
        training.SelectedItem.Text= "";
        course.SelectedItem.Text = "";
        course.SelectedItem.Value = "";
        //txtcoursestart.Text = "";
        //txtcourseend.Text = "";
        txtlname.Text = "";
        txtcourfee.Text = "";
        txtcardno.Text = "";
      
        expdatemon.Text = "";
        expyear.Text = "";
        txtcvvcode.Text = "";
        comm.Text = "";

    }
   
}
