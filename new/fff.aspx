<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fff.aspx.cs" Inherits="fff" %>

<%@ Register Src="~/Usercontrols/HeaderMenu.ascx" TagName="HeaderMenu" TagPrefix="uc1" %>
<%@ Register Src="~/Usercontrols/FooterMenu.ascx" TagName="FooterMenu" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>:::Indus Learning:::</title>
<link rel="stylesheet" href="includes/style.css" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 30px;
        }
    </style>
</head>

<body id="Body1" style="padding:0px; margin:0px;" runat="server">
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
            <td height="3px" align="left" class="welcome">
            FAQ's
            </td>
          </tr>
          <tr>
            <td align="left">
            
               <table width="643" border="0" cellpadding="0" cellspacing="8" class="text">
                    <tr>
                      <td class="data8">Q1: What all courses are offered at Indus learning Inc.?</td>
                    </tr>
                    <tr>
                      <td class="style1">Ans: select the courses click on the tab courses<br />
                        Or<br />
                        On the Top Menu Bar, click on the tab &ldquo;Schedules&rdquo;; a page will be displayed with list of Courses offered at Indus Learning Inc.</td>
                    </tr>
                  
                    <tr>
                      <td class="data8">Q2: How to know the schedule for the classes?</td>
                    </tr>
                    <tr>
                      <td class="data5">Ans: On the Top Menu Bar, click on the tab &ldquo;Schedules&rdquo;; a page will be displayed with list of schedules for the upcoming batches of courses offered.</td>
                    </tr>
                    <tr>
                      <td class="data8">Q3: What is the duration of courses?</td>
                    </tr>
                    <tr>
                      <td class="data5">Ans: The duration of course is mentioned with the schedules. <br />
                        Or<br />
                        You can find duration of course at the top of the all curriculum pages. </td>
                    </tr>
                    <tr>
                      <td class="data8">Q4: How to register for the classes?</td>
                    </tr>
                    <tr>
                      <td class="data5">Ans: On the Top Menu Bar, click on the tab &ldquo;Enroll&rdquo;; and fill up the enrollment form and submit. Or else we welcome your calls @ 703-867-7699 to register.</td>
                    </tr>
                    <tr>
                      <td class="data8">Q5: How much is the fees for the courses?</td>
                    </tr>
                    <tr>
                      <td class="data5">Ans: To know fee details, please call us @ 703-867-7699</td>
                    </tr>
                    <tr>
                      <td class="data8">Q6: What is the acceptable payment mode, to pay the Learning fees?</td>
                    </tr>
                    <tr>
                      <td class="data5">Ans: You can pay the Learning fees in Cash or Checks made in favour of Indus Learning Inc.</td>
                    </tr>
                    <tr>
                      <td class="data8">Q7: Can we get a demo class?</td>
                    </tr>
                    <tr>
                      <td class="data5">Ans: On the scheduled date of the new batch to start for a particular course, you are welcome to attend the first class to see the quality of the class.</td>
                    </tr>
                    <tr>
                      <td class="data8">Q8: How to apply for jobs at Indus Learning Inc.?</td>
                    </tr>
                    <tr>
                      <td class="data5">Ans: On the Bottom Menu Bar, click on the tab &ldquo;Hiring&rdquo;; fill up the form, attach your resume and submit. </td>
                    </tr>
                    <tr>
                      <td class="data8">Q9: After the course is completed, will we be able to contact for further questions or assistance?</td>
                    </tr>
                    <tr>
                      <td class="data5">Ans: You can come to Indus with your doubts and queries on the weekends to speak with the instructor. Just make sure about the instructor&rsquo;s availability in advance.</td>
                    </tr>
                    <tr>
                      <td class="data8">Q10: Do we get any study material after enrolling for a course?</td>
                    </tr>
                    <tr>
                      <td class="data5">Ans: You would be getting study material for some eligible courses after enrollment and payment of fees.</td>
                    </tr>
                    <tr>
                      <td class="data8">Q11: Can we repeat the classes?</td>
                    </tr>
                    <tr>
                      <td class="data5">Ans: If you have missed the classes or want to repeat the classes, make sure you speak to the Learning administrator so that they can check for seat availability for you in advance. And thereafter sending email in same regard would be appreciated.</td>
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
</body>
</html>
