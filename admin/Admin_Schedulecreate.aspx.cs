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

public partial class Admin_Schedulecreate : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        //if (Request.QueryString["ret"] != null)
        //{
        //    body1.Attributes.Add("onload", "return alertsubmit()");

        //}

        if (!IsPostBack)
        {
            filldown();
            fillgrd();
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
        string streg = string.Empty;
        int indx = course.SelectedIndex;
        string indstr = course.SelectedItem.Value;
        string indtxt = course.SelectedItem.Text;
        connection.Open();

        SqlCommand cmd = new SqlCommand("insert into ln_schedule (Course,Batch_no,C_duration,C_sdate,C_edate,C_timing,Description,country,location,currname,course_type,Grade,Pdate) VALUES (@cname,@bno,@cdur,@cstart,@cend,@ctime,@des,@acountry,@aloc,@acurrname,@acurrtype,@agrd,@postdate);", connection);

//course,c_duration,c_sdate,c_edate,c_timing,description,country,pdate,location,currname,course_type,grade,flag,start_date

        cmd.Parameters.Add(new SqlParameter("@cname", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@bno", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@cdur", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@cstart", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@cend", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@ctime", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@des", SqlDbType.NVarChar, 20000));
        cmd.Parameters.Add(new SqlParameter("@acountry", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@postdate", SqlDbType.DateTime, 20));
        cmd.Parameters.Add(new SqlParameter("@aloc", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@acurrname", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@acurrtype", SqlDbType.Int, 10));
        cmd.Parameters.Add(new SqlParameter("@agrd", SqlDbType.NVarChar, 50));
        //cmd.Parameters.Add(new SqlParameter("@sdt", SqlDbType.DateTime, 20));
        //cmd.Parameters.Add(new SqlParameter("@exdt", SqlDbType.VarChar, 50));


        cmd.Parameters["@cname"].Value = Convert.ToString(course.SelectedItem.Text);
        cmd.Parameters["@bno"].Value = "";

        if (cduration.SelectedItem.Text != "Add New Duration")
        {
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
                cmd.Parameters["@cdur"].Value = Convert.ToString(cduration.SelectedItem.Text);
            }
        }
        else
        {
            cmd.Parameters["@cdur"].Value = Convert.ToString(newduration.Value);
        }

        cmd.Parameters["@cstart"].Value = Convert.ToString(csdate.Value);
        cmd.Parameters["@cend"].Value = Convert.ToString(cenddate.Value);
        cmd.Parameters["@ctime"].Value = Convert.ToString(ctiming.SelectedItem.Text) + Convert.ToString(ctiming2.SelectedItem.Text);
        cmd.Parameters["@des"].Value = Convert.ToString(desc.Text);
        cmd.Parameters["@acountry"].Value = Convert.ToString(region.Text);
        cmd.Parameters["@postdate"].Value = DateTime.Now.ToString();
        cmd.Parameters["@aloc"].Value = Convert.ToString(txtloc.SelectedItem.Value);
        cmd.Parameters["@acurrname"].Value = Convert.ToString(course.SelectedItem.Value);
        string cval = Convert.ToString(crtype.SelectedItem.Value);
        cmd.Parameters["@acurrtype"].Value = Convert.ToInt32(cval);
        cmd.Parameters["@agrd"].Value = Convert.ToString(grade.SelectedItem.Value);
        //cmd.Parameters["@sdt"].Value = Convert.ToDateTime(csdate.Value);
        //cmd.Parameters["@exdt"].Value = Convert.ToString(exmdate.Value);

        streg = cmd.ExecuteNonQuery().ToString();
        connection.Close();
     //   Response.Redirect("Admin_Schedulecreate.aspx?ret=ok");

        string strScript = "alert('Schedule Created sucessfully');location.replace('Admin_Schedule.aspx');";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);
    }


    protected void checkcourse(object sender, EventArgs e)
    {

    }

    protected void region_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (region.SelectedIndex == 1)
        {
            txtloc.Items.Clear();
            //txtloc.Items.Clear;
            txtloc.Items.Add("Hyderabad, AP");
        }
        else
            if (region.SelectedIndex == 2)
            {
              //  txtloc.Items.Clear;
                txtloc.Items.Clear();
                txtloc.Items.Add("Chantilly, VA");
                txtloc.Items.Add("Herndon, VA");
            }
    }
   
    protected void filldown()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from ln_courses", connection);
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
        SqlDataAdapter da = new SqlDataAdapter("select * from ln_grades", connection);
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

    protected void fillduration(string drid)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from ln_duration where Durtypenam ='" + drid +"'", connection);
        DataSet ds1 = new DataSet();
        da.Fill(ds1, "ln_duration");
        if (ds1.Tables[0].Rows.Count > 0)
        {
            cduration.DataSource = ds1;
            cduration.DataTextField = "Duration_name";
            cduration.DataBind();
            cduration.Items.Insert(0, "Add New Duration");

            //for (int i = 0; i <= ds1.Tables[0].Rows.Count; i++)
            //{
            //    cduration.Items.Add("Choose a Duration");
            //    cduration.Items[i].Text = ds1.Tables[0].Rows[i]["ID"].ToString();
            //    cduration.Items[i].Text = ds1.Tables[0].Rows[i]["Durtypenam"].ToString();
            //}
        }
        else
        {
            cduration.Items.Insert(0, "Add New Duration");

            fromto.Visible = false;
            ddl2days.Visible = false;
            trnew.Visible = true;
        }
    }

    protected void crtype_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (crtype.SelectedIndex == 0)
        {
            fromto.Visible = false;
            ddl2days.Visible = false;

        }

        if (crtype.SelectedIndex == 1)
        {
            fromto.Visible = false;
            ddl2days.Visible = false;

        }
        if (crtype.SelectedIndex == 2)
        {
            fromto.Visible = false;
            ddl2days.Visible = false;
        }

        if (crtype.SelectedIndex == 3)
        {
            fromto.Visible = false;
            ddl2days.Visible = false;
        }
        if (crtype.SelectedIndex == 4)
        {
            fromto.Visible = true;
            ddl2days.Visible = true;

        }

        cduration.Items.Clear();
        fillduration((crtype.SelectedItem.Text).ToString());
       //Select * from ln_Duration order by DurationType
    }

    protected void and_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (fromto.SelectedItem.Text == "And")
        {
            ddl2days.Visible = true;
        }
        if (fromto.SelectedItem.Text == "To")
        {
            ddl2days.Visible = true;
        }
        if (fromto.SelectedItem.Text == "Only")
        {
            ddl2days.Visible = false;
        }
    }

    protected void cduration_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (cduration.SelectedItem.Text == "Add New Duration")
        {
            trnew.Visible = true;
        }
        else
        {
            trnew.Visible = false;
        }
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Schedule.aspx");
    }
}
