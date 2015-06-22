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
using System.IO;
using System.Data.SqlClient;
public partial class Schedules : System.Web.UI.Page
{
    DateTime exdt;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        string fulldet = string.Empty;

        fulldet = "<br /><br /><table width='100%' border='1' style='border:1px solid #e9ecf1;' cellspacing='0' cellpadding='0'>";
        fulldet = fulldet + "<tr> <td colspan='9' align='center' width='100%'><font color='#003399' size='3pt'><b>Course Schedule for Week Days</b></font> </td></tr>";
        fulldet = fulldet + "<tr><td align='center'valign='middle' class='lablelx' width='20%'><b>Course Name/Curriculum</b></td>";
        fulldet = fulldet + "<td align='center' valign='middle' class='lablelx' width='10%'><b> Grade</b></td>";
        fulldet = fulldet + "<td align='center' valign='middle' class='lablelx' width='12%'><b>Duration</b></td>";
        //fulldet = fulldet + "<td align='center' valign='middle' class='lablelx' width='12%'><b>Exam Date</b></td>";
        fulldet = fulldet + "<td align='center' valign='middle' class='lablelx' width='9%'><b>Course Starting Date</b></td>";
        fulldet = fulldet + "<td align='center' valign='middle' class='lablelx' width='9%'><b>Course Ending Date</b></td>";
        fulldet = fulldet + "<td align='center' valign='middle' class='lablelx' width='10%'><b>Class Timings</b></td>";
        fulldet = fulldet + "<td align='center' valign='middle' class='lablelx' width='10%'><b>Region</b></td>";
        fulldet = fulldet + "<td align='center' valign='middle' class='lablelx'width='10%'><b>Posted On</b></td>";
 
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
        SqlDataAdapter imgtext = new SqlDataAdapter("Select * from ln_schedule where course_type=2 order by Pdate desc", sqlConnection);
        imgtext.Fill(ds, "ln_schedule");
        string cnm = string.Empty;

        if (!ds.Tables[0].Rows.Count.Equals(0))
        {
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                exdt = Convert.ToDateTime(ds.Tables[0].Rows[i]["Pdate"].ToString());
                cnm = exdt.ToString("MMM/dd/yyyy");
                fulldet = fulldet + "<tr><td align='center' class='lable' valign='middle'>";
                fulldet = fulldet + ds.Tables[0].Rows[i]["Course"].ToString() + "</td><td align='center' class='lable'valign='center'>";
                fulldet = fulldet + ds.Tables[0].Rows[i]["grade"].ToString() + "</td><td align='center' class='lable' valign='center' >";
                fulldet = fulldet + ds.Tables[0].Rows[i]["C_duration"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                //fulldet = fulldet + ds.Tables[0].Rows[i]["ExamDate"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet = fulldet + ds.Tables[0].Rows[i]["C_sdate"].ToString() + "</td><td align='center' class='lable' valign='center' >";
                fulldet = fulldet + ds.Tables[0].Rows[i]["C_edate"].ToString() + "</td><td align='center' class='lable' valign='center' >";
                fulldet = fulldet + ds.Tables[0].Rows[i]["C_timing"].ToString() + "</td><td align='center' class='lable' valign='center' >";
                fulldet = fulldet + ds.Tables[0].Rows[i]["location"] + ", " + ds.Tables[0].Rows[i]["country"].ToString() + "</td><td align='center' class='lable' valign='center' >";
                fulldet = fulldet + cnm + "</td></tr>";
            }
        }

        fulldet = fulldet + "</table>";
        tdcontent.InnerHtml = fulldet;

        DataSet ds1 = new DataSet();
        string fulldet1 = string.Empty;

        fulldet1 = "<br /><br /><table width='100%' border='1' style='border:1px solid #e9ecf1;' cellspacing='0' cellpadding='0'>";
        fulldet = fulldet + "<tr> <td colspan='9' align='center' width='100%'><font color='#003399' size='3pt'><b>Course Schedule for Weekends</b></font> </td></tr>";
        fulldet1 = fulldet1 + "<tr><td align='center'valign='middle' class='lablelx' width='20%'><b>Course Name/Curriculum</b></td>";
        fulldet1 = fulldet1 + "<td align='center' valign='middle' class='lablelx' width='10%'><b> Grade</b></td>";
        fulldet1 = fulldet1 + "<td align='center' valign='middle' class='lablelx' width='12%'><b>Duration</b></td>";
        //fulldet1 = fulldet1 + "<td align='center' valign='middle' class='lablelx' width='12%'><b>Exam Date</b></td>";
        fulldet1 = fulldet1 + "<td align='center' valign='middle' class='lablelx' width='9%'><b>Course Starting Date</b></td>";
        fulldet1 = fulldet1 + "<td align='center' valign='middle' class='lablelx' width='9%'><b>Course Ending Date</b></td>";
        fulldet1 = fulldet1 + "<td align='center' valign='middle' class='lablelx' width='10%'><b>Class Timings</b></td>";
        fulldet1 = fulldet1 + "<td align='center' valign='middle' class='lablelx' width='10%'><b>Region</b></td>";
        fulldet1 = fulldet1 + "<td align='center' valign='middle' class='lablelx'width='10%'><b>Posted On</b></td>";

        SqlDataAdapter imgtext1 = new SqlDataAdapter("Select * from ln_schedule  where course_type=1 order by Pdate desc", sqlConnection);
        imgtext1.Fill(ds1, "ln_schedule");
        string cnm1 = string.Empty;

        if (!ds1.Tables[0].Rows.Count.Equals(0))
        {
            for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
            {
                exdt = Convert.ToDateTime(ds1.Tables[0].Rows[i]["Pdate"].ToString());
                cnm1 = exdt.ToString("MMM/dd/yyyy");
                fulldet1 = fulldet1 + "<tr><td align='center' class='lable' valign='middle' >";
                fulldet1 = fulldet1 + ds1.Tables[0].Rows[i]["Course"].ToString() + "</td><td align='center' class='lable'  valign='center'>";
                fulldet1 = fulldet1 + ds1.Tables[0].Rows[i]["grade"].ToString() + "</td><td align='center' class='lable' valign='center' >";
                fulldet1 = fulldet1 + ds1.Tables[0].Rows[i]["C_duration"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                //fulldet1 = fulldet1 + ds1.Tables[0].Rows[i]["ExamDate"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet1 = fulldet1 + ds1.Tables[0].Rows[i]["C_sdate"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet1 = fulldet1 + ds1.Tables[0].Rows[i]["C_edate"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet1 = fulldet1 + ds1.Tables[0].Rows[i]["C_timing"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet1 = fulldet1 + ds1.Tables[0].Rows[i]["location"] + ", " + ds1.Tables[0].Rows[i]["country"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet1 = fulldet1 + cnm1 + "</td></tr>";
            }
        }

        fulldet1 = fulldet1 + "</table>";
        tdcontent1.InnerHtml = fulldet1;

        // All Days
        DataSet ds2 = new DataSet();
        string fulldet2 = string.Empty;

        fulldet2 = "<br /><br /><table width='100%' border='1' style='border:1px solid #e9ecf1;' cellspacing='0' cellpadding='0'>";
        fulldet2 = fulldet2 + "<tr> <td colspan='9' align='center' width='100%'><font color='#003399' size='3pt'><b>Course Schedule for All Days</b></font> </td></tr>";
        fulldet2 = fulldet2 + "<tr><td align='center'valign='middle' class='lablelx' width='20%'><b>Course Name/Curriculum</b></td>";
        fulldet2 = fulldet2 + "<td align='center' valign='middle' class='lablelx' width='10%'><b> Grade</b></td>";
        fulldet2 = fulldet2 + "<td align='center' valign='middle' class='lablelx' width='12%'><b>Duration</b></td>";
        //fulldet2 = fulldet2 + "<td align='center' valign='middle' class='lablelx' width='12%'><b>Exam Date</b></td>";
        fulldet2 = fulldet2 + "<td align='center' valign='middle' class='lablelx' width='9%'><b>Course Starting Date</b></td>";
        fulldet2 = fulldet2 + "<td align='center' valign='middle' class='lablelx' width='9%'><b>Course Ending Date</b></td>";
        fulldet2 = fulldet2 + "<td align='center' valign='middle' class='lablelx' width='10%'><b>Class Timings</b></td>";
        fulldet2 = fulldet2 + "<td align='center' valign='middle' class='lablelx' width='10%'><b>Region</b></td>";
        fulldet2 = fulldet2 + "<td align='center' valign='middle' class='lablelx'width='10%'><b>Posted On</b></td>";

        SqlDataAdapter imgtext2 = new SqlDataAdapter("Select * from ln_schedule  where course_type=3 order by Pdate desc", sqlConnection);
        imgtext2.Fill(ds2, "ln_schedule");
        string cnm2 = string.Empty;

        if (!ds2.Tables[0].Rows.Count.Equals(0))
        {
            for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
            {
                exdt = Convert.ToDateTime(ds2.Tables[0].Rows[i]["Pdate"].ToString());
                cnm2 = exdt.ToString("MMM/dd/yyyy");
                fulldet2 = fulldet2 + "<tr><td align='center' class='lable' valign='middle' >";
                fulldet2 = fulldet2 + ds2.Tables[0].Rows[i]["Course"].ToString() + "</td><td align='center' class='lable'  valign='center'>";
                fulldet2 = fulldet2 + ds2.Tables[0].Rows[i]["grade"].ToString() + "</td><td align='center' class='lable' valign='center' >";
                fulldet2 = fulldet2 + ds2.Tables[0].Rows[i]["C_duration"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                //fulldet2 = fulldet2 + ds2.Tables[0].Rows[i]["ExamDate"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet2 = fulldet2 + ds2.Tables[0].Rows[i]["C_sdate"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet2 = fulldet2 + ds2.Tables[0].Rows[i]["C_edate"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet2 = fulldet2 + ds2.Tables[0].Rows[i]["C_timing"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet2 = fulldet2 + ds2.Tables[0].Rows[i]["location"] + ", " + ds2.Tables[0].Rows[i]["country"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet2 = fulldet2 + cnm2 + "</td></tr>";
            }
        }

        fulldet2 = fulldet2 + "</table>";
        tdcontent2.InnerHtml = fulldet2;


        // Vacation
        DataSet ds3 = new DataSet();
        string fulldet3 = string.Empty;

        fulldet3 = "<br /><br /><table width='100%' border='1' style='border:1px solid #e9ecf1;'  cellspacing='0' cellpadding='0'>";
        fulldet3 = fulldet3 + "<tr> <td colspan='9' align='center' width='100%'><font color='#003399' size='3pt'><b>Course Schedule for Vacations(Spring)</b></font> </td></tr>";
        fulldet3 = fulldet3 + "<tr><td align='center'valign='middle' class='lablelx' width='20%'><b>Course Name/Curriculum</b></td>";
        fulldet3 = fulldet3 + "<td align='center' valign='middle' class='lablelx' width='10%'><b> Grade</b></td>";
        fulldet3 = fulldet3 + "<td align='center' valign='middle' class='lablelx' width='12%'><b>Duration</b></td>";
        //fulldet3 = fulldet3 + "<td align='center' valign='middle' class='lablelx' width='12%'><b>Exam Date</b></td>";
        fulldet3 = fulldet3 + "<td align='center' valign='middle' class='lablelx' width='9%'><b>Course Starting Date</b></td>";
        fulldet3 = fulldet3 + "<td align='center' valign='middle' class='lablelx' width='9%'><b>Course Ending Date</b></td>";
        fulldet3 = fulldet3 + "<td align='center' valign='middle' class='lablelx' width='10%'><b>Class Timings</b></td>";
        fulldet3 = fulldet3 + "<td align='center' valign='middle' class='lablelx' width='10%'><b>Region</b></td>";
        fulldet3 = fulldet3 + "<td align='center' valign='middle' class='lablelx'width='10%'><b>Posted On</b></td>";

        SqlDataAdapter imgtext3 = new SqlDataAdapter("Select * from ln_schedule  where course_type=4 order by Pdate desc", sqlConnection);
        imgtext3.Fill(ds3, "ln_schedule");
        string cnm3 = string.Empty;

        if (!ds3.Tables[0].Rows.Count.Equals(0))
        {
            for (int i = 0; i < ds3.Tables[0].Rows.Count; i++)
            {
                exdt = Convert.ToDateTime(ds3.Tables[0].Rows[i]["Pdate"].ToString());
                cnm3 = exdt.ToString("MMM/dd/yyyy");
                fulldet3 = fulldet3 + "<tr><td align='left' class='lable' valign='middle' >";
                fulldet3 = fulldet3 + ds3.Tables[0].Rows[i]["Course"].ToString() + "</td><td align='left' class='lable'  valign='center'>";
                fulldet3 = fulldet3 + ds3.Tables[0].Rows[i]["grade"].ToString() + "</td><td align='center' class='lable' valign='center' >";
                fulldet3 = fulldet3 + ds3.Tables[0].Rows[i]["C_duration"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                //fulldet3 = fulldet3 + ds3.Tables[0].Rows[i]["ExamDate"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet3 = fulldet3 + ds3.Tables[0].Rows[i]["C_sdate"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet3 = fulldet3 + ds3.Tables[0].Rows[i]["C_edate"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet3 = fulldet3 + ds3.Tables[0].Rows[i]["C_timing"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet3 = fulldet3 + ds3.Tables[0].Rows[i]["location"] + ", " + ds3.Tables[0].Rows[i]["country"].ToString() + "</td><td align='center' class='lable' valign='center'>";
                fulldet3 = fulldet3 + cnm3 + "</td></tr>";
            }
        }

        fulldet3 = fulldet3 + "</table>";
        tdcontent3.InnerHtml = fulldet3;
    }
}
