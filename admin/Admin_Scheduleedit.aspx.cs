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

public partial class Admin_Scheduleedit : System.Web.UI.Page
{
    SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);

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
            filldown();
            fillgrd();

            //SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            SqlDataAdapter imgtext = new SqlDataAdapter("Select * from ln_schedule where id=" + uid, sqlConnection);
            imgtext.Fill(ds, "ln_schedule");

            if (!ds.Tables[0].Rows.Count.Equals(0))
            {
                course.Items[0].Text = ds.Tables[0].Rows[0]["Course"].ToString();
                batchno.Text = ds.Tables[0].Rows[0]["Batch_no"].ToString();
                cduration.Text = ds.Tables[0].Rows[0]["C_duration"].ToString();
                grade.Text = ds.Tables[0].Rows[0]["Grade"].ToString();

                csdate.Value = ds.Tables[0].Rows[0]["C_sdate"].ToString();
                cenddate.Value = ds.Tables[0].Rows[0]["C_edate"].ToString();
                ////exmdate.Value = ds.Tables[0].Rows[0]["ExamDate"].ToString();
                //ctiming.Items[0].Text = ds.Tables[0].Rows[0]["C_timing"].ToString();
                //ctiming.Items[0].Value = "0";

               string cts = ds.Tables[0].Rows[0]["C_timing"].ToString();
               ctiming.SelectedIndex = ctiming.Items.IndexOf(ctiming.Items.FindByText(cts));
                desc.Text = ds.Tables[0].Rows[0]["Description"].ToString();
                region.Text = ds.Tables[0].Rows[0]["Country"].ToString();

                if (region.Text == "US")
                {
                    txtloc.Items.Clear();
                    txtloc.Items.Add("Chantilly, VA");
                    txtloc.Items.Add("Herndon, VA");
                }
                else
                {
                    txtloc.Items.Clear();
                    txtloc.Items.Add("Hyderabad, AP");
                }
                hidState11.Value = ds.Tables[0].Rows[0]["course_type"].ToString();

                if (hidState11.Value == "1" || hidState11.Value == "2")
                {
                    ddl2days.Visible = false;
                    fromto.Visible = false;
                }
                if(hidState11.Value == "3")
                {
                    ddl2days.Visible = true;
                    fromto.Visible = true;
                }
                crtype.SelectedIndex = crtype.Items.IndexOf(crtype.Items.FindByValue(hidState11.Value.ToString()));
                filldur(crtype.SelectedIndex);

                
                grade.Items[0].Text = ds.Tables[0].Rows[0]["Grade"].ToString();
                string cdtxt = ds.Tables[0].Rows[0]["C_duration"].ToString();
                cduration.SelectedIndex = cduration.Items.IndexOf(cduration.Items.FindByValue(cdtxt));
                
                hidState.Value = ds.Tables[0].Rows[0]["location"].ToString();
                txtloc.Text = ds.Tables[0].Rows[0]["location"].ToString();
                selloc.Text = hidState.Value;

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
            string cval = string.Empty;
            string streg = string.Empty;
            string usid = Request.QueryString["cid"].ToString();
            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();

            SqlCommand cmd = new SqlCommand("Update ln_schedule set Course=@cname,Batch_no=@bno,C_duration=@cdur,C_sdate=@cstart,C_edate=@cend,C_timing=@ctime,Description=@des,country=@acountry,location=@aloc,currname=@acurrname,course_type=@acurrtype,Grade=@agrd,Start_date=@sdt,ExamDate=@exdt where id=" + usid + ";", connection);


            cmd.Parameters.Add(new SqlParameter("@cname", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@bno", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@cdur", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@cstart", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@cend", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@ctime", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@des", SqlDbType.NVarChar, 20000));
            cmd.Parameters.Add(new SqlParameter("@acountry", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@aloc", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@acurrname", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@acurrtype", SqlDbType.Int, 10));
            cmd.Parameters.Add(new SqlParameter("@agrd", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@sdt", SqlDbType.DateTime, 20));
            cmd.Parameters.Add(new SqlParameter("@exdt", SqlDbType.VarChar, 50));
            cmd.Parameters["@cname"].Value = Convert.ToString(course.SelectedItem.Text);


            cmd.Parameters["@bno"].Value = Convert.ToString(batchno.Text);

            if (Convert.ToString(crtype.SelectedItem.Value) == "3")
            {
                if (fromto.SelectedItem.Text.ToString() == "Only")
                {
                    cmd.Parameters["@cdur"].Value = Convert.ToString(cduration.Text);
                }
                else
                {
                    cmd.Parameters["@cdur"].Value = Convert.ToString(cduration.Text) + " " + Convert.ToString(fromto.SelectedItem.Text) + " " + ddl2days.SelectedItem.Text.ToString();
                }
            }
            else
            {
                cmd.Parameters["@cdur"].Value = Convert.ToString(cduration.Text);
            }



            //cmd.Parameters["@cdur"].Value = Convert.ToString(cduration.Text);
            cmd.Parameters["@cstart"].Value = Convert.ToString(csdate.Value);
            cmd.Parameters["@cend"].Value = Convert.ToString(cenddate.Value);
            cmd.Parameters["@exdt"].Value = Convert.ToString(exmdate.Value);
            //cmd.Parameters["@ctime"].Value = Convert.ToString(ctiming.SelectedItem.Text);
            cmd.Parameters["@ctime"].Value = Convert.ToString(ctiming.SelectedItem.Text) + Convert.ToString(ctiming2.SelectedItem.Text);
            cmd.Parameters["@des"].Value = Convert.ToString(desc.Text);
            cmd.Parameters["@acountry"].Value = Convert.ToString(region.Text);
            if (txtloc.SelectedItem.Value != "")
                cmd.Parameters["@aloc"].Value = Convert.ToString(txtloc.SelectedItem.Value);
            else
                cmd.Parameters["@aloc"].Value = Convert.ToString(hidState.Value);

            //cmd.Parameters["@aloc"].Value = Convert.ToString(hidState.Value);
            cmd.Parameters["@acurrname"].Value = Convert.ToString(course.SelectedItem.Value);
            cmd.Parameters["@agrd"].Value = Convert.ToString(grade.SelectedItem.Value);

            if (crtype.SelectedIndex != 0)
                cval = Convert.ToString(crtype.SelectedItem.Value);

            else
                cval = Convert.ToString(hidState11.Value);

            cmd.Parameters["@acurrtype"].Value = Convert.ToInt32(cval);
            cmd.Parameters["@sdt"].Value = Convert.ToDateTime(csdate.Value);


            streg = cmd.ExecuteNonQuery().ToString();
            connection.Close();
            // Response.Redirect("Admin_Schedule.aspx?ret=edit");
            string strscpt = "alert('Schedule Updated sucessfully');location.replace('Admin_Schedule.aspx');";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strscpt, true);
        }
        catch
        {

        }
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Schedule.aspx");
    }

    protected void checkcourse(object sender, EventArgs e)
    {
        //if (course.SelectedItem.Value == "New")
        //{
        //    newcourse.Visible = true;
        //    newcourse.Enabled = true;
        //}

    }

    protected void region_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (region.SelectedIndex == 1)
        {
            txtloc.Items.Clear();
            txtloc.Items.Add("Hyderabad, AP");
        }
        else
            if (region.SelectedIndex == 2)
            {
                txtloc.Items.Clear();
                txtloc.Items.Add("Chantilly, VA");
                txtloc.Items.Add("Herndon, VA");
            }
    }

    protected void crtype_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        filldur(crtype.SelectedIndex);
    }

    protected void filldur(int cid)
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
       
        SqlDataAdapter da = new SqlDataAdapter("select * from ln_duration where durationtype = " + cid, connection);
        DataSet ds1 = new DataSet();
        da.Fill(ds1, "ln_duration");
        if (ds1.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i <= ds1.Tables[0].Rows.Count-1; i++)
            {
                cduration.Items.Add("Choose a Duration");
                cduration.Items[i].Value = ds1.Tables[0].Rows[i]["ID"].ToString();
                cduration.Items[i].Text = ds1.Tables[0].Rows[i]["Duration_Name"].ToString();
            }
        }

        if (cid == 1 || cid == 2)
        {
            fromto.Visible = false;
            ddl2days.Visible = false;
        }
        else
        {
            fromto.Visible = true;
            ddl2days.Visible = true;
        }


        //if (cid == 1)
        //{
        //    fromto.Visible = false;
        //    ddl2days.Visible = false;
        //    cduration.Items.Clear();
        //    cduration.Items.Add("2 Weekends - Sat & Sun");
        //    cduration.Items.Add("3 Weekends - Sat & Sun");
        //    cduration.Items.Add("4 Weekends - Sat & Sun");
        //    cduration.Items.Add("5 Weekends - Sat & Sun");
        //    cduration.Items.Add("6 Weekends - Sat & Sun");
        //    cduration.Items.Add("6 Weekends - Sat only");

        //    cduration.Items.Add("Every Week - Mon only");
        //    cduration.Items.Add("Every Week - Tue only");
        //    cduration.Items.Add("Every Week - Wed only");
        //    cduration.Items.Add("Every Week - Thu only");
        //    cduration.Items.Add("Every Week - Fri only");
        //    cduration.Items.Add("Every Week - Sat only");
        //    cduration.Items.Add("Every Week - Sun only");
        //    cduration.Items.Add("Every Week - Sat & Sun");
        //    cduration.Items.Add("Every Week - Sat Or Sun");
        //}
        //if (cid == 2)
        //{
        //    fromto.Visible = false;
        //    ddl2days.Visible = false;
        //    cduration.Items.Clear();
        //    cduration.Items.Add("2 Weeks - Mon,Wed,Fri");
        //    cduration.Items.Add("3 Weeks - Mon,Wed,Fri");
        //    cduration.Items.Add("4 Weeks - Mon,Wed,Fri");
        //    cduration.Items.Add("5 Weeks - Mon,Wed,Fri");
        //    cduration.Items.Add("6 Weeks - Mon,Wed,Fri");

        //    cduration.Items.Add("2 Weeks - Monday Only");
        //    cduration.Items.Add("3 Weeks - Monday Only");
        //    cduration.Items.Add("4 Weeks - Monday Only");
        //    cduration.Items.Add("5 Weeks - Monday Only");
        //    cduration.Items.Add("6 Weeks - Monday Only");

        //    cduration.Items.Add("2 Weeks - Tuesday Only");
        //    cduration.Items.Add("3 Weeks - Tuesday Only");
        //    cduration.Items.Add("4 Weeks - Tuesday Only");
        //    cduration.Items.Add("5 Weeks - Tuesday Only");
        //    cduration.Items.Add("6 Weeks - Tuesday Only");

        //    cduration.Items.Add("2 Weeks - Thursday Only");
        //    cduration.Items.Add("3 Weeks - Thursday Only");
        //    cduration.Items.Add("4 Weeks - Thursday Only");
        //    cduration.Items.Add("5 Weeks - Thursday Only");
        //    cduration.Items.Add("6 Weeks - Thursday Only");

        //    cduration.Items.Add("2 Weeks - Friday Only");
        //    cduration.Items.Add("3 Weeks - Friday Only");
        //    cduration.Items.Add("4 Weeks - Friday Only");
        //    cduration.Items.Add("5 Weeks - Friday Only");
        //    cduration.Items.Add("6 Weeks - Friday Only");

        //    cduration.Items.Add("2 Weeks - Saturday Only");
        //    cduration.Items.Add("3 Weeks - Saturday Only");
        //    cduration.Items.Add("4 Weeks - Saturday Only");
        //    cduration.Items.Add("5 Weeks - Saturday Only");
        //    cduration.Items.Add("6 Weeks - Saturday Only");

        //    cduration.Items.Add("2 Weeks - Tue,Thu");
        //    cduration.Items.Add("3 Weeks - Tue,Thu");
        //    cduration.Items.Add("4 Weeks - Tue,Thu");
        //    cduration.Items.Add("5 Weeks - Tue,Thu");
        //    cduration.Items.Add("6 Weeks - Tue,Thu");

        //    cduration.Items.Add("2 Weeks - Wed,Thu");
        //    cduration.Items.Add("3 Weeks - Wed,Thu");
        //    cduration.Items.Add("4 Weeks - Wed,Thu");
        //    cduration.Items.Add("5 Weeks - Wed,Thu");
        //    cduration.Items.Add("6 Weeks - Wed,Thu");

        //    cduration.Items.Add("Every Week - Mon only");
        //    cduration.Items.Add("Every Week - Tue only");
        //    cduration.Items.Add("Every Week - Wed only");
        //    cduration.Items.Add("Every Week - Thu only");
        //    cduration.Items.Add("Every Week - Fri only");
        //    cduration.Items.Add("Every Week - Sat only");
        //    cduration.Items.Add("Every Week - Sun only");
        //}

        //if (cid == 3)
        //{
        //    fromto.Visible = true;
        //    ddl2days.Visible = true;
        //    cduration.Items.Clear();
        //    cduration.Items.Add("Monday");
        //    cduration.Items.Add("Tuesday");
        //    cduration.Items.Add("Wednesday");
        //    cduration.Items.Add("Thursday");
        //    cduration.Items.Add("Friday");
        //    cduration.Items.Add("Saturday");
        //    cduration.Items.Add("Sunday");
        //}

    }

    protected void txtloc_SelectedIndexChanged(object sender, EventArgs e)
    {
        selloc.Text = txtloc.SelectedItem.Text.ToString();
    }

    protected void filldown()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from ln_courses", sqlConnection);
        DataSet ds1 = new DataSet();
        da.Fill(ds1, "ln_courses");
        if (ds1.Tables[0].Rows.Count - 1 > 0)
        {
            for (int i = 1; i <= ds1.Tables[0].Rows.Count; i++)
            {
                course.Items.Add("Choose a Course");
                course.Items[i].Value = ds1.Tables[0].Rows[i - 1]["Courses_Name"].ToString();
                course.Items[i].Text = ds1.Tables[0].Rows[i - 1]["Courses_Name"].ToString();
            }
        }

    }

    protected void fillgrd()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from ln_grades", sqlConnection);
        DataSet ds1 = new DataSet();
        da.Fill(ds1, "ln_grades");
        if (ds1.Tables[0].Rows.Count - 1 > 0)
        {
            for (int i = 1; i <= ds1.Tables[0].Rows.Count; i++)
            {
                grade.Items.Add("Choose a Grade");
                grade.Items[i].Value = ds1.Tables[0].Rows[i - 1]["Grade_Name"].ToString();
                grade.Items[i].Text = ds1.Tables[0].Rows[i - 1]["Grade_Name"].ToString();
            }
        }

    }

}
