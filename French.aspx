﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="French.aspx.cs" Inherits="French" %>

<%@ Register Src="~/Usercontrols/HeaderMenu.ascx" TagName="HeaderMenu" TagPrefix="uc1" %>
<%@ Register Src="~/Usercontrols/FooterMenu.ascx" TagName="FooterMenu" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
     <td height="3px" align="center" class="welcome" style="padding-left:8px;">
           French
     </td>
   </tr>
  <tr><td><br /></td></tr>
    <tr>
      <td align="left">
            <table align="left" class="text">
                 <tr>
                     <td  style="padding-top:5px; padding-left:7; padding-right:7px;"><img src="images/21.jpg" width="134" height="413" style="float:left;" /></td>
                     <td valign="top" align="left"></td>
                    <td width="1000" valign="top"><strong><span class="head">French</span></strong><br />
                           <p class="head">
                               There is no doubt that French language has gained considerable demand over the past few years. A lot of students now are showing keen interest to learn French. At Indus Intl, we have designed our course curriculum along with the relevant material for French language. Our entire course structure for French language is built in a progressive manner, which means right from the very basics towards the advanced lessons. The whole flow of our training program is gradually built and our French teachers are well-versed in all the core aspects of French and will see to that a student will be able to learn French language in a proficient manner. 
                           </p>
                    </td>
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
 </form>
</center>
</body>
</html>