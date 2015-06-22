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
using System.Data.SqlClient;
using System.Web.Mail;
using System.Web.SessionState;
using System.Xml;
using System.Text;

public partial class Upload_File : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserName"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        if (Request.QueryString["ret"] == "ok")
        {
            body1.Attributes.Add("onload", "return alertdelete()");

        }

        if (Request.QueryString["ret"] == "add")
        {
            body1.Attributes.Add("onload", "return alertadd()");

        }

        if (Request.QueryString["ret"] == "err")
        {
            body1.Attributes.Add("onload", "return alerterr()");

        }

        if (Request.QueryString["ret"] == "exist")
        {
            body1.Attributes.Add("onload", "return alertexist()");

        }

        DataSet ds = new DataSet();
        string fulldet = string.Empty;
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
        SqlDataAdapter imgtext = new SqlDataAdapter("Select * from ln_Upload_Files order by udate", sqlConnection);
        imgtext.Fill(ds, "ln_Upload_Files");
                     
        if (!ds.Tables[0].Rows.Count.Equals(0))
        {
            fulldet = "<table width='20%'>";
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
             
                fulldet = fulldet + "<tr><td align='left' class='style8' valign='middle' width='20%' >";
               
                string imgname = ds.Tables[0].Rows[i]["File_Name"].ToString();
                string imgname1 = "UploadFiles/" + imgname;
       
                fulldet = fulldet + "<b><a href='" + imgname1 + "' target='_blank'>" + ds.Tables[0].Rows[i]["File_Name"].ToString();
                //fulldet = fulldet + "</a></td><td class='data'><a href='File_Delete.aspx?cid=" + ds.Tables[0].Rows[i]["id"].ToString() + "'>   Delete </a>"; 
                
                
                fulldet = fulldet + "</a></td> </tr>";

            }
            fulldet = fulldet + "</table>";
        }
        fupload.InnerHtml = fulldet;
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


    protected void btnLogin_Click(object sender, EventArgs e)
    {
        tdmsg.InnerHtml = "";
        //string fileArray[] = Server.MapPath("Upload_Files");
            string imgtype = System.IO.Path.GetExtension(upload.PostedFile.FileName);
            
        string imgName = System.IO.Path.GetFileName(upload.PostedFile.FileName);
        string extention = System.IO.Path.GetExtension(upload.PostedFile.FileName);

        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
        sqlConnection.Open();
        SqlCommand cdm = new SqlCommand("select count(*) from ln_Upload_Files where File_Name = '" + imgName + "'", sqlConnection);

        int xc = Convert.ToInt32(cdm.ExecuteScalar());
        sqlConnection.Close();
        if (xc == 0)
        {
            if (extention == ".doc" || extention == ".xls" || extention == ".txt")
            {
                upload.PostedFile.SaveAs(Server.MapPath("UploadFiles/" + imgName));



   //           
                sqlConnection.Open();
                SqlCommand cmd = new SqlCommand("insert into ln_Upload_Files(File_Name, File_Type,udate) values(@fname,@ftype,@fdate)", sqlConnection);

                cmd.Parameters.Add(new SqlParameter("@fname", SqlDbType.NVarChar));
                cmd.Parameters.Add(new SqlParameter("@ftype", SqlDbType.NVarChar));
                cmd.Parameters.Add(new SqlParameter("@fdate", SqlDbType.DateTime));

                cmd.Parameters["@fname"].Value = imgName;
                cmd.Parameters["@ftype"].Value = imgtype;
                cmd.Parameters["@fdate"].Value = DateTime.Now.ToString();

                int x = cmd.ExecuteNonQuery();
                Response.Redirect("Upload_File.aspx?ret=add");

            }
            else
            {
                tdmsg.InnerHtml = "Invalid File.....Please upload .doc, .xls or .txt files only";
                Response.Redirect("Upload_File.aspx?ret=err");

            }
        }

        else
        {
            tdmsg.InnerHtml = "This file was already Exist...";
            Response.Redirect("Upload_File.aspx?ret=exist");

        }
    }
}
