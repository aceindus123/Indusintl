﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EngRead.aspx.cs" Inherits="EngRead" %>


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
               English 
            </td>
          </tr>
          <tr><td><br /></td></tr>

          <tr>
            <td align="left">
              <table align="left" class="text">
                  <tr>
                      <td  style="padding-top:5px; padding-left:7; padding-right:7px;"><img src="images/21.jpg" width="134" height="413" style="float:left;" /></td>
                       <td width="1000"><strong><span class="head">Reading</span><br />
                          <br />
Our reading instruction focus on recognizing phonics, building vocabulary, improving comprehension. Our teachers promote strong vocabulary skills and teach them how to apply critical reading and inferential references to a variety of subjects.<br />
At Indus we can give you the tips, tools and the support you need to develop good study habits.<br />
<br />
                      </strong> <strong>Indus Intl will help your child master the following reading skills:<br />
                      <br />
                      </strong> <span class ="data8"><strong>Elementary School: </strong></span>
                      <ul>
                        <li><strong>Phonic </strong></li>
                        <li><strong>Vocabulary </strong></li>
                        <li><strong>Reading Comprehension </strong> </li>
                        <li><strong>Fluency </strong> <br />
                            <br />
                            <span class ="data8"><strong>Middle school: </strong></span> </li>
                        <li><strong>Word Knowledge and Vocabulary </strong></li>
                        <li><strong>Reading Comprehension</strong></li>
                        <li><strong>Fluency </strong> <br />
                            <br />
                            <span class ="data8"><strong>High School:</strong></span> </li>
                        <li><strong>SuWord Knowledge and Vocabulary </strong></li>
                        <li><strong>Reading Comprehension</strong></li>
                        <li><strong>Fluency</strong> <br />
                            <br />
                            <span class ="head"><strong>Writing</strong></span><br />
                            <span class="data8"><strong></strong></span> <strong>Indus improve your child&rsquo;s writing through rigorous exercises in spelling, grammar and composition. Students learn to brainstorm and outline ideas, develop statements and supporting paragraphs and finally revise and edit their work.  We ensure that students become clear and concise writers.</strong> </li>
                      </ul>
                      </td>
                    </tr>
                  </table>
                  <br />
            </td>
            </tr>    
             
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
