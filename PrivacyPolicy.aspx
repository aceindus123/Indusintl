<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrivacyPolicy.aspx.cs" Inherits="PrivacyPolicy" %>

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
          Privacy Policy
            </td>
          </tr>
          <tr>
            <td align="left">
            
              <table align="left" class="text">
              
                         <tr>
                <td  style="padding-top:5px; padding-left:7px; padding-right:7px;"><img src="images/21.jpg" width="134" height="413" style="float:left;" /></td>
                             <td  valign="top" width="1000px"><p class="head">
                                 Your privacy is atmost important to us, hence what all personal information you provide to us will not be shared to any other member excluding Indus Intl authorized team. We sometimes might tie-up with third-party members who might share their links on our website, and basically are the ones who are in tune with our business. If you want to get associated with these particular third-party members, then in that particular scenario, upon your request we will share your information with them. In certain scenarios, if there is a technical malfunction with our website and your available data is lost or is inappropriately handled then we should not be held responsible in any aspect whatsoever.
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
