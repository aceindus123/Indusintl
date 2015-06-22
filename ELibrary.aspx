<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ELibrary.aspx.cs" Inherits="ELibrary" %>

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
           E - Library
            </td>
          </tr>
          <tr>
            <td align="left">
            
              <table align="left" class="text">
              
                         <tr>
                <td  style="padding-top:5px; padding-left:7px; padding-right:7px;"><img src="images/21.jpg" width="134" height="413" style="float:left;" /></td>
                             <td  valign="top" width="1000px"><p class="head">
                                 Our credo at Indus Intl is to provide a wonderful and impactful learning platform, through which student’s can acquire the knowledge they have been yearning for. For this particular reason, we have built an exclusive E-library that consists all the books pertaining to almost all the subjects for all the grade levels. The E-Library has been built with precise classification based on version, author, edition and other pertinent aspects of a book. Our team has designed the E-library meticulously in order to encourage the students and parents go through our broad array of books, and take the maximum benefit out of it.
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
