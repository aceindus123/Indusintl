<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_NewsEmailsCreate.aspx.cs" Inherits="Admin_NewsEmailsCreate" %>
<%@ Register Src="Usercontrols/TopMenu.ascx" TagName="TopMenu" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>: : Indus Intl : Admin : :</title>
    
    <script language="javascript" type="text/javascript" src="js/calendar.js"></script> 
        <script language="javascript" type="text/javascript">
	function alertsubmit()
{
alert("Course Schedule has been saved Successfully");
}

function chkcrs(field)
{
	var OthCrs=field.value;
	
	if(OthCrs == "" && document.getElementById("course").value == "New")
	{
	    alert("Please Enter a New Course Name")
		field.focus()
		return false
	}
	return true

}
function statechange()
{
   if(document.regForm.txtloc.selectedIndex=="0")
    {
        document.regForm.hidState.value="";
	   // alert(document.regForm.hidState.value)
    }
    else
    {
        
        document.regForm.hidState.value=document.regForm.txtloc.value;
       // alert(document.regForm.hidState.value)
    }
}


function echeck() {
        
        var str=document.getElementById("emailid").value;
        if(str!="")
        {
		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID")
		   document.getElementById("email").select();
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID")
		      document.getElementById("emailid").select();
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID")
		    document.getElementById("emailid").select();
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID")
		   document.getElementById("emailid").select();
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID")
	   document.getElementById("emailid").select();
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID")
		   document.getElementById("emailid").select();
		    return false
		 }

 		 return true	
 		 }				
	}

function chknewsmail()
{

 var email = document.getElementById("emailid").value;
        //alert(email)
        if(email!="")
        {
  		    url = "newssub.aspx?email=" + email +" ";
		    //msgWindow. = window.open(url);
		    location.href(url);
		}
		else
		{
		    alert("Enter Email");
		}

}




    </script>
    
<script language="JavaScript1.2" src="statesopt.js" type="text/javascript"></script>
    
  <link rel="stylesheet" href="Styles/stylesheet.css" />   
    
</head>
<body id="body1" runat="server" topmargin="0" leftmargin="0" bgcolor="#ffffff">
    <form id="regForm" runat="server">
  <table width="1180px" cellpadding="0" cellspacing="0" bgcolor="#ffffff" align="center">
    
   <tr>
    <td align="center" valign="top" width='100%'>
         <uc1:TopMenu ID="Topmenu1" runat="server" />
    </td>
    </tr>
    
    <tr>
     <td align="center" valign="top" width="100%" class="lable">
    
    <table width="70%" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr>
    <td colspan='2' align="left" valign="bottom" style="height: 30px">
          <br /><br />
      <font size='4pt' color="#660000"><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Subscribe for Newsletter</b></font></td>
          </tr>
          <tr>
    
      <td colspan='2' style="width: 201px; height: 20px" class="lable" align="center" valign="middle">
              
                 
                   
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          <asp:Label ID="lblerror" runat="server" Height="10px" Width="246px" Font-Bold="True" Font-Size="Small" ForeColor="#C00000"></asp:Label><br />
          </td>
          </tr>
    <tr>
      <td style="width: 201px; height: 33px;" class="lable" align="right" valign="middle">
          Email ID &nbsp; &nbsp; &nbsp; : &nbsp; &nbsp;&nbsp;
      </td>
       <td style="width: 451px; height: 33px;">
          <asp:TextBox ID="emailid" runat="server" TextMode="MultiLine" CssClass="lable" Width="386px"  Height="144px"></asp:TextBox>
          
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="emailid"
              ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="2px"></asp:RequiredFieldValidator></td>
      
          
    </tr>
    
    
    <tr>
      <td style="width: 201px; height: 33px;" class="lable" align="right" valign="bottom">
          Course Name &nbsp; &nbsp; &nbsp;: &nbsp; &nbsp;&nbsp;
      </td>
       <td style="width: 451px; height: 33px;">
          <asp:DropDownList ID="course" runat="server" AppendDataBoundItems="True" CssClass="lable" Width="173px" >
              <asp:ListItem Selected="true">Choose a Course</asp:ListItem>
              <asp:ListItem Value="BO-IndusTrng-Curriculum">DWH/BO/COGNOS/Crystal Reports</asp:ListItem>
              <asp:ListItem Value="INFORMATICA-Training-Curriculum">INFORMATICA</asp:ListItem>
              <asp:ListItem Value="BA-Training-Curriculum">BUSINESS ANALYST</asp:ListItem>
              <asp:ListItem Value="QAIndusTrng-Curriculum">QA Manual and Automated Testing</asp:ListItem>
              <asp:ListItem Value="ORACLEDBA10g-TrngCurriculum">ORACLE DBA</asp:ListItem>
              <asp:ListItem Value="ORACLE APPS">ORACLE APPS</asp:ListItem>
              <asp:ListItem Value="ORACLE10g-RAC-DATAGUARD-TrngCurriculum">ORACLE 10g RAC / DATA GUARD</asp:ListItem>
              <asp:ListItem Value="SAP-FICO-Training-Curriculum">SAP - FICO</asp:ListItem>
              <asp:ListItem Value="DotNET">.NET / C# / ASP.NET / VB.NET</asp:ListItem>
              <asp:ListItem Value="SAP-HR-Training-Curriculum">SAP - HR</asp:ListItem>
              <asp:ListItem Value="SAP - CRM">SAP - CRM</asp:ListItem>
              <asp:ListItem Value="PSoft-Training-Curriculum">People Soft - Technical and Functional</asp:ListItem>
              <asp:ListItem Value="WebDesign-Training-Curriculum">Web Development</asp:ListItem>
              <asp:ListItem Value="JAVA-Training-Curriculum">JAVA / J2EE Training</asp:ListItem>
              <asp:ListItem Value="UNIX.ADMIN-Training-Curriculum">UNIX ADMIN</asp:ListItem>
              <asp:ListItem Value="PMP-Training-Curriculum">PMP Certification</asp:ListItem>
              <asp:ListItem Value="DB2UDB-9DBA-Curriculum">DB2 - UDB 9</asp:ListItem>
              <asp:ListItem Value="ORACLE PLSQL - Training">ORACLE PLSQL</asp:ListItem>
              <asp:ListItem Value="sas curriculums.pdf">SAS</asp:ListItem>
              <asp:ListItem Value="NA">SAP BW</asp:ListItem>
              <asp:ListItem Value="NA">SAP MM</asp:ListItem>
              <asp:ListItem Value="NA">Hyperion Essbase</asp:ListItem>
              <asp:ListItem Value="NA">SAP SD</asp:ListItem>
              <asp:ListItem Value="Free Orientation-IT Training & Consulting">Free Orientation-IT Training & Consulting</asp:ListItem>
               <asp:ListItem Value="Weblogic curriculum">Web Logic Portal</asp:ListItem>
              <asp:ListItem Value="New">New</asp:ListItem>
           </asp:DropDownList>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="course"
               ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px" InitialValue="Choose a Course"></asp:RequiredFieldValidator></td>
      
          
    </tr>
    
    
    <tr>
      <td colspan="2" class="lable" style="height: 26px">
          <div align="left">
              <br /><br />
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
              &nbsp;<asp:Button ID="btnsubmit" runat="server" CssClass="labled" Height="22px"
                  Text="Submit" Width="49px" OnClick="btnsubmit_Click" />
              &nbsp;
              <asp:Button ID="reset" runat="server" CssClass="labled" Height="22px" Text="Cancel" /></div></td>
    </tr>
  </table>
    
    </td>
    </tr>
    
    
    
  
    </table>
    
    
    </form>
</body>
</html>