<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Certifications.aspx.cs" Inherits="Certifications" %>

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
           Certifications
            </td>
          </tr>
          <tr>
            <td align="left">
            
              <table align="left" class="text">
              
                         <tr>
                <td  style="padding-top:5px; padding-left:7px; padding-right:7px;"><img src="images/21.jpg" width="134" height="413" style="float:left;" /></td>
                             <td  valign="top" width="1000px" ><p class="head">
                                 A Certificate shows the ability of a student in the market place. In fact, a certificate precisely plays a huge role in a student’s career level. We have our certification programs, for some of our courses. In order to obtain a certificate from us, a student has to go through some steps which basically include enrolling for that particular program, learning the mentioned subjects and then take up the test. Depending upon the grade levels scored by the student in the exam, the student will be awarded a certificate.  
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
