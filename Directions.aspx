<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Directions.aspx.cs" Inherits="Directions" %>

<%@ Register Src="~/Usercontrols/HeaderMenu.ascx" TagName="HeaderMenu" TagPrefix="uc1" %>
<%@ Register Src="~/Usercontrols/FooterMenu.ascx" TagName="FooterMenu" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>: : Indus Intl : :</title>
<link rel="stylesheet" href="includes/style.css" type="text/css" />
</head>

<body id="Body1" style="padding:0px; margin:0px;" runat="server">
<form id="form1" runat="server">
<table cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="1000px" style="border:1px solid #d7d9e5" align="center" colspan="2">
       <uc1:HeaderMenu ID="HeaderMenu1" runat="server" />
    </td>
  </tr>
   
    <tr>
            <td height="3px" colspan="2"></td>
          </tr>
        
          <tr>
            <td height="3px" align="center" colspan="2" >
          
            </td>
          </tr>
          <tr>
          <td width="200">&nbsp;</td>
            <td align="left">
            
              <table width="620" border="0" cellpadding="0" style="padding-left:8px;">
    <tr>
      <td height="32" colspan="2"><h1 align="center" class="welcome"><u>Training Location - Driving  Directions </u></h1></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center"><img src="images/indusloc1.gif" width="512" height="235" /></div></td>
    </tr>
    <tr>
      <td width="169" height="29"><div align="right"><span class="data8">Driving Directions:</span></div></td>
      <td width="433"><p align="left" class="data"><a href="http://www.mapquest.com/directions/main.adp?src=maps&amp;1sb=revise&amp;2l=5Q%2fKINRQxeX63LoYZDyn%2fw%3d%3d&amp;2g=aM6tWcIXcFPUCxRWGQVBiA%3d%3d&amp;2v=ADDRESS&amp;2a=1039%20Sterling%20Rd&amp;2c=Herndon&amp;2s=VA&amp;2z=20170%2d3870&amp;2y=US&amp;2pn=&amp;2pl=" class="text">Gets MapQuest TM  driving directions from your Office or Home?</a></p></td>
    </tr>
    <tr>
      <td colspan="2"><p><span class="data8"><u>From Baltimore / Delaware  / Philadelphia / New Jersey  / New York / Connecticut </u></span> </p></td>
    </tr>
    <tr>
      <td colspan="2"><ul type="square" class="head1">
        <li><strong>Take       I-95 South towards Washington. </strong></li>
        <li><strong>Stay       on I-95 south until the exit 27 for I-495 West. </strong></li>
        <li><strong>Continue       on the I-495 West will become I-495 south. </strong></li>
        <li><strong>Stay       on I-495 South until you reach the exit 45 towards 267 West.&nbsp; </strong></li>
        <li><strong>Continue       on 267 west until you reach Exit 10 towards Herndon-Chantilly. </strong></li>
        <li><strong>Take       the toll towards Herndon-Chantilly. </strong></li>
        <li><strong>Take       right onto Elden Street       at the traffic light after paying Toll. &nbsp;</strong></li>
        <li><strong>Continue       on Elden Street       until 5th traffic Light takes left onto Sterling Road and again left onto       office complex immediately. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></li>
        <li><strong>Office       Condo # 1039 Sterling Road,         Suite # 103, 1st Floor. Herndon-VA-20170.       USA.&nbsp; </strong></li>
        <li><strong>You       may park anywhere at the building of the parking lot. <br /><br /></strong></li>
      </ul></td>
    </tr>
<%--    <tr>
      <td colspan="2"><p>&nbsp;</p></td>
    </tr>--%>
    <tr>
      <td colspan="2"><span class="data8"><strong><u>From Rockville  / Shady Groove </u></strong><u> </u></span></td>
    </tr>
    <tr>
      <td colspan="2"><ul type="square" class="head1">
        <li><strong>Stay       on I-270 south until the exit for I-495 South &amp; Continue on the I-495       South. </strong></li>
        <li><strong>Stay       on I-495 South until you reach the exit 45 towards 267 West.&nbsp; </strong></li>
        <li><strong>Continue       on 267 west until you reach Exit 10 towards Herndon-Chantilly. </strong></li>
        <li><strong>Take       the toll towards Herndon-Chantilly. </strong></li>
        <li><strong>Take       right onto Elden Street       at the traffic light after paying Toll.&nbsp; </strong></li>
        <li><strong>Continue       on Elden Street       until 5th traffic Light takes left onto Sterling Road, and again left onto       office complex immediately. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></li>
        <li><strong>Office       Condo # 1039 Sterling Road,         Suite # 103, 1st Floor.       Herndon-VA-20170. USA.&nbsp; </strong></li>
        <li><strong>You       may park anywhere at the building of the parking lot. <br /><br /></strong></li>
      </ul></td>
    </tr>
<%--    <tr>
      <td colspan="2">&nbsp;</td>
    </tr>--%>
    <tr>
      <td colspan="2"><p><span class="data8"><strong><u>From Columbia / Ellicott City / Silver Spring</u></strong></span><u> </u></p></td>
    </tr>
    <tr>
      <td colspan="2"><ul type="square" class="head1">
        <li><strong>Take US-29 South to I-495 W,&nbsp; Exit onto I-495-W </strong></li>
        <li><strong>Stay on I-495 west will       become I-495 south.</strong> </li>
        <li><strong>Continue       on the I-495 West will become I-495 south. </strong></li>
        <li><strong>Stay       on I-495 South until you reach the exit 45 towards 267 West.&nbsp; </strong></li>
        <li><strong>Continue       on 267 west until you reach Exit 10 towards Herndon-Chantilly. </strong></li>
        <li><strong>Take       the toll towards Herndon-Chantilly. </strong></li>
        <li><strong>Take       right onto Elden Street       at the traffic light after paying Toll.&nbsp; </strong></li>
        <li><strong>Continue       on Elden Street       until 5th traffic Light takes left onto Sterling Road, and again left onto       office complex immediately. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></li>
        <li><strong>Office       Condo # 1039 Sterling Road,         Suite # 103, 1st Floor.       Herndon-VA-20170. USA.&nbsp; </strong></li>
        <li><strong>You       may park anywhere at the building of the parking lot. <br /><br /></strong></li>
      </ul></td>
    </tr>
<%--    <tr>
      <td colspan="2">&nbsp;</td>
    </tr>--%>
    <tr>
      <td colspan="2"><p class="data8"><strong><u>From Washington DC / Arlington</u></strong> </p></td>
    </tr>
    <tr>
      <td colspan="2"><ul type="square" class="head1">
        <li><strong>Starting       from Constitution Avenue       towards west&nbsp; &amp; continue to I-66       West </strong></li>
        <li><strong>Continue       on 66 west until you reach the exit for towards 267 west.&nbsp; </strong></li>
        <li><strong>Continue       on 267 west until you reach Exit 10 towards Herndon-Chantilly. </strong></li>
        <li><strong>Take       the toll towards Herndon-Chantilly. </strong></li>
        <li><strong>Take       right onto Elden Street       at the traffic light after paying Toll.&nbsp; </strong></li>
        <li><strong>Continue       on Elden Street       until 5th traffic Light takes left onto Sterling Road, and again left onto       office complex immediately. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></li>
        <li><strong>Office       Condo # 1039 Sterling Road,         Suite # 103, 1st Floor.       Herndon-VA-20170. USA.&nbsp; </strong></li>
        <li><strong>You       may park anywhere at the building of the parking lot. <br /><br /></strong></li>
      </ul></td>
    </tr>
<%--    <tr>
      <td colspan="2">&nbsp;</td>
    </tr>--%>
    <tr>
      <td colspan="2"><p class="data8"><strong><u>From Ashburn / Leesburg Pike</u></strong></p></td>
    </tr>
    <tr>
      <td colspan="2"><ul type="square" class="head1">
        <li><strong>Starting       from 28 South after few miles until you reach the exit for VA-606 East.</strong></li>
        <li><strong>Continue       on VA-606 E towards HERNDON which is </strong></li>
        <li><strong>West       OX Road will become as Sterling Road, </strong></li>
        <li><strong>Sterling Road at the traffic light the intersection of Sterling Road and       Elden Street. </strong></li>
        <li><strong>Right       side corner office complex is our office facility. &nbsp;</strong></li>
        <li><strong>(Office       is situated at behind the Fuddruckers office complex).&nbsp;&nbsp;&nbsp;&nbsp; </strong></li>
        <li><strong>Office       Condo # 1039 Sterling Road,         Suite # 103, 1st Floor.       Herndon-VA-20170. USA.&nbsp; </strong></li>
        <li><strong>You       may park anywhere at the building of the parking lot. <br /><br /></strong></li>
      </ul></td>
    </tr>
<%--    <tr>
      <td colspan="2">&nbsp;</td>
    </tr>--%>
    <tr>
      <td colspan="2"><p class="data8"><strong><u>From Alexandria / Wood  Bridge / Fredericksburg  / Richmond</u></strong></p></td>
    </tr>
    <tr>
      <td colspan="2"><ul type="square" class="head1">
        <li><strong>Take I-95/495 North towards Baltimore. </strong></li>
        <li><strong>Take       Ext 49 towards I-66 West&nbsp; &amp;       continue to I-66 West </strong></li>
        <li><strong>Continue       on I-66 West until you reach Exit 53 towards 28 North. </strong></li>
        <li><strong>(RT 28       north is Towards Dulles        International Airport). </strong></li>
        <li><strong>Continue       on 28 north until you get VA-606 east towards Herndon.</strong></li>
        <li><strong>Take       the Exit and continue on West         OX Road will become as Sterling Road, </strong></li>
        <li><strong>Sterling Road at the traffic light the intersection of Sterling Road       and Elden Street. </strong></li>
        <li><strong>Right       side corner office complex is our office facility.&nbsp; </strong></li>
        <li><strong>(Office       is situated at behind the Fuddruckers office complex).&nbsp;&nbsp;&nbsp;&nbsp; </strong></li>
        <li><strong>Office       Condo # 1039 Sterling Road,         Suite # 103, 1st Floor.       Herndon-VA-20170. USA.&nbsp; </strong></li>
        <li><strong>You       may park anywhere at the building of the parking lot. <br /><br /></strong></li>
      </ul></td>
    </tr>
<%--    <tr>
      <td colspan="2">&nbsp;</td>
    </tr>--%>
    <tr>
      <td colspan="2"><p class="data8"><strong><u>From Manassas</u></strong></p></td>
    </tr>
    <tr>
      <td colspan="2"><ul type="square" class="head1">
        <li><strong>Take       28 south and Continue towards Dulles        International Airport.</strong></li>
        <li><strong>Continue       on 28 north until you get VA-606 east towards Herndon.</strong></li>
        <li><strong>Take       the Exit and continue on West         OX Road will become as Sterling Road, </strong></li>
        <li><strong>Sterling Road at the traffic light the intersection of Sterling Road       and Elden Street. </strong></li>
        <li><strong>Right       side corner office complex is our office facility.&nbsp; </strong></li>
        <li><strong>(Office       is situated at behind the Fuddruckers office complex).&nbsp;&nbsp;&nbsp;&nbsp; </strong></li>
        <li><strong>Office       Condo # 1039 Sterling Road,         Suite # 103, 1st Floor.       Herndon-VA-20170. USA.&nbsp; </strong></li>
        <li><strong>You       may park anywhere at the building of the parking lot.<br /><br /> </strong></li>
      </ul></td>
    </tr>
  </table>
            
            </td>
          </tr>
		  <tr><td height="03px" colspan="2"></td></tr>
		  
		  
		  <tr>
    <td colspan="2" align="center" class="footer" style="background-image:url(images/menubg.jpg); height:50px; background-repeat:repeat-x">
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

