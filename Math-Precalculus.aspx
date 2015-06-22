<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Math-Precalculus.aspx.cs" Inherits="Math_Precalculus" %>

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
    <td width="1180px" style="border:1px solid #d7d9e5" align="center">
       <uc1:HeaderMenu ID="HeaderMenu1" runat="server" />
    </td>
  </tr>
   
  <tr>
     <td height="3px"></td>
  </tr>
           
   <tr>
     <td height="3px" align="center" class="welcome" style="padding-left:8px;">
           Maths  Pre Calculus
     </td>
   </tr>
      <tr><td><br /></td></tr>
    <tr>
      <td align="left">
            <table align="left" class="text">
                 <tr>
                     <td  style="padding-top:5px; padding-left:7; padding-right:7px;"><img src="images/21.jpg" width="134" height="413" style="float:left;" /></td>
                     <td valign="top" align="left"></td>
                    <td width="1000" valign="top"><strong><span class="head">Pre Calculus</span></strong><br />
                         <p class="head"> 
                             Indus Intl has a well developed curriculum for Pre-calculus and will help student in gaining knowledge on all the concepts of Pre-calculus. Pre-calculus prepares students for calculus. Our tutors will see to that a student is able to learn all the concepts of pre-calculus thoroughly as it is a base for calculus; hence importance is given to the fundamentals. Some of the concepts covered in Pre-calculus are functions, graphs, real and complex numbers, conic sections, vectors, rational expressions, algebraic expressions, quadratic functions, combining functions and many more relevant concepts that will be taught in an effective manner.
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