<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Eng_Grammer.aspx.cs" Inherits="Eng_Grammer" %>


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
            <td height="3px" align="center" class="welcome" style="padding-left:8px;">
               English Grammar
            </td>
          </tr>
                   <tr><td><br /></td></tr>
          <tr>
            <td align="left">
            
              <table align="left" class="head">
              
                  <tr>         
                <td  style="padding-top:5px; padding-left:7; padding-right:7px;"><img src="images/21.jpg" width="134" height="413" style="float:left;" /></td>
              <td width="1000" valign="top"><strong><span class="head">GRAMMAR</span> </strong> <br />
                          <br />
Improve your child’s writing with our great instructional material for all ages and skill levels, our grammar lessons will transform you into a grammar pro! We use our highly effective method for a unique, powerful textbook that links good writing to the perennially difficult-to-teach subject—grammar. A Sentence-Composing Approach gives our students the chance to absorb and replicate the grammatical structures used by some of the best writers of our times. <br />
<br />
<br />
                     
                        <p>
                            &nbsp;</p>
                     
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
