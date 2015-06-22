<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderMenu.ascx.cs" Inherits="Usercontrols_HeaderMenu" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>: : Indus Intl : :</title>
<link rel="stylesheet" href="style.css" type="text/css" />
<script language="JavaScript">
<!--

function mmLoadMenus() {
  if (window.mm_menu_0401150035_0) return;
                window.mm_menu_0401150035_0 = new Menu("root",100,20,"Arial",12,"#FFFFFF","#FFFFFF","#2391BF","#E08C06","left","middle",4,1,1000,-5,7,true,true,true,0,false,false);
  mm_menu_0401150035_0.addMenuItem("Web&nbsp;Designing");
  mm_menu_0401150035_0.addMenuItem("hhh");
   mm_menu_0401150035_0.hideOnMouseOut=true;
   mm_menu_0401150035_0.bgColor='#FFFFFF';
   mm_menu_0401150035_0.menuBorder=1;
   mm_menu_0401150035_0.menuLiteBgColor='#FFFFFF';
   mm_menu_0401150035_0.menuBorderBgColor='#B4DFF1';

    window.mm_menu_0401170430_0_1 = new Menu("ENGLISH",120,25,"Arial",12,"#FFFFFF","#FFFFFF","#2391BF","#E08C06","left","middle",5,0,1000,-5,7,true,true,true,0,true,false);
    mm_menu_0401170430_0_1.addMenuItem("Critical&nbsp;Reading","location='English_R.aspx'");
    mm_menu_0401170430_0_1.addMenuItem("Essay&nbsp;Writing","location='English_W.aspx'");
    mm_menu_0401170430_0_1.addMenuItem("Grammar","location='Eng_Grammer.aspx'");
    mm_menu_0401170430_0_1.addMenuItem("Vocabulary","location='Eng-Vocabulary.aspx'");
     mm_menu_0401170430_0_1.hideOnMouseOut=true;
     mm_menu_0401170430_0_1.bgColor='#FFFFFF';
     mm_menu_0401170430_0_1.menuBorder=1;
     mm_menu_0401170430_0_1.menuLiteBgColor='#FFFFFF';
     mm_menu_0401170430_0_1.menuBorderBgColor='#B4DFF1';
    window.mm_menu_0401170430_0_2 = new Menu("MATH",102,25,"Arial",12,"#FFFFFF","#FFFFFF","#2391BF","#E08C06","left","middle",5,0,1000,-5,7,true,true,true,0,true,false);
    mm_menu_0401170430_0_2.addMenuItem("Pre-Algebra","location='Math-Prealz.aspx'");
    mm_menu_0401170430_0_2.addMenuItem("Algebra&nbsp;1","location='Math-Alz1.aspx'");
    mm_menu_0401170430_0_2.addMenuItem("Algebra&nbsp;2","location='Math-Alz2.aspx'");
    mm_menu_0401170430_0_2.addMenuItem("Geometry","location='Math-Geometry.aspx'");
    mm_menu_0401170430_0_2.addMenuItem("Pre-Calculus","location='Math-Precalculus.aspx'");
    mm_menu_0401170430_0_2.addMenuItem("Calculus","location='Math-Calculus.aspx'");
    mm_menu_0401170430_0_2.addMenuItem("Statistics","location='Math-Statistics.aspx'");
     mm_menu_0401170430_0_2.hideOnMouseOut=true;
     mm_menu_0401170430_0_2.bgColor='#FFFFFF';
     mm_menu_0401170430_0_2.menuBorder=1;
     mm_menu_0401170430_0_2.menuLiteBgColor='#FFFFFF';
     mm_menu_0401170430_0_2.menuBorderBgColor='#B4DFF1';
    window.mm_menu_0401170430_0_3 = new Menu("SCIENCE",85,25,"Arial",12,"#FFFFFF","#FFFFFF","#2391BF","#E08C06","left","middle",5,0,1000,-5,7,true,true,true,0,true,false);
    mm_menu_0401170430_0_3.addMenuItem("Physics","location='Sat2_Physics.aspx'");
    mm_menu_0401170430_0_3.addMenuItem("Chemistry","location='Sat2_Chemistry.aspx'");
    mm_menu_0401170430_0_3.addMenuItem("Biology","location='Sat2_Biology.aspx'");
     mm_menu_0401170430_0_3.hideOnMouseOut=true;
     mm_menu_0401170430_0_3.bgColor='#FFFFFF';
     mm_menu_0401170430_0_3.menuBorder=1;
     mm_menu_0401170430_0_3.menuLiteBgColor='#FFFFFF';
     mm_menu_0401170430_0_3.menuBorderBgColor='#B4DFF1';
    window.mm_menu_0401170430_0_4 = new Menu("IB/MAGNET/T.J PREP",68,25,"Arial",12,"#FFFFFF","#FFFFFF","#2391BF","#E08C06","left","middle",5,0,1000,-5,7,true,true,true,0,true,false);
    mm_menu_0401170430_0_4.addMenuItem("Math","location='IB_Math.aspx'");
    mm_menu_0401170430_0_4.addMenuItem("Verbal","location='IB_Verbal.aspx'");
    mm_menu_0401170430_0_4.addMenuItem("Writing","location='IB_Writing.aspx'");
     mm_menu_0401170430_0_4.hideOnMouseOut=true;
     mm_menu_0401170430_0_4.bgColor='#FFFFFF';
     mm_menu_0401170430_0_4.menuBorder=1;
     mm_menu_0401170430_0_4.menuLiteBgColor='#FFFFFF';
     mm_menu_0401170430_0_4.menuBorderBgColor='#B4DFF1';
    window.mm_menu_0401170430_0_5 = new Menu("SAT&nbsp;I(Short&nbsp;Term)",120,25,"Arial",12,"#FFFFFF","#FFFFFF","#2391BF","#E08C06","left","middle",5,0,1000,-5,7,true,true,true,0,true,false);
    mm_menu_0401170430_0_5.addMenuItem("Critical&nbsp;Reading","location='Sat1_CR.aspx'");
    mm_menu_0401170430_0_5.addMenuItem("Essay&nbsp;Writing","location='Sat1_EW.aspx'");
    mm_menu_0401170430_0_5.addMenuItem("Math","location='Sat1_Math.aspx'");
     mm_menu_0401170430_0_5.hideOnMouseOut=true;
     mm_menu_0401170430_0_5.bgColor='#FFFFFF';
     mm_menu_0401170430_0_5.menuBorder=1;
     mm_menu_0401170430_0_5.menuLiteBgColor='#FFFFFF';
     mm_menu_0401170430_0_5.menuBorderBgColor='#B4DFF1';
    window.mm_menu_0401170430_0_6 = new Menu("SAT&nbsp;I(Long&nbsp;Term)",120,25,"Arial",12,"#FFFFFF","#FFFFFF","#2391BF","#E08C06","left","middle",5,0,1000,-5,7,true,true,true,0,true,false);
    mm_menu_0401170430_0_6.addMenuItem("Critical&nbsp;Reading","location='Sat1_CR.aspx'");
    mm_menu_0401170430_0_6.addMenuItem("Essay&nbsp;Writing","location='Sat1_EW.aspx'");
    mm_menu_0401170430_0_6.addMenuItem("Math","location='Sat1_Math.aspx'");
     mm_menu_0401170430_0_6.hideOnMouseOut=true;
     mm_menu_0401170430_0_6.bgColor='#FFFFFF';
     mm_menu_0401170430_0_6.menuBorder=1;
     mm_menu_0401170430_0_6.menuLiteBgColor='#FFFFFF';
     mm_menu_0401170430_0_6.menuBorderBgColor='#B4DFF1';
    window.mm_menu_0401170430_0_7 = new Menu("SAT&nbsp;II(Long&nbsp;Term)",85,25,"Arial",12,"#FFFFFF","#FFFFFF","#2391BF","#E08C06","left","middle",5,0,1000,-5,7,true,true,true,0,true,false);
    mm_menu_0401170430_0_7.addMenuItem("Math","location='Sat2_Math.aspx'");
    mm_menu_0401170430_0_7.addMenuItem("Physics","location='Sat2_Physics.aspx'");
    mm_menu_0401170430_0_7.addMenuItem("Chemistry","location='Sat2_Chemistry.aspx'");
    mm_menu_0401170430_0_7.addMenuItem("Biology","location='Sat2_Biology.aspx'");
    mm_menu_0401170430_0_7.addMenuItem("Literature","location='Sat2_Lit.aspx'");
    mm_menu_0401170430_0_7.addMenuItem("History","location='Sat2_History.aspx'");
    mm_menu_0401170430_0_7.addMenuItem("Spanish","location='Sat2_Spanish.aspx'");
    mm_menu_0401170430_0_7.addMenuItem("French","location='Sat2-French.aspx'");
     mm_menu_0401170430_0_7.hideOnMouseOut=true;
     mm_menu_0401170430_0_7.bgColor='#FFFFFF';
     mm_menu_0401170430_0_7.menuBorder=1;
     mm_menu_0401170430_0_7.menuLiteBgColor='#FFFFFF';
     mm_menu_0401170430_0_7.menuBorderBgColor='#B4DFF1';
    window.mm_menu_0401170430_0_8 = new Menu("HOME&nbsp;WORK&nbsp;HELP",212,25,"Arial",12,"#FFFFFF","#FFFFFF","#2391BF","#E08C06","left","middle",5,0,1000,-5,7,true,true,true,0,true,false);
    mm_menu_0401170430_0_8.addMenuItem("HW&nbsp;Help-Elementary(3rd-6th)","location='Hwork.aspx'");
    mm_menu_0401170430_0_8.addMenuItem("HW&nbsp;Help-Middle(7th-9th)","location='Mid_Hwork.aspx'");
    mm_menu_0401170430_0_8.addMenuItem("HW&nbsp;Help-High(10th-12th)","location='High_Hwork.aspx'");
     mm_menu_0401170430_0_8.hideOnMouseOut=true;
     mm_menu_0401170430_0_8.bgColor='#FFFFFF';
     mm_menu_0401170430_0_8.menuBorder=1;
     mm_menu_0401170430_0_8.menuLiteBgColor='#FFFFFF';
     mm_menu_0401170430_0_8.menuBorderBgColor='#B4DFF1';
  window.mm_menu_0401170430_0 = new Menu("root",165,25,"Arial",12,"#FFFFFF","#FFFFFF","#2391BF","#E08C06","left","middle",5,0,1000,-5,7,true,true,true,0,true,false);
  mm_menu_0401170430_0.addMenuItem(mm_menu_0401170430_0_1);
  mm_menu_0401170430_0.addMenuItem(mm_menu_0401170430_0_2);
  mm_menu_0401170430_0.addMenuItem(mm_menu_0401170430_0_3);
  mm_menu_0401170430_0.addMenuItem(mm_menu_0401170430_0_4);
  mm_menu_0401170430_0.addMenuItem(mm_menu_0401170430_0_5);
  mm_menu_0401170430_0.addMenuItem(mm_menu_0401170430_0_6);
  mm_menu_0401170430_0.addMenuItem(mm_menu_0401170430_0_7);
  mm_menu_0401170430_0.addMenuItem(mm_menu_0401170430_0_8);
  mm_menu_0401170430_0.addMenuItem("SPANISH","location='Spanish.aspx'");
  mm_menu_0401170430_0.addMenuItem("FRENCH","location='French.aspx'");
  mm_menu_0401170430_0.addMenuItem("SOCIAL","location='Social.aspx'");
  mm_menu_0401170430_0.addMenuItem("HISTORY","location='History.aspx'");
  mm_menu_0401170430_0.addMenuItem("HINDI","location='Hindi.aspx'");
   mm_menu_0401170430_0.hideOnMouseOut=true;
   mm_menu_0401170430_0.childMenuIcon="arrows.gif";
   mm_menu_0401170430_0.bgColor='#FFFFFF';
   mm_menu_0401170430_0.menuBorder=1;
   mm_menu_0401170430_0.menuLiteBgColor='#FFFFFF';
   mm_menu_0401170430_0.menuBorderBgColor='#B4DFF1';
window.mm_menu_0405120830_0 = new Menu("root",150,22,"Arial",12,"#FFFFFF","#FFFFFF","#2391BF","#E08C06","left","middle",5,1,1000,-5,7,true,true,true,0,false,false);
  mm_menu_0405120830_0.addMenuItem("ENGLISH","location='EngRead.aspx'");
  mm_menu_0405120830_0.addMenuItem("MATH","location='Math.aspx'");
  mm_menu_0405120830_0.addMenuItem("SCIENCE","location='Science.aspx'");
  mm_menu_0405120830_0.addMenuItem("SOCIAL","location='Social.aspx'");
  mm_menu_0405120830_0.addMenuItem("HISTORY","location='History.aspx'");
  mm_menu_0405120830_0.addMenuItem("GT&nbsp;PREP","location='GTPrep.aspx'");
    mm_menu_0405120830_0.addMenuItem("VIRGINIA&nbsp;SOL","location='Virginia-Sol.aspx'");
  //mm_menu_0405120830_0.addMenuItem("VIRGINIA&nbsp;SOL", "location='vsol.aspx'");
  mm_menu_0405120830_0.addMenuItem("SAT-I(Short&nbsp;Term)","location='Sat1-Short.aspx'");
  mm_menu_0405120830_0.addMenuItem("SAT-I(Long&nbsp;Term)","location='Sat1-Long.aspx'");
  mm_menu_0405120830_0.addMenuItem("SAT-II(short&nbsp;term)","location='Sat2-Short.aspx'");
  mm_menu_0405120830_0.addMenuItem("TJ&nbsp;PREP(6th-8th)","location='TJ-PREP.aspx'");
   mm_menu_0405120830_0.hideOnMouseOut=true;
   mm_menu_0405120830_0.bgColor='#FFFFFF';
   mm_menu_0405120830_0.menuBorder=1;
   mm_menu_0405120830_0.menuLiteBgColor='#FFFFFF';
   mm_menu_0405120830_0.menuBorderBgColor='#C0F0FE';
  window.mm_menu_0405121322_0 = new Menu("root",150,22,"Arial",12,"#FFFFFF","#FFFFFF","#2391BF","#E08C06","left","middle",5,1,1000,-5,7,true,true,true,0,false,false);
  mm_menu_0405121322_0.addMenuItem("MATH","location='IB_Math.aspx'");
  mm_menu_0405121322_0.addMenuItem("ENGLISH","location='EngRead.aspx'");
  mm_menu_0405121322_0.addMenuItem("VERBAL","location='IB_Verbal.aspx'");
  mm_menu_0405121322_0.addMenuItem("WRITING","location='IB_Writing.aspx'");
   mm_menu_0405121322_0.hideOnMouseOut=true;
   mm_menu_0405121322_0.bgColor='#FFFFFF';
   mm_menu_0405121322_0.menuBorder=1;
   mm_menu_0405121322_0.menuLiteBgColor='#FFFFFF';
   mm_menu_0405121322_0.menuBorderBgColor='#C0F0FE';
    window.mm_menu_0405121538_0 = new Menu("root",150,22,"Arial",12,"#FFFFFF","#FFFFFF","#2391BF","#E08C06","left","middle",5,1,1000,-5,7,true,true,true,0,false,false);
  mm_menu_0405121538_0.addMenuItem("Critical&nbsp;Reading","location='Sat1_CR.aspx'");
  mm_menu_0405121538_0.addMenuItem("Essay&nbsp;Writing","location='Sat1_EW.aspx'");
  mm_menu_0405121538_0.addMenuItem("Math","location='Sat1_Math.aspx'");
   mm_menu_0405121538_0.hideOnMouseOut=true;
   mm_menu_0405121538_0.bgColor='#ffffff';
   mm_menu_0405121538_0.menuBorder=1;
   mm_menu_0405121538_0.menuLiteBgColor='#FFFFFF';
   mm_menu_0405121538_0.menuBorderBgColor='#C0F0FE';
  window.mm_menu_0405123023_0 = new Menu("root",150,22,"Arial",12,"#FFFFFF","#FFFFFF","#2391BF","#E08C06","left","middle",5,0,1000,-5,7,true,true,true,0,false,false);
  mm_menu_0405123023_0.addMenuItem("Critical&nbsp;Reading","location='Sat1_CR.aspx'");
  mm_menu_0405123023_0.addMenuItem("Essay&nbsp;Writing","location='Sat1_EW.aspx'");
  mm_menu_0405123023_0.addMenuItem("Math","location='Sat1_Math.aspx'");
   mm_menu_0405123023_0.hideOnMouseOut=true;
   mm_menu_0405123023_0.bgColor='#ffffff';
   mm_menu_0405123023_0.menuBorder=1;
   mm_menu_0405123023_0.menuLiteBgColor='#FFFFFF';
   mm_menu_0405123023_0.menuBorderBgColor='#C0F0FE';
window.mm_menu_0405123156_0 = new Menu("root",150,20,"Arial",12,"#FFFFFF","#FFFFFF","#2391BF","#E08C06","left","middle",5,0,1000,-5,7,true,true,true,0,false,false);
  mm_menu_0405123156_0.addMenuItem("Math","location='Sat2_math.aspx'");
  mm_menu_0405123156_0.addMenuItem("Physics","location='Sat2_physics.aspx'");
  mm_menu_0405123156_0.addMenuItem("Chemistry","location='Sat2_chemistry.aspx'");
  mm_menu_0405123156_0.addMenuItem("Biology","location='Sat2_biology.aspx'");
  mm_menu_0405123156_0.addMenuItem("Literature","location='Sat2_lit.aspx'");
  mm_menu_0405123156_0.addMenuItem("History","location='Sat2_history.aspx'");
  mm_menu_0405123156_0.addMenuItem("Spanish","location='Sat2_spanish.aspx'");
   mm_menu_0405123156_0.hideOnMouseOut=true;
   mm_menu_0405123156_0.bgColor='#ffffff';
   mm_menu_0405123156_0.menuBorder=1;
   mm_menu_0405123156_0.menuLiteBgColor='#FFFFFF';
   mm_menu_0405123156_0.menuBorderBgColor='#C0F0FE';

mm_menu_0405123156_0.writeMenus();
} // mmLoadMenus()



//-->
</script>
<script language="JavaScript" src="mm_menu.js"></script>
</head>

<body style="padding:0px; margin:0px; padding-left:5px; padding-right:5px">
<script language="JavaScript1.2">mmLoadMenus();</script>
<center>

<table width="1180px" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <%--<td width="5px"></td>--%>
       
         <td>
            <table border="0" cellspacing="0" cellpadding="0" width="1180px" align="center">
                <tr>
                    <td align="center" style="background-image:url(images/top_bg1.jpg); background-repeat:repeat-x ">
                        <table width="1180px" border="0" cellspacing="0" cellpadding="0"  align="center">
                            <tr>
                              <td align="left" style="padding-top:4px">
                                <a href="Default.aspx"><img src="images/newlogo1.png" border="0"/></a>
                              </td>
                              <td align="right"  style="padding-top:4px">
                                    <a href="Default.aspx"><img src="images/cellnumber1.png" border="0"/></a>    
                              </td>
                              <td align="right" width="33%"  style="padding-top:4px;">
                                <a href="http://www.industraining.net" target="_blank"><img src="images/emailimage1.png" border="0" /></a>
                              </td>
                            </tr>
                         </table>
                      </td>
                </tr>      
         
                <tr>
                      <td align="center" style="background-image:url(images/menubg.jpg); height:50px; background-repeat:repeat-x">
                          <table width="1180px" cellspacing="0" cellpadding="0" align="center">
                            <tr>
                              <td class="menu"><a href="Default.aspx">Home</a></td>
                              <td><img src="images/menugap.jpg" width="3" height="50" /></td>
                              <td class="menu"><a href="aboutus.aspx">About&nbsp;Us</a></td>
                              <td><img src="images/menugap.jpg" width="3" height="50" /></td>
                              <%--<td class="menu"><a href="#">Courses</a></td>--%>
                              <td class="menu"><a href="#" name="link5" id="link3" onmouseover="MM_showMenu(window.mm_menu_0401170430_0,-13,30,null,'link5')" onmouseout="MM_startTimeout();">Courses</a></td>
                              <td><img src="images/menugap.jpg" width="3" height="50" /></td>
                             <%-- <td class="menu"><a href="Schedules.aspx">Schedules</a></td>--%>
                                <td class="menu"><a href="Schedules.aspx">Schedules</a></td>
                              <td><img src="images/menugap.jpg" width="3" height="50" /></td>
                              <td class="menu"><a href="http://www.Industraining.net" target="_blank">Partners</a></td>
                              <td><img src="images/menugap.jpg" width="3" height="50" /></td>
                              <td class="menu"><a href="Enroll.aspx">Enroll</a></td>
                              <td><img src="images/menugap.jpg" width="3" height="50" /></td>
                              <td class="menu"><a href="PageUnderConstruction.aspx">Demo</a></td>
                              <td><img src="images/menugap.jpg" width="3" height="50" /></td>
                              <td class="menu"><a href="Login.aspx">Login</a></td>
                              <td><img src="images/menugap.jpg" width="3" height="50" /></td>
                              <td class="menu"><a href="Faqs.aspx">FAQ</a></td>
                              <td><img src="images/menugap.jpg" width="3" height="50" /></td>
                              <td class="menu"><a href="Directions.aspx">Directions</a></td>
                              <td><img src="images/menugap.jpg" width="3" height="50" /></td>
                              <td class="menu"><a href="Support.aspx">Support</a></td>
                              <td><img src="images/menugap.jpg" width="3" height="50" /></td>
                              <td class="menu"><a href="Contactus.aspx">Contact&nbsp;Us</a></td>
                            </tr>
                        </table>
                      </td>
                </tr>

                <tr>
                      <td height="2px"></td>
                </tr>

                <tr>
                      <td style=" border-bottom:1px solid #e9ecf1; border-top:1px solid #e9ecf1; background-image:url(flash/loading.gif); background-repeat:no-repeat">
                          <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="1000" height="200">
                            <param name="movie" value="flash/bannerforwizardslearning_1.swf" />
                            <param name="quality" value="high" />
				            <param name="WMode" value="Transparent" />
                            <embed src="flash/bannerforwizardslearning_1.swf" quality="high" 
                                 wmode="transparent" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1180px"
                                 height="240"></embed>
                         </object>
                      </td>
                </tr>

                 <tr>
              <%--        <td>--%>
    		           <%-- <table width="1000px" cellpadding="0" cellspacing="0">
                          <tr>--%>
  	                      <%--  <td width="5px"></td>--%>
                            <td style=" border:1px solid #e9ecf1" align="left" width="1180px" colspan="2" height="28" >

		                        <table cellpadding="0" cellspacing="0" width="1180px">
                                  <tr>
                                    <td style="padding:2px; ">
                                        <img src="images/spring.gif" width="160px" height="25" />

                                    </td>
                                    <td class="menu" width="400px">
                                        <marquee scrollamount="2" onmouseover="stop();" onmouseout="start();">
                                            ENGLISH - MATH - SCIENCE - SOCIAL - HISTORY <%-- - HINDI - SPANISH - FRENCH - VIRGINIA SOL - SAT - I(Short Term) - SAT - I(Long Term) - SAT - II(Short Term)--%></marquee></td>
                                      <td align="right" style="border:1px solid #e9ecf1">
                                <img src="images/contactgif.gif" width="550px" height="25" /></td>
                                  </tr>
                                </table>
	                        </td>
                           <%-- <td width="4px"></td>--%>
                            
	                     <%--   <td width="5px"></td>--%>
                          </tr>
                        </table>
                       </td>
       <%--          </tr>
             </table>  --%>         
        <%--</td>--%>
    </tr>
</table>
 
</center>
</body>
</html>