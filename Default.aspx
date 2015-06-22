<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Src="~/Usercontrols/HeaderMenu.ascx" TagName="HeaderMenu" TagPrefix="uc1" %>
<%@ Register Src="~/Usercontrols/FooterMenu.ascx" TagName="FooterMenu" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>: : Indus Intl : :</title>
<link rel="stylesheet" href="includes/style.css" type="text/css" />
  
</head>

<body style="padding:0px; margin:0px;" runat="server">

<form id="form1" runat="server">
<table cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%" style="border:1px solid #d7d9e5" >
       <uc1:HeaderMenu ID="HeaderMenu1" runat="server" />
    </td>
  </tr>
   
        
          <tr>
            <td height="5px"></td>
          </tr>
          <tr>
            <td align="center"><table width="100%" cellspacing="0" cellpadding="0"  style="padding-left:2px;">
                <tr>
                  <td width="0px;"></td>
                  <td valign="top" align="center"><table width="1180" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><table cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="700px" align="left" valign="top" class="text" style="border:1px solid #e9ecf1;  height:117px; padding-left:5px; padding-right:5px;">
                                  <div align="justify"><span class="welcome" style="padding-top:5px; padding-bottom:5px">
                                  <div style="padding-top:10px "><img src="images/welcomto.jpg" /></div>
                                  </span> <span class="head2"><img src="images/welcomeimg.jpg" align="left" style="padding-right:05px "/>Indus Intl provides children with tutoring and supplemental instruction to students of all ages, grades and skill levels in Math, Reading, Writing, Study Skills. 
                                      We also provide individualized tutoring and SAT/TJ Test preparation for children and teens that are struggling or cannot keep up with 
                                      homework/class work, need to prepare for college or just want to get ahead in school and improve their grades. Indus Intl’s individualized 
                                      approach to learning builds academically, good work habits  and positive attitudes that your child needs to succeed at school and at life. 
                                      Affordable tutoring instruction is available in math, science, reading and writing. Our customized learning.</span><br />
                              </div></td>
                              <td width="5px">&nbsp;</td>
                              <td width="480px" align="right" valign="top" style="border:1px solid #e9eaef"><table cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td align="left"><img src="images/coursestitle.jpg" /></td>
                                  </tr>
                                  <tr>
                                    <td align="left" class="courses_1" style="background-color:#fbfeff; padding-top:10px; ">
                                    
                                    <table cellspacing="6" width="460px">
                                        <tr>
                                          <td><img src="images/6.gif" /><a href="getstart.aspx">Getting Started</a></td>
                                          <td><img src="images/6.gif" /><a href="Hwork.aspx">Hw Help-Elementary(3rd-6th)</a></td>
                                          <td><img src="images/6.gif" /><a href="EngRead.aspx">English</a></td>
                                        </tr>
                                        <tr>
                                          <td><img src="images/6.gif" /><a href="#" name="link10" id="link4" onmouseover="MM_showMenu(window.mm_menu_0405120830_0,0,14,null,'link10')" onmouseout="MM_startTimeout();">3rd&ndash;12th&nbsp;Grade&nbsp;Tutoring</a></td>
                                           <%-- <td><img src="images/6.gif" /><asp:Label runat="server" name="link10" id="link4" onmouseover="MM_showMenu(window.mm_menu_0405120830_0,0,14,null,'link10')"
                                                 CssClass="disable" onmouseout="MM_startTimeout();">3rd&ndash;12th&nbsp;Grade&nbsp;Tutoring</asp:Label></td>
                                          <t--%><td><img src="images/6.gif" /><a href="Mid_Hwork.aspx">HW&nbsp;Help&ndash;Middle(7th-9th)</a></td>
                                          <td><img src="images/6.gif" /><a href="ourfaculty.aspx">Our&nbsp;Faculty </a></td>
                                        </tr>
                                        <tr>
                                          <td><img src="images/6.gif" /><a href="#" name="link9" id="link7" onmouseover="MM_showMenu(window.mm_menu_0405121322_0,0,14,null,'link9')" onmouseout="MM_startTimeout();">IB/MAGNET/T.JPREP</a></td>
                                          <td><img src="images/6.gif" /><a href="High_Hwork.aspx">HW Help-High(10th-12th)</a></td>
                                          <td><img src="images/6.gif" /><a href="BusinessOpportunity.aspx">Business&nbsp;Opportunity</a></td>
                                        </tr>
                                        <tr>
                                          <td><img src="images/6.gif" /><a href="#" name="link14" id="link8" onmouseover="MM_showMenu(window.mm_menu_0405121538_0,0,14,null,'link14')" onmouseout="MM_startTimeout();">SAT I (Short Term)</a> </td>
                                          <td><img src="images/6.gif" /><a href="spanish.aspx">Spanish</a></td>
                                          <td><img src="images/6.gif" /><a href="employment.aspx">Employment</a></td>
                                        </tr>
                                        <tr>
                                          <td><img src="images/6.gif" /><a href="#" name="link6" id="link11" onmouseover="MM_showMenu(window.mm_menu_0405123023_0,0,14,null,'link6')" onmouseout="MM_startTimeout();">SAT I (Long Term)</a></td>
                                          <td><img src="images/6.gif" /><a href="French.aspx">French</a></td>
                                          <td><img src="images/6.gif" /><a href="snowcl.aspx">Snow Day Closing</a> </td>
                                        </tr>
                                        <tr>
                                          <td><img src="images/6.gif" /><a href="#" name="link13" id="link12" onmouseover="MM_showMenu(window.mm_menu_0405123156_0,0,14,null,'link13')" onmouseout="MM_startTimeout();">SAT II (Short Term)</a></td>
                                          <td><img src="images/6.gif" /><a href="Hindi.aspx">Hindi</a></td>
                                          <td>&nbsp;</td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                            </tr>
                        </table></td>
                      </tr>
                      <TR>
                        <TD height="6PX"></TD>
                      </TR>
                      <tr>
                        <td><table width="1180" cellspacing="0" cellpadding="0">
                            <tr>
                              <td valign="top" align="left" width="400px"><table cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td class="wizardshed"  style="background-image:url(images/wizlear_bg.jpg); background-repeat:repeat-x; border:1px solid #e9ecf1" align="left"><table cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td><table cellpadding="0" cellspacing="0">
  <tr>
    <td style="padding-left:10px "> <img src="images/wizardprogramhelp.jpg" width="237" height="17" /></td>
	</tr>

	<tr>

    <td align="left" style="padding-left:30px " width="350px">
			<table class="head2">
  <tr>
    <td align="left" style="padding-right:05px "><img src="images/7.gif" /></td>
    <td align="left">Increase Reading Success</td>
  </tr>
  <tr>
    <td align="left" style="padding-right:05px ">&nbsp;<img src="images/7.gif" /></td>
    <td align="left">Meet and Exceed State Standards</td>
  </tr>
 <tr>
    <td align="left" style="padding-right:05px "><img src="images/7.gif" /></td>
    <td align="left">Experienced Teachers</td>
  </tr>
 <tr>
    <td align="left" style="padding-right:05px "><img src="images/7.gif" /></td>
    <td align="left">Master the Learning Skills</td>
  </tr>
</table>

	</td>
  </tr>
</table></td>
                                          <td align="right" style="padding-left:25px;"><img src="images/wizimg_1.jpg" width="220" height="98" /></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                                  <tr>
                                    <td height="7px"></td>
                                  </tr>
                                  <tr>
                                    <td class="wizardshed"  style="background-image:url(images/wizlear_bg.jpg); background-repeat:repeat-x; border:1px solid #e9ecf1" align="left" height="98px"><table cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td align="left"><img src="images/wizimg_2.jpg" width="220" height="98" /></td>
                                          <td>
										  		<table cellpadding="0" cellspacing="0">
  <tr>
    <td style="padding-left:50px;"> <img src="images/wizardhighlet.jpg" width="220" height="18" /></td>
	</tr>
	<tr>
    <td align="left" style="padding-left:90px ">
			<table class="head2">
  <tr>
    <td align="left" style="padding-right:05px "><img src="images/7.gif" /></td>
    <td align="left">Pesonalized Tutoring</td>
  </tr>
  <tr>
    <td align="left" style="padding-right:05px "><img src="images/7.gif" /></td>
    <td align="left">Flexible Scheduling</td>
  </tr>
 <tr>
    <td align="left" style="padding-right:05px"><img src="images/7.gif" /></td>
    <td align="left">Experienced Teachers</td>
  </tr>
 <tr>
    <td align="left" style="padding-right:05px "><img src="images/7.gif" /></td>
    <td align="left">Test Taking Strategies</td>
  </tr>
</table>

	</td>
  </tr>
</table>
</td>
                                        </tr>
                                    </table></td>
                                  </tr>
                       <%--           <tr>
                                    <td height="4px"></td>
                                  </tr>--%>
                                  <tr>
                                    <td align="center" class="Hiring" style="width:480px;height:35px"><img src="images/hiringimg.gif" /></td>
                                  </tr>
                              </table></td>

                              <td width="8px"></td>

                              <td valign="top" width="650px" >
                                  <table cellspacing="0" cellpadding="0" width="650px">
                                  <tr>
                                       <td width="215px" style="border:1px solid #e9eaef">
                                           <table cellspacing="0" cellpadding="0" align="center" width="215px">
                                        <tr>
                                          <td height="4px"><br /></td>
                                        </tr>
                                        <tr>
                                          <td align="center"><img src="images/elementaryschool.jpg" width="155" height="67" /></td>
                                        </tr>
                                               <tr><td height="8px"></td></tr>
                                        <tr>
                                          <td align="center" bgcolor="#f7f7f7"><img src="images/elementaryschoolttitle.jpg" width="173" height="17" /></td>
                                        </tr>
                                        <tr>
                                          <td height="8px"></td>
                                        </tr>
                                        <tr>
                                          <td align="left">
                                              <table class="head2">
                                              <tr>
                                                <td valign="top" style=" padding-top:4px"><img src="images/5.gif" /></td>
                                                <td>&nbsp;</td>
                                              <%--  <td valign="top">Help catching up on any missed skills and lessons.</td>--%>
                                                <td valign="top">Keen on understanding student issues.</td>

                                              </tr>
                                              <tr>
                                                <td valign="top" style=" padding-top:4px"><img src="images/5.gif" /></td>
                                                <td>&nbsp;</td>
                                              <%--  <td valign="top">Extra instruction in class material and concepts.</td>--%>
                                                  <td valign="top">Maintaining class discipline to ensure high impact training.</td>
                                              </tr>
                                              <tr>
                                                <td valign="top" style=" padding-top:4px"><img src="images/5.gif" /></td>
                                                <td>&nbsp;</td>
                                               <%-- <td valign="top">Better organisational skills and study habits.</td>--%>
                                                   <td valign="top">Revision for important lessons as per requirement.<br />
                                                  </td>
                                              </tr>
                                      <%--        <tr>
                                                <td valign="top" style=" padding-top:4px"></td>
                                                <td>&nbsp;</td>
                                                <td valign="top"></td>
                                              </tr>--%>
                                              <tr>
                                                <td valign="top"></td>
                                                <td>&nbsp;</td>
                                                <td valign="bottom" align="right"><img src="images/more.jpg" width="54" height="19" /></td>
                                              </tr>
                                          </table></td>
                                        </tr>
                                    </table></td>
                                      <td width="5px">&nbsp;</td>
                                        <td width="215px" style="border:1px solid #e9eaef">
                                           <table cellspacing="0" cellpadding="0" align="center" width="215px">
                                        <tr>
                                          <td height="4px"><br /></td>
                                        </tr>
                                        <tr>
                                          <td align="center"><img src="images/middlesschool.jpg" width="155" height="67" /></td>
                                        </tr>
                                               <tr><td height="8px"></td></tr>
                                        <tr>
                                          <td align="center" bgcolor="#f7f7f7"><img src="images/midschooltitle.jpg" width="173" height="17" /></td>
                                        </tr>
                                        <tr>
                                          <td height="8px"></td>
                                        </tr>
                                        <tr>
                                          <td align="left">
                                              <table class="head2">
                                              <tr>
                                                <td valign="top" style=" padding-top:4px"><img src="images/5.gif" /></td>
                                                <td>&nbsp;</td>
                                              <%--  <td valign="top">Help catching up on any missed skills and lessons.</td>--%>
                                                <td valign="top">Help catching up on any missed skills and lessons.</td>

                                              </tr>
                                              <tr>
                                                <td valign="top" style=" padding-top:4px"><img src="images/5.gif" /></td>
                                                <td>&nbsp;</td>
                                              <%--  <td valign="top">Extra instruction in class material and concepts.</td>--%>
                                                  <td valign="top">Extra instruction in class material and concepts.</td>
                                              </tr>
                                              <tr>
                                                <td valign="top" style=" padding-top:4px"><img src="images/5.gif" /></td>
                                                <td>&nbsp;</td>
                                               <%-- <td valign="top">Better organisational skills and study habits.</td>--%>
                                                   <td valign="top">Better organisational skills and study habits.<br />
                                                  </td>
                                              </tr>
                                      <%--        <tr>
                                                <td valign="top" style=" padding-top:4px"></td>
                                                <td>&nbsp;</td>
                                                <td valign="top"></td>
                                              </tr>--%>
                                              <tr>
                                                <td valign="top"></td>
                                                <td>&nbsp;</td>
                                                <td valign="bottom" align="right"><img src="images/more.jpg" width="54" height="19" /></td>
                                              </tr>
                                          </table></td>
                                        </tr>
                                    </table></td>
                                      <td width="5px">&nbsp;</td>
                                         <td width="215px" style="border:1px solid #e9eaef">
                                           <table cellspacing="0" cellpadding="0" align="center" width="215px">
                                        <tr>
                                         <td height="4px"><br /></td>
                                        </tr>
                                        <tr>
                                          <td align="center"><img src="images/highschool.jpg" width="155" height="67" /></td>
                                        </tr>
                                               <tr><td height="8px"></td></tr>
                                        <tr>
                                          <td align="center" bgcolor="#f7f7f7"><img src="images/highschooltitle.jpg" width="173" height="17" /></td>
                                        </tr>
                                        <tr>
                                          <td height="8px"></td>
                                        </tr>
                                        <tr>
                                          <td align="left">
                                              <table class="head2">
                                              <tr>
                                                <td valign="top" style=" padding-top:4px"><img src="images/5.gif" /></td>
                                                <td>&nbsp;</td>
                                              <%--  <td valign="top">Help catching up on any missed skills and lessons.</td>--%>
                                                <td valign="top">Learn with some of the best tutors.</td>

                                              </tr>
                                              <tr>
                                                <td valign="top" style=" padding-top:4px"><img src="images/5.gif" /></td>
                                                <td>&nbsp;</td>
                                              <%--  <td valign="top">Extra instruction in class material and concepts.</td>--%>
                                                  <td valign="top">Exceptionally designed subject related study materials</td>
                                              </tr>
                                              <tr>
                                                <td valign="top" style=" padding-top:4px"><img src="images/5.gif" /></td>
                                                <td>&nbsp;</td>
                                               <%-- <td valign="top">Better organisational skills and study habits.</td>--%>
                                                   <td valign="top">Focus on extracurricular activities for all round development.<br />
                                                  </td>
                                              </tr>
                                              <tr>
                                                <td valign="top" style=" padding-top:4px"></td>
                                                <td>&nbsp;</td>
                                                <td valign="top"></td>
                                              </tr>
                                              <tr>
                                                <td valign="top"></td>
                                                <td>&nbsp;</td>
                                                <td valign="bottom" align="right"><img src="images/more.jpg" width="54" height="19" /></td>
                                              </tr>
                                          </table></td>
                                        </tr>
                                    </table></td>
                                    
                                  </tr>
                              </table></td>
                            </tr>
                        </table></td>
                      </tr>
                  </table></td>
                  <td width="5px;"></td>
                </tr>
            </table></td>
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
</body>
</html>
