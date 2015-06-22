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

public partial class Admin_Enroll : System.Web.UI.Page
{
    
   WLearning  obj = new WLearning();
    DataSet ds;
    int CID = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Default.aspx");
        }

       


        if (!IsPostBack)
        {
            Bind();
        }
    }
  
    public void Bind()
    {
        ds = new DataSet();
        ds = obj.Get_Enroll_DataAll();

        if (ds.Tables[0].Rows.Count > 0)
        {
            GVData.DataSource = ds;
            GVData.DataBind();
        }
        //else
        //{
        //    Response.Redirect("Admin_Enroll.aspx");
        //}
    }

    protected void GVData_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GVData.PageIndex = e.NewPageIndex;
        Bind();
    }

    protected void btnNew_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_EnrollCreate.aspx");
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
         for (int i = 0; i < GVData.Rows.Count; i++)
        {
            CheckBox cbox = (CheckBox)GVData.Rows[i].FindControl("chkselect");
            if (cbox.Checked)
            {
                CID = Convert.ToInt32(GVData.DataKeys[i].Values[0].ToString());
            }
        }

         if (CID != 0)
         {
             Response.Redirect("Admin_EnrollEdit.aspx?cid=" + CID);
         }
         else
         {
             lblerr.Text = "You should select atleast one row for Edit";
         }
    }

    protected void btnDel_Click(object sender, EventArgs e)
    {
        string xid = string.Empty;
        for (int i = 0; i < GVData.Rows.Count; i++)
        {
            CheckBox cbox = (CheckBox)GVData.Rows[i].FindControl("chkselect");
            if (cbox.Checked)
            {
                xid = GVData.DataKeys[i].Values[0].ToString();
            }
        }

        if (xid != "")
        {
            string streg = obj.Delete_Enroll(xid);
            if (streg != "")
                Response.Redirect("Admin_Enroll.aspx");
        }
        else
        {
            lblerr.Text = "You should select atleast one row for Delete";
        }
    }
    protected void btnMail_Click(object sender, EventArgs e)
    {
        string xid = string.Empty;
        for (int i = 0; i < GVData.Rows.Count; i++)
        {
            CheckBox cbox = (CheckBox)GVData.Rows[i].FindControl("chkselect");
            if (cbox.Checked)
            {
                //xid = GVData.DataKeys[i].Values[0].ToString();
                if (xid != "")
                    xid += ", " + GVData.Rows[i].Cells[9].Text.ToString();
                else
                    xid = GVData.Rows[i].Cells[9].Text.ToString();
            }
        }

        if (xid != "")
        {
            Session.Add("Emails", xid);
            Response.Redirect("SendMail.aspx");
        }
        else
        {
            lblerr.Text = "You should select atleast one row for Sending Mails";
        }
     
    }
}
