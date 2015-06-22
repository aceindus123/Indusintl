<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TermsConditions.aspx.cs" Inherits="TermsConditions" %>

<%@ Register Src="~/Usercontrols/HeaderMenu.ascx" TagName="HeaderMenu" TagPrefix="uc1" %>
<%@ Register Src="~/Usercontrols/FooterMenu.ascx" TagName="FooterMenu" TagPrefix="uc2" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>: : Indus Intl : :</title>
</head>
<body>
    <form id="form1" runat="server">
     <div>
         <table cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="1000px" style="border:1px solid #d7d9e5" align="center">
       <uc1:HeaderMenu ID="HeaderMenu1" runat="server" />
    </td>
  </tr>
   
    <tr>
            <td height="3px"></td>
          </tr>
        
          <tr>
            <td height="3px" align="center" class="welcome">
          Terms & Conditions
            </td>
          </tr>
          <tr>
            <td align="left">
            
              <table align="left" class="text">
              
                         <tr>
                <td  style="padding-top:5px; padding-left:7px; padding-right:7px;"><img src="images/21.jpg" width="134" height="413" style="float:left;" /></td>
                             <td  valign="top" width="1000px"><p class="head">
                                 All the content, images, animations, audio, videos, links and other matter displayed on our website is the exclusive property of Indus Intl. We expect that none of the students/parents/tutors/users/members/customers should copy, duplicate, edit, modify, transfer or sub-license any of our material for your perusal or benefit. If we find anyone using our website details for unscrupulous means, then it will be deemed illegal and necessary action will be taken. If there is any aspect that you want to utilize, then you can do so by submitting us a written request, in turn our team will send you a written permission draft, after which you can carry out with your activities.
                                </p> </td>
                         </tr>  
        
                  
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
    </div>
    </form>
</body>
</html>
