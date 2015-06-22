<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Admin_Schedulecreate.aspx.cs" Inherits="Admin_Schedulecreate" %>
<%@ Register Src="Usercontrols/TopMenu.ascx" TagName="TopMenu" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>: : Indus Intl : Admin : :</title>
    
    <script language="javascript" type="text/javascript" src="js/calendar.js"></script> 
        <script language="javascript" type="text/javascript">
	function alertsubmit()
{
alert("Course Schedule has been saved Successfully");
}

function chkcrs(field)
{
	var OthCrs=field.value;
	
	if(OthCrs == "" && document.getElementById("course").value == "New")
	{
	    alert("Please Enter a New Course Name")
		field.focus()
		return false
	}
	return true

}
function statechange()
{
   if(document.regForm.txtloc.selectedIndex=="0")
    {
        document.regForm.hidState.value="";
	   // alert(document.regForm.hidState.value)
    }
    else
    {
        
        document.regForm.hidState.value=document.regForm.txtloc.value;
       // alert(document.regForm.hidState.value)
    }
}

    </script>
    
<script language="JavaScript1.2" src="statesopt.js" type="text/javascript"></script>
    
  <link rel="stylesheet" href="Styles/stylesheet.css" />   
    
    <style type="text/css">
        .style24
        {
           
            font-size: 12px;
            font-family: Geneva, Arial, Helvetica, sans-serif;
            height: 20px;
            width: 69px;
        }
        .style25
        {
           
            font-size: 11px;
            font-family: Geneva, Arial, Helvetica, sans-serif;
            height: 33px;
            width: 201px;
        }
        .style26
        {
           
            font-size: 11px;
            font-family: Geneva, Arial, Helvetica, sans-serif;
            width: 10px;
        }
    </style>
    
</head>
<body id="body1" runat="server" topmargin="0" leftmargin="0" bgcolor="#ffffff">
    <form id="regForm" runat="server">
   <table width="1180px" cellpadding="0" cellspacing="0" bgcolor="#ffffff" align="center"> 
    
   <tr>
    <td align="center" valign="top" width='100%'>
         <uc1:TopMenu ID="Topmenu1" runat="server" />
    </td>
    </tr>
    
    <tr>
     <td align="center" valign="top" width="100%" class="lable9">
    
    <table width="70%" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr>
    <td colspan='2' align="left" valign="bottom" style="height: 30px">
          <br /><br />
      <font size='4pt' color="#660000"><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
          Course Schedule</b></font></td>
          </tr>
          <tr>
    
      <td colspan='2' style="width: 201px; height: 20px" class="lable9" align="center" valign="middle">
              
                 
                   
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          <asp:Label ID="lblerror" runat="server" Height="10px" Width="246px" Font-Bold="True" Font-Size="Small" ForeColor="#C00000"></asp:Label><br />
          </td>
          </tr>
            <tr>
       
      <td class="style24" align="right" valign="bottom">Select the Region * &nbsp; &nbsp;: &nbsp;&nbsp;</td>
       <td style="width: 451px; height: 20px;" valign="bottom">
           <asp:DropDownList ID="region" runat="server"  CssClass="lable"  AutoPostBack="true" Width="173px" OnSelectedIndexChanged="region_SelectedIndexChanged">
                    <asp:ListItem Selected="true">Select Region</asp:ListItem>
                    <asp:ListItem Value="India">India</asp:ListItem>
                    <asp:ListItem Value="US">US</asp:ListItem>
                   </asp:DropDownList>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="region"  
               ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px" InitialValue="Select Region"></asp:RequiredFieldValidator></td>
                        
    
    </tr>
    
    
    <tr>
       
      <td class="style24" align="right" valign="bottom">Grade Name * &nbsp; &nbsp;: &nbsp;&nbsp;</td>
       <td style="width: 451px; height: 20px;" valign="bottom">
       <asp:DropDownList ID="grade" runat="server" AppendDataBoundItems="True" CssClass="lable" Width="173px" OnSelectedIndexChanged="checkcourse" >
              <asp:ListItem Selected="true">Choose a Grade</asp:ListItem>

           </asp:DropDownList>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="grade"
               ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px" InitialValue="Choose a Grade"></asp:RequiredFieldValidator>&nbsp;
               </td>
    </tr>
    
    
    
    
          <tr>
       
      <td class="style24" align="right" valign="bottom">Course Name * &nbsp; &nbsp;: &nbsp;&nbsp;</td>
       <td style="width: 451px; height: 20px;" valign="bottom">
       <asp:DropDownList ID="course" runat="server" AppendDataBoundItems="True" CssClass="lable" Width="173px" OnSelectedIndexChanged="checkcourse" >
              <asp:ListItem Selected="true">Choose a Course</asp:ListItem>

           </asp:DropDownList>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="course"
               ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px" InitialValue="Choose a Course"></asp:RequiredFieldValidator>&nbsp;
           </td>
                        
    
    </tr>
    <tr>
      <td class="style25" align="right" valign="bottom">
          Course Shedule for *&nbsp; &nbsp;: &nbsp;&nbsp;
      </td>
       <td style="width: 451px; height: 33px;" valign="bottom">
          <asp:DropDownList ID="crtype" runat="server" AppendDataBoundItems="True" 
               CssClass="lable" Width="173px" AutoPostBack="true" 
               onselectedindexchanged="crtype_SelectedIndexChanged">
               <asp:ListItem value="0">Choose a Course Type</asp:ListItem>
               <asp:ListItem Value="1">Week Ends</asp:ListItem>
               <asp:ListItem Value="2">Week Days</asp:ListItem>
               <asp:ListItem Value="3">All Days</asp:ListItem>
               <asp:ListItem Value="4">Vacations</asp:ListItem>
               
           </asp:DropDownList>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="crtype"
               ErrorMessage="*" Font-Bold="True" Font-Size="Large" InitialValue="0"></asp:RequiredFieldValidator>
          </td>
      
          
    </tr>
    <tr>
      <td class="style24" align="right" valign="bottom" >
          Course Duration * &nbsp; &nbsp;: &nbsp;&nbsp;</td>
      <td style="width: 451px; height: 20px;" valign="bottom">
          <%--<asp:TextBox ID="cduration" runat="server" CssClass="lable" Width="172px"></asp:TextBox>--%>
          <asp:DropDownList ID="cduration" runat="server" CssClass="lable" Width="172px" 
              AutoPostBack="true" onselectedindexchanged="cduration_SelectedIndexChanged">
               <%-- <asp:ListItem>Sunday</asp:ListItem>
          <asp:ListItem>Monday</asp:ListItem>
          <asp:ListItem>Tuesday</asp:ListItem>
          <asp:ListItem>Wednesday</asp:ListItem>
          <asp:ListItem>Thursday</asp:ListItem>
          <asp:ListItem>Friday</asp:ListItem>
          <asp:ListItem>Saturday</asp:ListItem>--%>
          </asp:DropDownList>
          &nbsp;&nbsp;
          
          <asp:DropDownList ID="fromto" runat="server" CssClass="lable" Width="52px" Visible="false" AutoPostBack="true" onselectedindexchanged="and_SelectedIndexChanged">
          <asp:ListItem>And</asp:ListItem>
          <asp:ListItem>To</asp:ListItem>
          <asp:ListItem>Only</asp:ListItem>
          </asp:DropDownList>
           &nbsp;&nbsp;
           
          <asp:DropDownList ID="ddl2days" runat="server" CssClass="lable" Width="172px" Visible="false">
          <asp:ListItem>Sunday</asp:ListItem>
          <asp:ListItem>Monday</asp:ListItem>
          <asp:ListItem>Tuesday</asp:ListItem>
          <asp:ListItem>Wednesday</asp:ListItem>
          <asp:ListItem>Thursday</asp:ListItem>
          <asp:ListItem>Friday</asp:ListItem>
          <asp:ListItem>Saturday</asp:ListItem>
          </asp:DropDownList>
          
          
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cduration"
               ErrorMessage="*" Font-Bold="True" Font-Size="Large" InitialValue="0" ></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr id="trnew" runat="server" visible="false">
      <td class="style24" align="right" valign="bottom" >
          Add New&nbsp; &nbsp;: &nbsp;&nbsp;</td>
      <td style="width: 451px; height: 20px;" valign="bottom" align="left">
          
          <input type="text" id="newduration" value="" name="newduration" runat="server" 
              style="width: 172px; height: 20px" class="lable9" />
      
         </td>
    </tr>
             <tr>
           <td class="style24" align="right" valign="bottom">
               Course Starting Date * &nbsp; &nbsp;: &nbsp;&nbsp;</td>
      <td style="width: 451px; height: 20px;" valign="bottom">
          <input type="text" id="csdate" readonly value="" runat="server" style="width: 172px; height: 20px" class="lable9" />
      
         <a href="javascript:show_calendar('regForm.csdate');" onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;">
          <img src="calender.gif" alt='Choose the Date' border="0" style="width: 17px; height: 13px" /></a> 
          
          &nbsp;
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="csdate"
              ErrorMessage="*" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
      <td class="style24" align="right" valign="bottom">
          Course Ending Date &nbsp; &nbsp;: &nbsp;&nbsp;</td>
      <td style="width: 451px; height: 20px;" valign="bottom">
       <input type="text" id="cenddate" readonly value="" runat="server" style="width: 172px; height: 20px" class="lable9" />
   
          <a href="javascript:show_calendar('regForm.cenddate');" onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;">
          <img src="calender.gif" alt='Choose the Date' border="0" style="width: 17px; height: 13px" /></a>  
          </td>
    </tr>
    
    
  <%--   <tr>
      <td class="style24" align="right" valign="bottom">
          Exam Date &nbsp; &nbsp;: &nbsp;&nbsp;</td>
      <td style="width: 451px; height: 20px;" valign="bottom">
       <input type="text" id="exmdate" readonly value="" runat="server" style="width: 172px; height: 20px" class="lable9" />
   
          <a href="javascript:show_calendar('regForm.exmdate');" onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;">
          <img src="calender.gif" alt='Choose the Date' border="0" style="width: 17px; height: 13px" /></a>  
          </td>
    </tr>--%>
    
    <tr>
      <td class="style24" align="right" valign="bottom">
          Class Timing &nbsp; &nbsp;: &nbsp;&nbsp;</td>
      <td valign="bottom">
          <%--<asp:TextBox ID="ctiming" runat="server" CssClass="lable" Width="172px"></asp:TextBox>--%><asp:DropDownList ID="ctiming" runat="server" CssClass="lable" Width="120px">
          <asp:ListItem>1.00 AM  </asp:ListItem>
          <asp:ListItem>2.00 AM  </asp:ListItem>
          <asp:ListItem>3.00 AM  </asp:ListItem>
          <asp:ListItem>4.00 AM  </asp:ListItem>
          <asp:ListItem>5.00 AM  </asp:ListItem>
          <asp:ListItem>6.00 AM  </asp:ListItem>
          <asp:ListItem>7.00 AM  </asp:ListItem>
          <asp:ListItem>8.00 AM  </asp:ListItem>
          <asp:ListItem>9.00 AM  </asp:ListItem>
          <asp:ListItem>10.00 AM </asp:ListItem>
          <asp:ListItem>11.00 AM </asp:ListItem>
          <asp:ListItem>12.00 NOON </asp:ListItem>
          <asp:ListItem>1.00 PM  </asp:ListItem>
          <asp:ListItem>2.00 PM  </asp:ListItem>
          <asp:ListItem>3.00 PM  </asp:ListItem>
          <asp:ListItem>4.00 PM  </asp:ListItem>
          <asp:ListItem>5.00 PM  </asp:ListItem>
          <asp:ListItem>6.00 PM  </asp:ListItem>
          <asp:ListItem>7.00 PM  </asp:ListItem>
          <asp:ListItem>8.00 PM  </asp:ListItem>
          <asp:ListItem>9.00 PM  </asp:ListItem>
          <asp:ListItem>10.00 PM  </asp:ListItem>
          <asp:ListItem>11.00 PM  </asp:ListItem>
          <asp:ListItem>12.00 PM  </asp:ListItem>
        
        <asp:ListItem>1.30 AM </asp:ListItem>
          <asp:ListItem>2.30 AM  </asp:ListItem>
          <asp:ListItem>3.30 AM </asp:ListItem>
          <asp:ListItem>4.30 AM </asp:ListItem>
          <asp:ListItem>5.30 AM </asp:ListItem>
          <asp:ListItem>6.30 AM </asp:ListItem>
          <asp:ListItem>7.30 AM </asp:ListItem>
          <asp:ListItem>8.30 AM </asp:ListItem>
          <asp:ListItem>9.30 AM </asp:ListItem>
          <asp:ListItem>10.30 AM </asp:ListItem>
          <asp:ListItem>11.30 AM </asp:ListItem>
          <asp:ListItem>12.30 PM </asp:ListItem>
          <asp:ListItem>1.30 PM  </asp:ListItem>
          <asp:ListItem>2.30 PM  </asp:ListItem>
          <asp:ListItem>3.30 PM </asp:ListItem>
          <asp:ListItem>4.30 PM </asp:ListItem>
          <asp:ListItem>5.30 PM </asp:ListItem>
          <asp:ListItem>6.30 PM </asp:ListItem>
          <asp:ListItem>7.30 PM </asp:ListItem>
          <asp:ListItem>8.30 PM </asp:ListItem>
          <asp:ListItem>9.30 PM </asp:ListItem>
          <asp:ListItem>10.30 PM </asp:ListItem>
          <asp:ListItem>11.30 PM </asp:ListItem>
          <asp:ListItem>12.30 PM </asp:ListItem>
          
          </asp:DropDownList>
          
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ctiming"
               ErrorMessage="*" Font-Bold="True" Font-Size="Large" InitialValue="0" ></asp:RequiredFieldValidator>
        
        &nbsp;<span class="style26">To</span>
        <asp:DropDownList ID="ctiming2" runat="server" CssClass="lable" Width="120px">
          <asp:ListItem>1.00 AM  </asp:ListItem>
          <asp:ListItem>2.00 AM  </asp:ListItem>
          <asp:ListItem>3.00 AM  </asp:ListItem>
          <asp:ListItem>4.00 AM  </asp:ListItem>
          <asp:ListItem>5.00 AM  </asp:ListItem>
          <asp:ListItem>6.00 AM  </asp:ListItem>
          <asp:ListItem>7.00 AM  </asp:ListItem>
          <asp:ListItem>8.00 AM  </asp:ListItem>
          <asp:ListItem>9.00 AM  </asp:ListItem>
          <asp:ListItem>10.00 AM </asp:ListItem>
          <asp:ListItem>11.00 AM </asp:ListItem>
          <asp:ListItem>12.00 NOON </asp:ListItem>
          <asp:ListItem>13.00 PM  </asp:ListItem>
          <asp:ListItem>14.00 PM  </asp:ListItem>
          <asp:ListItem>15.00 PM  </asp:ListItem>
          <asp:ListItem>16.00 PM  </asp:ListItem>
          <asp:ListItem>17.00 PM  </asp:ListItem>
          <asp:ListItem>18.00 PM  </asp:ListItem>
          <asp:ListItem>19.00 PM  </asp:ListItem>
          <asp:ListItem>20.00 PM  </asp:ListItem>
          <asp:ListItem>21.00 PM  </asp:ListItem>
          <asp:ListItem>22.00 PM  </asp:ListItem>
          <asp:ListItem>23.00 PM  </asp:ListItem>
          <asp:ListItem>24.00 PM  </asp:ListItem>
        
        <asp:ListItem>1.30 AM </asp:ListItem>
          <asp:ListItem>2.30 AM  </asp:ListItem>
          <asp:ListItem>3.30 AM </asp:ListItem>
          <asp:ListItem>4.30 AM </asp:ListItem>
          <asp:ListItem>5.30 AM </asp:ListItem>
          <asp:ListItem>6.30 AM </asp:ListItem>
          <asp:ListItem>7.30 AM </asp:ListItem>
          <asp:ListItem>8.30 AM </asp:ListItem>
          <asp:ListItem>9.30 AM </asp:ListItem>
          <asp:ListItem>10.30 AM </asp:ListItem>
          <asp:ListItem>11.30 AM </asp:ListItem>
          <asp:ListItem>12.30 NOON </asp:ListItem>
          <asp:ListItem>13.30 PM  </asp:ListItem>
          <asp:ListItem>14.30 PM  </asp:ListItem>
          <asp:ListItem>15.30 PM </asp:ListItem>
          <asp:ListItem>16.30 PM </asp:ListItem>
          <asp:ListItem>17.30 PM </asp:ListItem>
          <asp:ListItem>18.30 PM </asp:ListItem>
          <asp:ListItem>19.30 PM </asp:ListItem>
          <asp:ListItem>20.30 PM </asp:ListItem>
          <asp:ListItem>21.30 PM </asp:ListItem>
          <asp:ListItem>22.30 PM </asp:ListItem>
          <asp:ListItem>23.30 PM </asp:ListItem>
          <asp:ListItem>24.30 PM </asp:ListItem>
        
        </asp:DropDownList>
        
          </td>
    </tr>
        <tr>
            <td class="style24" align="right" valign="bottom">
          Location * &nbsp; &nbsp;: &nbsp;&nbsp;</td>
      <td style="width: 451px; height: 20px;" valign="bottom">
      <%--<asp:DropDownList ID="txtloc" runat="server"  Width="173px" Enabled="True" CssClass="lable" onchange='javascript:statechange();'>--%>
       <asp:DropDownList ID="txtloc" runat="server"  Width="173px" Enabled="True" AutoPostBack="true" CssClass="lable" >
                    <asp:ListItem Selected="True" Value="">Select Location</asp:ListItem>
                 
      </asp:DropDownList>
          
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtloc"
              ErrorMessage="*" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
        <input type="hidden" id="hidState" readonly value="" runat="server" style="width: 172px; height: 20px" class="lable9" />
        </td>
        </tr>
    <tr>
      <td class="style26" align="right" valign="top" >Description &nbsp; &nbsp;: &nbsp;&nbsp;
      </td>
      <td style="width: 451px" valign="bottom"> 
          <asp:TextBox ID="desc" runat="server" Height="69px" TextMode="MultiLine" Width="218px" CssClass="lable">703-574-3268  learning@indusintl.net</asp:TextBox></td>
    </tr>
   
  
    <tr>
      <td colspan="2" class="lable9" style="height: 26px">
          <div align="left">
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
              &nbsp;<asp:Button ID="btnsubmit" runat="server" CssClass="labled" Height="22px"
                  Text="Submit" Width="49px" OnClick="btnsubmit_Click" />
              &nbsp;
              <asp:Button ID="reset" runat="server" CssClass="labled" Height="22px" Text="Cancel" OnClick="reset_Click" CausesValidation="false"/></div></td>
    </tr>
  </table>
    
    </td>
    </tr>
    
    
    
  
    </table>
    
    
    </form>
</body>
</html>