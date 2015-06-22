<%@ Page Language="C#" AutoEventWireup="true" CodeFile="snowcl.aspx.cs" Inherits="snowcl" %>


<%@ Register Src="~/Usercontrols/HeaderMenu.ascx" TagName="HeaderMenu" TagPrefix="uc1" %>
<%@ Register Src="~/Usercontrols/FooterMenu.ascx" TagName="FooterMenu" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>:::Indus Learning:::</title>
<link rel="stylesheet" href="includes/style.css" type="text/css" />
</head>

<body id="Body1" topmargin="0" bottommargin="0" leftmargin="0" runat="server">
<center>
<form id="form1" runat="server">
<table cellspacing="0" cellpadding="0">
  <tr>
    <td width="1000px" style="border:1px solid #d7d9e5" align="center">
       <uc1:HeaderMenu ID="HeaderMenu1" runat="server" />
    </td>
  </tr>
   
    <tr>
            <td height="3px"></td>
          </tr>
        
          <tr>
            <td height="3px" align="left" class="welcome" style="padding-left:8px;">
               Class Cancellation Procedure
            </td>
          </tr>
          <tr>
            <td align="left">
            
              <table align="left" class="text">
              
                           
                <td  style="padding-top:5px; padding-left:7; padding-right:7px;"><img src="images/21.jpg" width="134" height="413" style="float:left;" /></td>
              <td width="81%"><span class ="data8">Closings Due to Inclement Weather </span><br />
For classes held during weekday such as mathematics, writing Indus learning center generally follows the class cancellation procedures of Fairfax County Public School (FCPS) and will not hold the class on the day when FCPS Closes its schools due to inclement weather.<br />
Please note that it is student and parents&rsquo; responsibility to visit our web or call us for any class cancellation announcement. <br />
<br />
<span class ="data8">Other Emergency Closings</span><br />
When there is an emergency other than inclement weather (such as power outage) that interrupts A Indus learning center class schedule, we will post on our website any class cancellation announcement immediately. Parents and students are advised to visit Indus learning web at<a href="http://www.indusintl.net" target="_blank" class="data8"> www.indusintl.net</a> or call <span class="data8">703-867-7699</span> for our announcement.<br />
<br />
<span class ="data8">Make-up class</span><br />
There will be a make up class for each class cancelled due to clement weather and emergency. We will decide the make up class schedule to accommodate majority of students in the class. In most of cases, the semester will be extended to make up cancelled class. Parents and students will be notified of makeup class schedule. No refund or credit will be given if student cannot attend the make up class.<br />
<br />
<span class ="data8">Important Contacts</span><br />
Indus learning web:<a href="http://www.indusintl.net" target="_blank" class="data8"> www.Indusintl.net</a> Telephone: <span class="data8"> 703-867-7699 </span> <br />
<br />
<span class ="data8">Indus learning Class Cancellation Policy</span></td>
              </table>
            
            </td>
          </tr>
		  <tr><td height="03px"></td></tr>
		  
		  
		  <tr>
    <td align="center" class="footer" style="background-image:url(images/menubg.jpg); height:50px; background-repeat:repeat-x">
		<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="center" style="padding-top:10px ">
    
    <uc2:FooterMenu ID="FooterMenu1" runat="server" />
    </td>
  
  </tr>
</table>

    	
    	</td>
  </tr>
		   
   
</table>

    </form>
</center>
</body>
</html>
