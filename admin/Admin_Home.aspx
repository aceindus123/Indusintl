<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Home.aspx.cs" Inherits="Admin_Home" %>
<%@ Register Src="Usercontrols/TopMenu.ascx" TagName="TopMenu" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>: : Indus Intl : Admin : :</title>
    <script language="javascript" type="text/javascript"> </script>
  <link rel="stylesheet" href="Styles/stylesheet.css" />   
</head>
<body>
    <form id="form1" runat="server">
    <table width="1180px" cellpadding="0" cellspacing="0" bgcolor="#ffffff" align="center">
    
   <tr>
    <td align="center" valign="top" width='100%'>
         <uc1:TopMenu ID="Topmenu1" runat="server" /><br />
    </td>
    </tr>
    </table>
     <table width="1180px" cellpadding="0" cellspacing="0" bgcolor="#ffffff" border='0' align="center">
  <tr> <td colspan='2' align='center' bgcolor='#ffffff' width='100%' style="height: 25px"> <font size='4pt' color="#660000"><b> 
     
      About Indus Intl Admin Control</b></font> 
      <br />
  </td></tr>
  
   <tr><td  colspan='2' align='left' valign='middle' bgcolor='#ffffff' width='100%' style="height: 42px"><font color='#cc0099' size='2pt'><b>  
       <br />
       Admin Control Panel helps administrator to control all the activities that relates to the Indus Intl Website.<br />
   </b></font></td>
   <tr><td colspan='2' align='left' valign='middle' bgcolor='#ffffff' width='100%' style="height: 36px" ><font color='#cc0099' size='2pt'><b> 
       <br />
       Following are the Functionalities implemented in the Admin control Panel : 
       <br />
   </b></font></td>
  
   <tr><td align='left' valign='top' bgcolor='#ffffff' class="lblog" style="width: 783px; height: 42px;">
       <br />
       Enrollment Form :
      
   </td>
  <td align='left' valign='top' bgcolor='#ffffff' width='75%' class="lblog" style="height: 42px">
      <br />
      Enrolling a Student for a particular course only if he got joined for that particular course.</td></tr>

     <tr><td align='left' valign='top' bgcolor='#ffffff' class="lblog" style="width: 783px; height: 71px;">
         <br />
         Upload Curriculum :
     </td>
  <td align='left' valign='top' bgcolor='#ffffff' width='75%' class="lblog" style="height: 71px">  
      <br />
      Through this control we can upload a curriculum for a new Course as well as if there is any change in the curriculum for an existing course you should first select the course and upload the corresponding curriculum.
           It will be automaticallly updated in the Website.</td></tr>

     <tr><td align='left' valign='top' bgcolor='#ffffff' class="lblog" style="height: 34px">
       
         Course Schedule :
        
     </td>
  <td align='left' valign='top' bgcolor='#ffffff' width='75%' class="lblog" style="height: 34px"> 
  
      Here we can specify the details of a newly starting course such as its starting date,class timings etc.</td></tr>

    
     <tr><td align='left' valign='top' bgcolor='#ffffff' class="lblog" style="width: 783px">
         <br />
         Feedback Administration :</td>
  <td align='left' valign='top' bgcolor='#ffffff' width='75%' class="lblog">
      <br />
      Here, the page will display all the feedbacks recieved in the order of the date it got submitted. The administrator can choose the feedbacks and accept it or if it is not good he can reject it. The feedback should be displayed in the website those which are accepted by the administrator.<br />
  </td></tr>

    
        <tr>
            <td align="left" class="lable" valign="top" style="width: 783px">
            </td>
        </tr>
    
    
    
  
    </table>
    
    
    </form>
</body>
</html>
