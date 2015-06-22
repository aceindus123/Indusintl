<%@ Page Language="C#" AutoEventWireup="true" CodeFile="getstart.aspx.cs" Inherits="getstart" %>


<%@ Register Src="~/Usercontrols/HeaderMenu.ascx" TagName="HeaderMenu" TagPrefix="uc1" %>
<%@ Register Src="~/Usercontrols/FooterMenu.ascx" TagName="FooterMenu" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>: : Indus Intl : :</title>
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
              How To Get Start
            </td>
          </tr>
          <tr>
            <td align="left">
            
              <table align="left" class="text">
              
                           
                <td  style="padding-top:5px; padding-left:7; padding-right:7px;"><img src="images/21.jpg" width="134" height="413" style="float:left;" /></td>
              <td width="637" valign="top"><strong><span class="head">Getting Started</span><br /></strong> 
                          <br />
Thank you choosing the Indus Intl to help you and be a partner to fulfill your dream in furthering your education! Whether you are just beginning your research or are ready to get started now, we have every option you need below to move forward:
<br />
<br />
<strong>Free Information Packet </strong><br />
If you would like to receive information about Indus Intl Center please call us 703-574-3268  we‘ll be happy to give you all the information you needed or you can also check online, On the home Page, right side of the page shows a list of courses offered
<br />
                          <br />
<strong>Or</strong>
<br />
<br />
On the Top Menu Bar, click on the tab “courses” a page will be displayed with list of trainings offered at Indus Training will be displayed here. 
<br />
<br />
<strong>Apply Now </strong>
<br />

  If you are ready to get started now, please come to the center location and fill the application or you can also <a href="Enroll.aspx" class="data">click here</a>  to fill out our application.
  <br />
  <br />
  <strong>Center Location Address:</strong>
  <br />
    To find out the location address, please <a href="directions.aspx" class="data">click here </a> you get the direction. 

                      
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
