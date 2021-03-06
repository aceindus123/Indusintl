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

public partial class Admin_Duration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        //if (Request.QueryString["ret"] == "ok")
        //{
        //    body1.Attributes.Add("onload", "return alertdelete()");

        //}
        //if (Request.QueryString["ret"] == "edit")
        //{
        //    body1.Attributes.Add("onload", "return alertedit()");

        //}

        DataSet ds = new DataSet();
        string fulldet = string.Empty;

        fulldet = "<br /><br /><table align='center' width='80%' border='1' valign='top' cellspacing='0' cellpadding='0'>";


        fulldet = fulldet + "<tr> <td colspan='3' align='center' bgcolor='#ffffff' width='60%'><font color='#003399' size='3pt'><b>Course Durations List</b></font> </td>";

        fulldet = fulldet + "<td colspan='2' align='center' bgcolor='#ffffff' width='40%'><font color='#003399' size='3pt'><b><a href='Admin_Duration_Create.aspx' >Add New Duration</a></b></font> </td></tr>";
        //fulldet = fulldet + "<td colspan='5' align='right' bgcolor='#ffffff' width='100%'><font color='#003399' size='2pt'><b>Actions</font> </td></tr>";

        fulldet = fulldet + "<tr><td align='center' valign='middle' bgcolor='#ffffff' width='30%'><font color='#cc0099' size='2pt'><b>Duration</b></font></td>";
        fulldet = fulldet + "<td align='center' valign='middle' bgcolor='#ffffff' width='20%'> <font color='#cc0099' size='2pt'><b>Duration Type</b></font></td>";

        fulldet = fulldet + "<td align='center' valign='middle' bgcolor='#ffffff' width='20%'> <font color='#cc0099' size='2pt'><b>Posted On</b></font></td>";
        fulldet = fulldet + "<td align='center' valign='middle' bgcolor='#ffffff' width='15%'> <font color='#cc0099' size='2pt'><b>Edit</b></font></td>";
        fulldet = fulldet + "<td align='center' valign='middle' bgcolor='#ffffff' width='15%'><font color='#cc0099' size='2pt'><b>Delete</b></font></td></tr>";

        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
        SqlDataAdapter imgtext = new SqlDataAdapter("Select * from ln_Duration order by DurationType", sqlConnection);
        imgtext.Fill(ds, "ln_duration");
        string cnm = string.Empty;

        if (!ds.Tables[0].Rows.Count.Equals(0))
        {

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {

                cnm = ds.Tables[0].Rows[i]["Duration_Name"].ToString();

                fulldet = fulldet + "<tr><td align='left' class='lable16' valign='middle' width='30%' bgcolor='LightCyan'>";

                fulldet = fulldet + ds.Tables[0].Rows[i]["Duration_Name"].ToString() + "</td><td align='center' class='lable16' width='25%' valign='center' bgcolor='LightCyan'>";

                fulldet = fulldet + ds.Tables[0].Rows[i]["DurTypeNam"].ToString() + "</td><td align='center' class='lable16' width='10%' valign='center' bgcolor='LightCyan'>";

                fulldet = fulldet + ds.Tables[0].Rows[i]["pdate"].ToString() + "</td><td align='center' class='lable16' width='15%' valign='center' bgcolor='LightCyan'>";

                fulldet = fulldet + "<a href='Admin_Duration_Edit.aspx?cid=" + ds.Tables[0].Rows[i]["id"].ToString() + "'><img src='images/edit.gif' alt='Edit Grade Details' width='18' height='18' border='0' /></a>" + "</td><td align='center' class='lable' width='15%' valign='center' bgcolor='LightCyan'>";
                fulldet = fulldet + "<a href='Admin_Duration_Delete.aspx?cid=" + ds.Tables[0].Rows[i]["id"].ToString() + "'><img src='images/delete.gif' alt='Delete Grade Details' width='18' height='18' border='0' /></a></td></tr>";
            }
        }

        fulldet = fulldet + "</table>";
        tdcontent.InnerHtml = fulldet;
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
}
