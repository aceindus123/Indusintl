<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ourfaculty.aspx.cs" Inherits="ourfaculty" %>

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
               Our Faculty
            </td>
          </tr>
          <tr>
            <td align="left">
            
              <table align="left" class="text">
              
                           
                <td  style="padding-top:5px; padding-left:7; padding-right:7px;"><img src="images/21.jpg" width="134" height="413" style="float:left;" /></td>
              <td width="637" valign="top"><strong><span class="head">Our Faculty</span><br /></strong> 
                          <br />

Our Faculty takes pleasure in assisting students to excel in math, reading, science, English, Spanish, SAT and all other academic subjects and tests. Because teaching is the heart of this enterprise, our faculty is packed with ultra-high-achiever, and they’re famously approachable and accessible too.


<br />
                          <br />

If you decide to choose Indus Learning Tutoring Service to help you, one of our teachers will discuss with you the academic problems you want solved, explain what can be done to turn things around and set a date for your first lesson. All lessons will take place in our tutoring center on a day and at a time chosen by you and the teacher.
<br />
<br />
Our teachers always begin their first lesson with a diagnostic test designed to pinpoint the student’s strengths and weaknesses. By discovering which topics first caused trouble, which topics are in desperate need of work and which topics have already been mastered, we maintain high standards of professionalism and effectively aid the student in achieving full potential.
<br />
<br />
For more information, visit us at Indus Learning Center, so we can start helping you excel. Call us at (703) 263-7279. Should we be out of the office or helping other students when you call, leaving a message will always result in a prompt return call.
                      
                        <p>
                            &nbsp;</p>
                      </td>
                  
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
