using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.Mail;
using System.Web.SessionState;
using System.IO;

namespace igiit.BussinessLogic
{

    /// <summary>
    /// Summary description for Registration
    /// </summary>
    public class Registration
    {
        public Registration()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        string str = string.Empty;
        public bool Insert(string uname, string FName,string MName,string LName, 
                            string Password,
                            string CPassword,
                            string FatherName,string MotherName,string SpouseName,
                            string EMail,
                            string Street,
                            string Country1,
                            string state1,
                            string city1,
                            string zip,
                            string WorkPhone,
                            string HomePhone, 
                            string MobPhone,
                            DateTime bdate,
                            string citizenship,
                            string bcity,
                            string bstate,
                            string bcntry,
                            string passportno,
                            string passportissuedat,
                            DateTime issueddate,
                            DateTime dofexp,
                            string natiionality,
                            string cntryofpassport,
                            string cpname1,
                            string cpphone1,
                            string cpemail1,
                            string cpaddress1,
                            string cpname2,
                            string cpphone2,
                            string cpemail2,
                            string cpaddress2,
                            int ExpYears, int ExpMonths,
                            //string Skills,
                            string Rhead, string Fnarea, string IndType,
                            string Resume,  string Rpaste, string PDate)
                    {

            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();
            //SqlTransaction myTrans = connection.BeginTransaction();
            string strQuery = "INSERT INTO employeereg(username,emailid,pwd,confirmpwd,firstname,middlename,lastname,fathername,mothername,spousename,country1,state1,street,city1,zip,workphone,homephone,mobile,birthdate,cntryofcitizenship,birthcity,birthstate,birthcountry,passportno,passportissuedat,dateofissue, doexp,nationality,countryofpassport,contactpersonname1,cp1phone,cp1email,cpaddress1,contactpersonname2,cp2phone2,cp2email,cpaddress2,totexptrs,totexpmonths,rhead,functionalarea,currentindustrytype,filename1,resumetxt,pdate) VALUES(@uname,@emailid,@pwd,@confirmpwd,@firstname,@middlename,@lastname,@fathername,@mothername,@spousename,@country1,@state1,@street,@city1,@zip,@workphone,@homephone,@mobile,@birthdate,@cntryofcitizenship,@birthcity,@birthstate,@birthcountry,@passportno,@passportissuedat,@dateofissue,@doexp,@nationality,@countryofpassport,@contactpersonname1,@cp1phone,@cp1email,@cpaddress1,@contactpersonname2,@cp2phone2,@cp2email,@cpaddress2,@totexptrs,@totexpmonths,@rhead,@functionalarea,@currentindustrytype,@filename1,@resumetxt,@pdate)";
            SqlCommand cmd = new SqlCommand(strQuery, connection);
             cmd.Parameters.Add(new SqlParameter("@uname", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@emailid", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@pwd", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@confirmpwd", SqlDbType.NVarChar));
            //cmd.Parameters.Add(new SqlParameter("@fname", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@firstname", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@middlename", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@lastname", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@fathername", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@mothername", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@spousename", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@workphone", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@country1", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@state1", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@street", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@city1", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@zip", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@homephone", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@mobile", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@birthdate", SqlDbType.DateTime));
            cmd.Parameters.Add(new SqlParameter("@cntryofcitizenship", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@birthcity", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@birthstate", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@birthcountry", SqlDbType.NVarChar));
            //cmd.Parameters.Add(new SqlParameter("@birthdate", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@passportno", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@passportissuedat", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@dateofissue", SqlDbType.DateTime));
            cmd.Parameters.Add(new SqlParameter("@doexp", SqlDbType.DateTime));
            cmd.Parameters.Add(new SqlParameter("@nationality", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@countryofpassport", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@contactpersonname1", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@cp1phone", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@cp1email", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@cpaddress1", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@contactpersonname2", SqlDbType.NVarChar));

            cmd.Parameters.Add(new SqlParameter("@cp2phone2", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@cp2email", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@cpaddress2", SqlDbType.NVarChar));

            cmd.Parameters.Add(new SqlParameter("@totexptrs", SqlDbType.Int));
            cmd.Parameters.Add(new SqlParameter("@totexpmonths", SqlDbType.Int));
            cmd.Parameters.Add(new SqlParameter("@rhead", SqlDbType.NVarChar));
            //@functionalarea
            cmd.Parameters.Add(new SqlParameter("@functionalarea", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@currentindustrytype", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@resumetxt", SqlDbType.NVarChar));

            cmd.Parameters.Add(new SqlParameter("@filename1", SqlDbType.NVarChar));
            //cmd.Parameters.Add(new SqlParameter("@jobalertflag", SqlDbType.NVarChar, 50));
            //cmd.Parameters.Add(new SqlParameter("@traineeprgsflag", SqlDbType.NVarChar, 20000));

            //@newsflag,@termsandconditions,@pdate
            //cmd.Parameters.Add(new SqlParameter("@newsflag", SqlDbType.NVarChar, 20000));
            //cmd.Parameters.Add(new SqlParameter("@termsandconditions", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@pdate", SqlDbType.NVarChar));
            cmd.Parameters["@uname"].Value = uname;
            cmd.Parameters["@emailid"].Value = EMail;
            cmd.Parameters["@pwd"].Value = Password;
            cmd.Parameters["@confirmpwd"].Value = CPassword;
            cmd.Parameters["@firstname"].Value = FName;
            cmd.Parameters["@middlename"].Value = MName;
            cmd.Parameters["@lastname"].Value = LName;
            cmd.Parameters["@fathername"].Value = FatherName;
            cmd.Parameters["@mothername"].Value = MotherName;
            cmd.Parameters["@spousename"].Value = SpouseName;
            cmd.Parameters["@country1"].Value = Country1;
            cmd.Parameters["@state1"].Value = state1;
            cmd.Parameters["@street"].Value = Street;
            cmd.Parameters["@city1"].Value = city1;
            cmd.Parameters["@zip"].Value = zip;
            cmd.Parameters["@workphone"].Value = HomePhone;
            cmd.Parameters["@homephone"].Value = HomePhone;
            cmd.Parameters["@mobile"].Value = MobPhone;
            cmd.Parameters["@birthdate"].Value = bdate;
            cmd.Parameters["@cntryofcitizenship"].Value = citizenship;
            cmd.Parameters["@birthcity"].Value = bcity;

            cmd.Parameters["@birthstate"].Value = bstate;

            cmd.Parameters["@birthcountry"].Value = bcntry;

            cmd.Parameters["@passportno"].Value = passportno;
            cmd.Parameters["@passportissuedat"].Value = passportissuedat;
            cmd.Parameters["@dateofissue"].Value = issueddate;
            //

            cmd.Parameters["@doexp"].Value = dofexp;
            cmd.Parameters["@nationality"].Value = natiionality;
            cmd.Parameters["@countryofpassport"].Value = cntryofpassport;
            cmd.Parameters["@contactpersonname1"].Value = cpname1;
            cmd.Parameters["@cp1phone"].Value = cpphone1;
            cmd.Parameters["@cp1email"].Value = cpemail1;
            cmd.Parameters["@cpaddress1"].Value = cpaddress1;
            cmd.Parameters["@contactpersonname2"].Value = cpname2;

            cmd.Parameters["@cp2phone2"].Value = cpphone2;
            cmd.Parameters["@cp2email"].Value = cpemail2;
            cmd.Parameters["@cpaddress2"].Value = cpaddress2;
            cmd.Parameters["@totexptrs"].Value = ExpYears;
            
            cmd.Parameters["@totexpmonths"].Value = ExpMonths;
            cmd.Parameters["@rhead"].Value = Rhead;
            cmd.Parameters["@functionalarea"].Value = Fnarea;
            cmd.Parameters["@currentindustrytype"].Value = IndType;
            cmd.Parameters["@resumetxt"].Value =Rpaste;

            cmd.Parameters["@filename1"].Value = Resume;
            cmd.Parameters["@pdate"].Value = PDate;

            
            str = cmd.ExecuteNonQuery().ToString();
            connection.Close();
            return true;
        }


        public bool Updateres(string uname, string Country, string CurrentLoc, string WorkCcode, string WorkAcode, string WorkPhone,
                           string CurrentCom, string CurrentPos, string CurrentFmn, string CurrentFyr, string CurrentTmn, string CurrentTyr,
                           string HomeCcode, string HomeAcode, string HomePhone, string MobPhone,
                           string ExpYears, string ExpMonths, string Skills, string Rhead, string Fnarea, string IndType,
                           string Education, string Edu_Board, string Majorsub, string Edu_Year, string Edu_Score,
                           string Resume, string RType, string Rpaste, string PDate)
        {

            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();
                                        
            SqlCommand cmd = new SqlCommand("UPDATE employeereg set country=@acountry,currentcom=@acurrentcom,currentpos=@acurrentpos,currentfmn=@acurrentfmn,currentfyr=@acurrentfyr,currenttmn=@acurrenttmn,currenttyr=@acurrenttyr,currentloc=@acurrentloc,wccode=@awccode,wacode=@awacode,wphone=@awphone,hccode=@ahccode,hacode=@ahacode,hphone=@ahphone,mphone=@amphone,expyears=@aexpyears,expmonths=@aexpmonths,skills=@askills,rhead=@arhead,fnarea=@afnarea,indtype=@aindtype,education=@aeducation,education_board=@aeduboard,majorsub=@amajorsub,education_year=@aeduyear,education_score=@aeduscore,resume=@aresume,resumetype=@artype,rpaste=@arpaste,pdate=@apdate,flag1=@aflag where username='" + uname + "'", connection);

            
            cmd.Parameters.Add(new SqlParameter("@acountry", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@acurrentcom", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@acurrentpos", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@acurrentfmn", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@acurrentfyr", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@acurrenttmn", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@acurrenttyr", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@acurrentloc", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@awccode", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@awacode", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@awphone", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@ahccode", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@ahacode", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@ahphone", SqlDbType.NVarChar));

            cmd.Parameters.Add(new SqlParameter("@amphone", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@aexpyears", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@aexpmonths", SqlDbType.NVarChar));

            cmd.Parameters.Add(new SqlParameter("@askills", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@arhead", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@afnarea", SqlDbType.NVarChar));

            cmd.Parameters.Add(new SqlParameter("@aindtype", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@aeducation", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@aeduboard", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@amajorsub", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@aeduyear", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@aeduscore", SqlDbType.NVarChar));



            cmd.Parameters.Add(new SqlParameter("@aresume", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@artype", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@arpaste", SqlDbType.NVarChar));

            cmd.Parameters.Add(new SqlParameter("@apdate", SqlDbType.DateTime));
            cmd.Parameters.Add(new SqlParameter("@aflag", SqlDbType.NChar));

            //cmd.Parameters["@ausername"].Value = UserName;
            //cmd.Parameters["@apassword"].Value = Password;
            //cmd.Parameters["@aname"].Value = Name;

            //cmd.Parameters["@aemail"].Value = EMail;

            cmd.Parameters["@acountry"].Value = Country;


            cmd.Parameters["@acurrentcom"].Value = CurrentCom;
            cmd.Parameters["@acurrentpos"].Value = CurrentPos;
            cmd.Parameters["@acurrentfmn"].Value = CurrentFmn;
            cmd.Parameters["@acurrentfyr"].Value = CurrentFyr;
            cmd.Parameters["@acurrenttmn"].Value = CurrentTmn;
            cmd.Parameters["@acurrenttyr"].Value = CurrentTyr;

            cmd.Parameters["@acurrentloc"].Value = CurrentLoc;

            cmd.Parameters["@awccode"].Value = WorkCcode;
            cmd.Parameters["@awacode"].Value = WorkAcode;
            cmd.Parameters["@awphone"].Value = WorkPhone;

            cmd.Parameters["@ahccode"].Value = HomeCcode;
            cmd.Parameters["@ahacode"].Value = HomeAcode;
            cmd.Parameters["@ahphone"].Value = HomePhone;

            cmd.Parameters["@amphone"].Value = MobPhone;
            cmd.Parameters["@aexpyears"].Value = ExpYears;
            cmd.Parameters["@aexpmonths"].Value = ExpMonths;

            cmd.Parameters["@askills"].Value = Skills;
            cmd.Parameters["@arhead"].Value = Rhead;
            cmd.Parameters["@afnarea"].Value = Fnarea;

            cmd.Parameters["@aindtype"].Value = IndType;
            cmd.Parameters["@aeducation"].Value = Education;
            cmd.Parameters["@aeduboard"].Value = Edu_Board;
            cmd.Parameters["@amajorsub"].Value = Majorsub;
            cmd.Parameters["@aeduyear"].Value = Edu_Year;
            cmd.Parameters["@aeduscore"].Value = Edu_Score;



            cmd.Parameters["@aresume"].Value = Resume;
            cmd.Parameters["@artype"].Value = RType;
            cmd.Parameters["@arpaste"].Value = Rpaste;
            cmd.Parameters["@apdate"].Value = PDate;
            cmd.Parameters["@aflag"].Value = "0";
            str = cmd.ExecuteNonQuery().ToString();
            connection.Close();
            return true;
        }


        public bool Update(int  uid, string FName, string MName, string LName,
                            //string Password,
                           // string CPassword,
                            string FatherName, string MotherName, string SpouseName,
                            string EMail,
                            string Street,
                            string Country1,
                            string state1,
                            string city1,
                            string zip,
                            string WorkPhone,
                            string HomePhone,
                            string MobPhone,
                            DateTime bdate,
                            string citizenship,
                            string bcity,
                            string bstate,
                            string bcntry,
                            string passportno,
                            string passportissuedat,
                            DateTime issueddate,
                            DateTime dofexp,
                            string natiionality,
                            string cntryofpassport,
                            string cpname1,
                            string cpphone1,
                            string cpemail1,
                            string cpaddress1,
                            string cpname2,
                            string cpphone2,
                            string cpemail2,
                            string cpaddress2,
                            int ExpYears, int ExpMonths,
                            //string Skills,
                            string Rhead, string Fnarea, string IndType,
                            string Resume, string Rpaste, string PDate)
        {

            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();
                                
            SqlCommand cmd = new SqlCommand("UPDATE employeereg set emailid=@emailid,firstname=@firstname,middlename= @middlename,lastname=@lastname,fathername=@fathername,mothername=@mothername,spousename=@spousename,country1=@country1,state1=@state1,street=@street,city1=@city1,zip=@zip,homephone=@homephone,workphone=@workphone,mobile=@mobile,birthdate=@birthdate,cntryofcitizenship=@cntryofcitizenship,birthcity=@birthcity,birthstate=@birthstate,birthcountry=@birthcountry,passportno=@passportno,passportissuedat=@passportissuedat,dateofissue=@dateofissue,doexp=@doexp,nationality=@nationality,countryofpassport=@countryofpassport,contactpersonname1=@contactpersonname1,cp1phone = @cp1phone,cp1email = @cp1email,cpaddress1=@cpaddress1,contactpersonname2=@contactpersonname2,cp2phone2=@cp2phone2,cp2email=@cp2email,cpaddress2=@cpaddress2, totexptrs = @totexptrs,totexpmonths=@totexpmonths,head=@rhead,functionalarea=@functionalarea,currentindustrytype=@currentindustrytype,filename1=@filename1,resumetxt=@resumetxt,pdate=@pdate where userid='" + uid + "'", connection);

            cmd.Parameters.Add(new SqlParameter("@emailid", SqlDbType.NVarChar));
            //cmd.Parameters.Add(new SqlParameter("@pwd", SqlDbType.NVarChar));
            //cmd.Parameters.Add(new SqlParameter("@confirmpwd", SqlDbType.NVarChar));
            //cmd.Parameters.Add(new SqlParameter("@fname", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@firstname", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@middlename", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@lastname", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@fathername", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@mothername", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@spousename", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@workphone", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@country1", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@state1", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@street", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@city1", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@zip", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@homephone", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@mobile", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@birthdate", SqlDbType.DateTime));
            cmd.Parameters.Add(new SqlParameter("@cntryofcitizenship", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@birthcity", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@birthstate", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@birthcountry", SqlDbType.NVarChar));
            //cmd.Parameters.Add(new SqlParameter("@birthdate", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@passportno", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@passportissuedat", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@dateofissue", SqlDbType.DateTime));
            cmd.Parameters.Add(new SqlParameter("@doexp", SqlDbType.DateTime));
            cmd.Parameters.Add(new SqlParameter("@nationality", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@countryofpassport", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@contactpersonname1", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@cp1phone", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@cp1email", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@cpaddress1", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@contactpersonname2", SqlDbType.NVarChar));

            cmd.Parameters.Add(new SqlParameter("@cp2phone2", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@cp2email", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@cpaddress2", SqlDbType.NVarChar));

            cmd.Parameters.Add(new SqlParameter("@totexptrs", SqlDbType.Int));
            cmd.Parameters.Add(new SqlParameter("@totexpmonths", SqlDbType.Int));
            cmd.Parameters.Add(new SqlParameter("@rhead", SqlDbType.NVarChar));
            //@functionalarea
            cmd.Parameters.Add(new SqlParameter("@functionalarea", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@currentindustrytype", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@resumetxt", SqlDbType.NVarChar));

            cmd.Parameters.Add(new SqlParameter("@filename1", SqlDbType.NVarChar));
            //cmd.Parameters.Add(new SqlParameter("@jobalertflag", SqlDbType.NVarChar, 50));
            //cmd.Parameters.Add(new SqlParameter("@traineeprgsflag", SqlDbType.NVarChar, 20000));

            //@newsflag,@termsandconditions,@pdate
            //cmd.Parameters.Add(new SqlParameter("@newsflag", SqlDbType.NVarChar, 20000));
            //cmd.Parameters.Add(new SqlParameter("@termsandconditions", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@pdate", SqlDbType.NVarChar));

            cmd.Parameters["@emailid"].Value = EMail;
            //cmd.Parameters["@pwd"].Value = Password;
            //cmd.Parameters["@confirmpwd"].Value = CPassword;
            cmd.Parameters["@firstname"].Value = FName;
            cmd.Parameters["@middlename"].Value = MName;
            cmd.Parameters["@lastname"].Value = LName;
            cmd.Parameters["@fathername"].Value = FatherName;
            cmd.Parameters["@mothername"].Value = MotherName;
            cmd.Parameters["@spousename"].Value = SpouseName;
            cmd.Parameters["@country1"].Value = Country1;
            cmd.Parameters["@state1"].Value = state1;
            cmd.Parameters["@street"].Value = Street;
            cmd.Parameters["@city1"].Value = city1;
            cmd.Parameters["@zip"].Value = zip;
            cmd.Parameters["@workphone"].Value = WorkPhone;
            cmd.Parameters["@homephone"].Value = HomePhone;
            cmd.Parameters["@mobile"].Value = MobPhone;
            cmd.Parameters["@birthdate"].Value = bdate;
            cmd.Parameters["@cntryofcitizenship"].Value = citizenship;
            cmd.Parameters["@birthcity"].Value = bcity;

            cmd.Parameters["@birthstate"].Value = bstate;

            cmd.Parameters["@birthcountry"].Value = bcntry;

            cmd.Parameters["@passportno"].Value = passportno;
            cmd.Parameters["@passportissuedat"].Value = passportissuedat;
            cmd.Parameters["@dateofissue"].Value = issueddate;
            //
            cmd.Parameters["@doexp"].Value = dofexp;
            cmd.Parameters["@nationality"].Value = natiionality;
            cmd.Parameters["@countryofpassport"].Value = cntryofpassport;
            cmd.Parameters["@contactpersonname1"].Value = cpname1;
            cmd.Parameters["@cp1phone"].Value = cpphone1;
            cmd.Parameters["@cp1email"].Value = cpemail1;
            cmd.Parameters["@cpaddress1"].Value = cpaddress1;
            cmd.Parameters["@contactpersonname2"].Value = cpname2;

            cmd.Parameters["@cp2phone2"].Value = cpphone2;
            cmd.Parameters["@cp2email"].Value = cpemail2;
            cmd.Parameters["@cpaddress2"].Value = cpaddress2;
            cmd.Parameters["@totexptrs"].Value = ExpYears;
            //
            //
            cmd.Parameters["@totexpmonths"].Value = ExpMonths;
            cmd.Parameters["@rhead"].Value = Rhead;
            cmd.Parameters["@functionalarea"].Value = Fnarea;
            cmd.Parameters["@currentindustrytype"].Value = IndType;
            cmd.Parameters["@resumetxt"].Value = Rpaste;

            cmd.Parameters["@filename1"].Value = Resume;
            cmd.Parameters["@pdate"].Value = PDate;
            
            str = cmd.ExecuteNonQuery().ToString();
            connection.Close();
            return true;
        }


        public bool PwdUpdate(string uname, string NewPwd)
        {

            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();
            //SqlTransaction myTrans = connection.BeginTransaction();

            SqlCommand cmd = new SqlCommand("UPDATE employeereg set pwd=@apassword where username='" + uname + "'", connection);

            
             cmd.Parameters.Add(new SqlParameter("@apassword", SqlDbType.NVarChar, 50));
           
             cmd.Parameters["@apassword"].Value = NewPwd;
           
            str = cmd.ExecuteNonQuery().ToString();
            connection.Close();
            return true;
        }



        public Int32 CheckEmailid(string emailid)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();
            SqlCommand sqlcmd = new SqlCommand("select count(*) from employeereg where emailid = '" + emailid + "'", connection);
            Int32 count = Convert.ToInt32(sqlcmd.ExecuteScalar());
            return count;
        }

        public Int32 CheckUserName(string uname)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();
            SqlCommand sqlcmd = new SqlCommand("select count(*) from employeereg where username = '" + uname + "'", connection);
            Int32 count = Convert.ToInt32(sqlcmd.ExecuteScalar());
            return count;
        }



    }
    public class Checkuser
    {
        public string str = ConfigurationManager.AppSettings["ConnectionString"];
        public bool flag;

        public bool VeryfiUserPass(string UserId, string PassWord)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("select * from employeereg", con);
            SqlDataReader dr;
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (dr[1].ToString() == UserId && dr[2].ToString() == PassWord)
                {
                    flag = true;
                }
            }
            con.Close();
            return flag;
        }


        public Int32 FindRecords(string emailid, string pwd)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();
            SqlCommand sqlcmd = new SqlCommand("select count(*) from employeereg where emailid = '" + emailid + "' and pwd = '" + pwd + "'", connection);
            Int32 count = Convert.ToInt32(sqlcmd.ExecuteScalar());
            return count;
        }

        public Int32 FindClientRecords(string uname, string pwd)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();
            SqlCommand sqlcmd = new SqlCommand("select count(*) from clientregistration where username = '" + uname + "' and password = '" + pwd + "'", connection);
            Int32 count = Convert.ToInt32(sqlcmd.ExecuteScalar());
            return count;
        }
      
        public DataSet FindAndGetUserDet(string uname)
        {
            DataSet dsUDetails = new DataSet();
            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("select * from employeereg where username = '" + uname + "'", connection);
            sqlda.Fill(dsUDetails, "UserDetails");
            return dsUDetails;
        }


        public DataSet getUserDet(string id, string name)
        {
            DataSet dsUDetails = new DataSet();
            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("select * from employeereg where userid = '" + id + "' and username = '" + name + "'", connection);
            sqlda.Fill(dsUDetails, "UserDetails");
            return dsUDetails;
        }
        public DataSet getClientDetails(string id, string pwd)
        {
            DataSet dsUDetails = new DataSet();
            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("select * from clientregistration where username = '" + id + "' and password = '" + pwd + "'", connection);
            sqlda.Fill(dsUDetails, "ClientDetails");
            return dsUDetails;
        }

       

        public DataSet getUserDetails(string id, string pwd)
        {
            DataSet dsUDetails = new DataSet();
            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("select * from employeereg where username = '" + id + "' and password = '" + pwd + "'", connection);
            sqlda.Fill(dsUDetails, "UserDetails");
            return dsUDetails;
        }

        public DataSet getRecDetails(string emailid, string pwd)
        {
            DataSet dsUDetails = new DataSet();
            SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            connection.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("select * from employeereg where username = '" + emailid + "' and password = '" + pwd + "'", connection);
            sqlda.Fill(dsUDetails, "UserDetails");
            return dsUDetails;
        }

       
      
        public string userName(string user)
        {
            string connection = ConfigurationManager.AppSettings["ConnectionString"];
            SqlConnection cn = new SqlConnection(connection);
            SqlDataReader sdr;
            string s = "select emailid from employeereg where emailid='" + user + "'";
            SqlCommand cmdobj = new SqlCommand(s, cn);
            cn.Open();
            sdr = cmdobj.ExecuteReader();
            string userId = null;
            while (sdr.Read())
            {
                userId = Convert.ToString(sdr["username"]);

            }
            cn.Close();
            return userId;
        }

        public string getPassword(Int32 uid)
        {
            string connection = ConfigurationManager.AppSettings["ConnectionString"];
            SqlConnection cn = new SqlConnection(connection);
            SqlDataReader sdr;
            string s = "select pwd from employeereg where userid=" + uid + "";
            SqlCommand cmdobj = new SqlCommand(s, cn);
            cn.Open();
            sdr = cmdobj.ExecuteReader();
            string pwd = string.Empty;
            while (sdr.Read())
            {
                pwd = Convert.ToString(sdr["password"]);

            }
            cn.Close();
            return pwd;
        }

    }
   
}
