<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HiringNew.aspx.cs" Inherits="HiringNew" %>

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
            Hiring New
            </td>
          </tr>
          <tr>
            <td align="left">
            
              <table align="left" class="text">
              
                         <tr>
                <td  style="padding-top:5px; padding-left:7px; padding-right:7px;"><img src="images/21.jpg" width="134" height="413" style="float:left;" /></td>
                             <td  valign="top" width="1000px"><p class="head">

                                    Indus Intl is hiring new staff. We are eager to build a more powerful team which not only consists the current leading tutors but also newly hired staff who can understand our vision and help us reach that vision. Individuals who are passionate to teach and are expert in any one subject (school level), and at the same time are compassionate enough to understand the student skill building gaps would be highly rewarding for us. Rest assured, you will be not only having fun at our premises, but also will work with a wonderful team and thereby explore your abilities to the fullest.
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
