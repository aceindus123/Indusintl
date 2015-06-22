﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class Admin_Courses_Create : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {

        //if (Session["UserName"] == null)
        //{
        //    Response.Redirect("Default.aspx");
        //}
        //if (Request.QueryString["ret"] != null)
        //{
        //    body1.Attributes.Add("onload", "return alertsubmit()");

        //}

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string streg = string.Empty;
        string arrlx = string.Empty;

        connection.Open();
        SqlCommand cmd = new SqlCommand("insert into ln_courses (Courses_Name,pdate) VALUES (@cname,@postdate);", connection);
        cmd.Parameters.Add(new SqlParameter("@cname", SqlDbType.NVarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@postdate", SqlDbType.DateTime, 20));
        cmd.Parameters["@cname"].Value = categ.Text.ToString();
        cmd.Parameters["@postdate"].Value = DateTime.Now.ToString();
        streg = cmd.ExecuteNonQuery().ToString();
        connection.Close();
        string strscpt = "alert('Course Posted sucessfully');location.replace('Admin_Courses.aspx');";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strscpt, true);
    }


    protected void reset_Click(object sender, EventArgs e)
    {
      //  categ.Text = "";
        Response.Redirect("Admin_Courses.aspx");
    }
}
