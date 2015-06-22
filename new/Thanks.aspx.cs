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

public partial class Thanks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["flag"] != null)
        {
            if (Convert.ToString(Request.QueryString["flag"].ToString().Trim()) == "reg")
            {
                tnx.InnerHtml = "Thank you for Registering with IndusTraining Your Login Details Has been sent to your Email Id provided.";
            }
            else if (Convert.ToString(Request.QueryString["flag"].ToString().Trim()) == "update")
            {
                tnx.InnerHtml = "Your Profile Has been Updated successfully";
            }

            else if (Convert.ToString(Request.QueryString["flag"].ToString().Trim()) == "cont")
            {
                tnx.InnerHtml = "Thank you! your mail has been received successfully";
            }

            else if (Convert.ToString(Request.QueryString["flag"].ToString().Trim()) == "log")
            {
                tnx.InnerHtml = "Thank you! your ID has been login successfully";
            }

            else if (Convert.ToString(Request.QueryString["flag"].ToString().Trim()) == "help")
            {
                tnx.InnerHtml = "Thank you! Your help request has been recieved successfully";
            }

        }

    }
}
