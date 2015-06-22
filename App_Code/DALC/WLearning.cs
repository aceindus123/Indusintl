using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using igiit.DALC;

/// <summary>
/// Summary description for WLearning
/// </summary>
public class WLearning
{

    public DataAccess obj = new DataAccess();

    private string sfname = string.Empty;
    public string _sfname
    {
        get { return sfname; }
        set { sfname = value; }
    }

    private string slname = string.Empty;
    public string _slname
    {
        get { return slname; }
        set { slname = value; }
    }

    private string pfname = string.Empty;
    public string _pfname
    {
        get { return pfname; }
        set { pfname = value; }
    }

    private string plname = string.Empty;
    public string _plname
    {
        get { return plname; }
        set { plname = value; }
    }

    private string ptype = string.Empty;
    public string _ptype
    {
        get { return ptype; }
        set { ptype = value; }
    }

    private string addr = string.Empty;
    public string _addr
    {
        get { return addr; }
        set { addr = value; }
    }

    private string city = string.Empty;
    public string _city
    {
        get { return city; }
        set { city = value; }
    }

    private string state = string.Empty;
    public string _state
    {
        get { return state; }
        set { state = value; }
    }

    private string country = string.Empty;
    public string _country
    {
        get { return country; }
        set { country = value; }
    }

    private string zip = string.Empty;
    public string _zip
    {
        get { return zip; }
        set { zip = value; }
    }

    private string phone = string.Empty;
    public string _phone
    {
        get { return phone; }
        set { phone = value; }
    }

    private string mobile = string.Empty;
    public string _mobile
    {
        get { return mobile; }
        set { mobile = value; }
    }

    private string email = string.Empty;
    public string _email
    {
        get { return email; }
        set { email = value; }
    }

    private string areu = string.Empty;
    public string _areu
    {
        get { return areu; }
        set { areu = value; }
    }

    private string age = string.Empty;
    public string _age
    {
        get { return age; }
        set { age = value; }
    }

    private string grade = string.Empty;
    public string _grade
    {
        get { return grade; }
        set { grade = value; }
    }

    private string course = string.Empty;
    public string _course
    {
        get { return course; }
        set { course = value; }
    }

    private string stdate = string.Empty;
    public string _stdate
    {
        get { return stdate; }
        set { stdate = value; }
    }

    private string thru = string.Empty;
    public string _thru
    {
        get { return thru; }
        set { thru = value; }
    }

    private string refer = string.Empty;
    public string _refer
    {
        get { return refer; }
        set { refer = value; }
    }

    private string comments = string.Empty;
    public string _comments
    {
        get { return comments; }
        set { comments = value; }
    }

	public WLearning()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    
    public string Insert_Enroll()
    {
        string strres=string.Empty;
        try
        {
            
            SqlParameter[] Params = new SqlParameter[21];
            Params[0] = new SqlParameter("@StName",sfname);
            Params[1] = new SqlParameter("@StLName",slname);
            Params[2] = new SqlParameter("@ParentType",ptype);
            Params[3] = new SqlParameter("@PFName",pfname);
            Params[4] = new SqlParameter("@PLName", plname);
            Params[5] = new SqlParameter("@Address", addr);
            Params[6] = new SqlParameter("@City", city);
            Params[7] = new SqlParameter("@State",state);
            Params[8] = new SqlParameter("@Country", country);
            Params[9] = new SqlParameter("@Zip", zip);
            Params[10] = new SqlParameter("@PhoneNo", phone);
            Params[11] = new SqlParameter("@MobileNo",mobile);
            Params[12] = new SqlParameter("@EmailID",email);
            Params[13] = new SqlParameter("@StType",areu);
            Params[14] = new SqlParameter("@Age",age);
            Params[15] = new SqlParameter("@Grade",grade);
            Params[16] = new SqlParameter("@CourseEnroll",course);
            Params[17] = new SqlParameter("@StartDate",stdate);
            Params[18] = new SqlParameter("@HearThru",thru);
            Params[19] = new SqlParameter("@ReferName", refer);
            Params[20] = new SqlParameter("@OtherInfo", comments);

            //Params[21] = new SqlParameter("@Retvalue", SqlDbType.Int);
            //Params[21].Direction = ParameterDirection.Output;

            try
            {
                strres = obj.ExecuteNonQuery("Insert_Enroll_Reg", Params).ToString();
            }
            catch(Exception ex)
            {
                strres = ex.Message.ToString();
            }
        }
        catch(Exception ex)
        {
            strres = ex.Message.ToString();
        }
        return strres;
    }

    public string Update_Enroll(string uid)
    {
        string strres = string.Empty;
        try
        {
            SqlParameter[] Params = new SqlParameter[23];
            Params[0] = new SqlParameter("@StName", sfname);
            Params[1] = new SqlParameter("@StLName", slname);
            Params[2] = new SqlParameter("@ParentType", ptype);
            Params[3] = new SqlParameter("@PFName", pfname);
            Params[4] = new SqlParameter("@PLName", plname);
            Params[5] = new SqlParameter("@Address", addr);
            Params[6] = new SqlParameter("@City", city);
            Params[7] = new SqlParameter("@State", state);
            Params[8] = new SqlParameter("@Country", country);
            Params[9] = new SqlParameter("@Zip", zip);
            Params[10] = new SqlParameter("@PhoneNo", phone);
            Params[11] = new SqlParameter("@MobileNo", mobile);
            Params[12] = new SqlParameter("@EmailID", email);
            Params[13] = new SqlParameter("@StType", areu);
            Params[14] = new SqlParameter("@Age", age);
            Params[15] = new SqlParameter("@Grade", grade);
            Params[16] = new SqlParameter("@CourseEnroll", course);
            Params[17] = new SqlParameter("@StartDate", stdate);
            Params[18] = new SqlParameter("@HearThru", thru);
            Params[19] = new SqlParameter("@ReferName", refer);
            Params[20] = new SqlParameter("@OtherInfo", comments);
            Params[21] = new SqlParameter("@ID", uid);

            Params[22] = new SqlParameter("@Retvalue", SqlDbType.Int);
            Params[22].Direction = ParameterDirection.Output;

            try
            {
                strres = obj.ExecuteNonQuery("Update_Enroll_Reg", Params).ToString();
            }
            catch (Exception ex)
            {
                strres = ex.Message.ToString();
            }
        }
        catch (Exception ex)
        {
            strres = ex.Message.ToString();
        }
        return strres;
    }

    public string Delete_Enroll(string uid)
    {
        string strres = string.Empty;
        try
        {
            SqlParameter[] Params = new SqlParameter[1];
           
            Params[0] = new SqlParameter("@ID", uid);
            try
            {
                strres = obj.ExecuteNonQuery("Delete_Enroll_Reg", Params).ToString();
            }
            catch (Exception ex)
            {
                strres = ex.Message.ToString();
            }
        }
        catch (Exception ex)
        {
            strres = ex.Message.ToString();
        }
        return strres;
    }

    public DataSet Get_Enroll_Data(string uid)
    {
        DataSet ds = new DataSet();
        try
        {
            string qry = "Select * from ln_enroll_reg where ID=" + uid;
            ds = obj.ExecuteSQL(qry);
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        return ds;
    }

    public DataSet Get_Enroll_DataAll()
    {
        DataSet ds = new DataSet();
        try
        {
            string qry = "Select * from ln_enroll_reg";
            ds = obj.ExecuteSQL(qry);
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        return ds;
    }


}
