<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_EnrollCreate.aspx.cs" Inherits="Admin_EnrollCreate" %>

<%@ Register Src="Usercontrols/TopMenu.ascx" TagName="TopMenu" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>: : Indus Intl : Admin : :</title>
    
      <script language="javascript" type="text/javascript" src="js/calendar.js"></script> 
        <script language="javascript" type="text/javascript">
	

/*---------------------------Phone Number Validation---------------*/

var digits = "0123456789";

var phoneNumberDelimiters = "()- ";

var validWorldPhoneChars = phoneNumberDelimiters + "+";

var minDigitsInIPhoneNumber = 10;

function isInteger(s)
{   var i;
    for (i = 0; i < s.length; i++)
    {   
       
        var c = s.charAt(i);
        if (((c < "0") || (c > "9"))) return false;
    }
  
    return true;
}

function onlyNos(e, t) {
    try {
        if (window.event) {
            var charCode = window.event.keyCode;
        }
        else if (e) {
            var charCode = e.which;
        }
        else { return true; }
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            return false;
        }
        return true;
    }
    catch (err) {
        alert(err.Description);
    }
}

function stripCharsInBag(s, bag)
{   var i;
    var returnString = "";
 
    for (i = 0; i < s.length; i++)
    {   
       
        var c = s.charAt(i);
        if (bag.indexOf(c) == -1) returnString += c;
    }
    return returnString;
}

function checkInternationalPhone(strPhone){
s=stripCharsInBag(strPhone,validWorldPhoneChars);
return (isInteger(s) && s.length >= minDigitsInIPhoneNumber);
}

function validatePhone(field)
{
	var Phone=field.value;
	
	if(Phone!="")
	{
	if (checkInternationalPhone(Phone)==false)
	{
		alert("Please Enter a Valid Phone Number")
		field.value=""
		field.focus()
		return false
	}
	}
	return true
 }

/*-------------End Of Phone Number Validation------------------------*/


   function chknum(field)
{
if (isNaN(field.value)) {
            alert("Only Numeric Values are allowed")
           field.select();
        return false }
        }
             
function echeck() {
        
        var str=document.getElementById("email").value;
        if(str!="")
        {
		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID")
		   document.getElementById("email").select();
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID")
		      document.getElementById("email").select();
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID")
		    document.getElementById("email").select();
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID")
		   document.getElementById("email").select();
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID")
	   document.getElementById("email").select();
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID")
		   document.getElementById("email").select();
		    return false
		 }

 		 return true	
 		 }				
	}




    </script>
    <style type="text/css">
        .dataenroll {
        font-family: Geneva, Arial, Helvetica, sans-serif;
	font-size: 14px;
    color:black;
        }

    </style>
    
    
  <link rel="stylesheet" href="Styles/stylesheet.css" />   
    
</head>


<body id="regForm" runat="server" topmargin="0" leftmargin="0" bgcolor="#ffffff">
    <form id="form1" runat="server">
    <table width="1180px" cellpadding="0" cellspacing="0" bgcolor="#ffffff" align="center">
    
   <tr>
    <td align="center" valign="top" width='100%'>
         <uc1:TopMenu ID="Topmenu1" runat="server" />
    </td>
    </tr>
    
    <tr>
     <td align="center" valign="top" width="100%" class="lable9">
    
    <table width="70%" height="90%" border="0" align="center" cellpadding="0" cellspacing="5" class="lable9">
    <tr>
    <td colspan="2" align="left" valign="middle" height="25" class="dataenroll">
        <asp:Label ID="lblerr" runat="server" Text=""></asp:Label>
    </td>
    </tr>
    <tr>
    <td colspan="2" align="left" valign="middle" height="25" class="lable2">
    <font size='5pt' color="#660000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registration and Enrollment</font></td>
    </tr>
                          <tr>
                              <td class="dataenroll" style="width: 212px">
          <asp:Label ID="lblerror" runat="server" Height="17px" Width="111px"></asp:Label></td>
                              <td >                              </td>
                          </tr>
    
    <tr>
      <td  class="dataenroll" style="width: 212px" align="right">
          Student First Name&nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;    </td>
      <td class="dataen">
          <asp:TextBox ID="fname" runat="server" Cssclass="dataen" Width="164px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" 
              ErrorMessage="*" Font-Bold="True" Font-Size="small"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator runat="server" Id="regexpSSN" ControlToValidate="fname"   ValidationExpression="[aA-zZ]*"
      ErrorMessage = "Characters Only"   Display="Dynamic" />
      </td>
    </tr>
    <tr>
      <td  class="dataenroll" align="right" style="width: 212px">Last Name &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
      <td class="dataen" >
          <asp:TextBox ID="lname" runat="server" Cssclass="dataen" Width="164px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="lname" ErrorMessage="*" Font-Bold="True" Font-Size="small" Width="7px"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator runat="server" Id="RegularExpressionValidator1" ControlToValidate="lname"   ValidationExpression="[aA-zZ]*"
      ErrorMessage = "Characters Only"   Display="Dynamic" />
      </td>
    </tr>
    <tr>
                               <td  class="dataenroll" align="right" style="width: 212px">
                                   Parent / Guardian &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
      <td class="dataen" >
         <asp:DropDownList ID="txtparent" runat="server" AppendDataBoundItems="True" Cssclass="dataen" Width="166px">
                    <asp:ListItem Selected="True">--Select--</asp:ListItem>
                    <asp:ListItem Value="Father">Father</asp:ListItem>
                    <asp:ListItem Value="Mother">Mother</asp:ListItem>
                    <asp:ListItem Value="Guardian">Guardian</asp:ListItem>
         </asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtparent"
               ErrorMessage="*" Font-Bold="True" Font-Size="small" Width="7px" InitialValue="--Select--"></asp:RequiredFieldValidator>
             
                    </td>
                          </tr>
                          
    <tr>
      <td style="width: 212px" align="right" class="dataenroll" >
          First Name&nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;      </td>
      <td class="dataen" >
      
          <asp:TextBox ID="pfname" runat="server" Cssclass="dataen" Width="164px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pfname"
              ErrorMessage="*" Font-Bold="True" Font-Size="small"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator runat="server" Id="RegularExpressionValidator2" ControlToValidate="pfname"   ValidationExpression="[aA-zZ]*"
      ErrorMessage = "Characters Only"   Display="Dynamic" />
      </td>
    </tr>
    <tr>
      <td  class="dataenroll" style="width: 212px" align="right" >Last Name &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
      <td class="dataen" >
          <asp:TextBox ID="plname" runat="server" Cssclass="dataen" Width="164px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="lname" ErrorMessage="*" Font-Bold="True" Font-Size="small" Width="7px"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator runat="server" Id="RegularExpressionValidator3" ControlToValidate="plname"   ValidationExpression="[aA-zZ]*"
      ErrorMessage = "Characters Only"   Display="Dynamic" />
      </td>
    </tr>           
                     
                          
    <tr>
      <td  class="dataenroll" style="width: 212px" align="right" >Address &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
      <td class="dataen" >
          <asp:TextBox ID="address" runat="server" Cssclass="dataen" Width="164px"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" ControlToValidate="address" ErrorMessage="*" Font-Bold="True" Font-Size="small" Width="7px"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
      <td  class="dataenroll" style="width: 212px"  align="right">City &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;      </td>
      <td class="dataen" >
          <asp:TextBox ID="city" runat="server" Cssclass="dataen" Width="164px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="city"
              ErrorMessage="*" Font-Bold="True" Font-Size="small"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
      <td class="dataenroll" style="width: 212px" align="right" >State &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;      </td>
       <td class="dataen" >
          <asp:TextBox ID="state" runat="server" Cssclass="dataen" Width="164px"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="state"
               ErrorMessage="*" Font-Bold="True" Font-Size="small"></asp:RequiredFieldValidator></td>
     
    </tr>
    <tr>
      <td  class="dataenroll" style="width: 212px"  align="right">Country &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;       </td>
      <td class="dataen" >
          <asp:TextBox ID="country" runat="server" Cssclass="dataen" Width="164px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="country" ErrorMessage="*" Font-Bold="True"
               Font-Size="small" Width="7px"></asp:RequiredFieldValidator></td>

    </tr>
    <tr>
      <td  class="dataenroll"  align="right" >Zip &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
      <td class="dataen" >
          <asp:TextBox ID="zip" runat="server" MaxLength="6" Cssclass="dataen" Width="164px" onblur='javascript:chknum(this);' onkeypress="return onlyNos(event,this);"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" ControlToValidate="zip" ErrorMessage="*" Font-Bold="True" Font-Size="small" Width="7px"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
      <td class="dataenroll" style="width: 212px" align="right" >
          Home Phone # &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
      <td class="dataen" >
          <asp:TextBox ID="home" runat="server" MaxLength="11" Cssclass="dataen" Width="164px" onblur='javascript:validatePhone(this);' onkeypress="return onlyNos(event,this);"></asp:TextBox></td>
    </tr>
    <tr>
      <td class="dataenroll" style="width: 212px" align="right" >Mobile # &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
      <td class="dataen" >
          <asp:TextBox ID="mobile" runat="server" Cssclass="dataen" MaxLength="11" Width="164px" onblur='javascript:validatePhone(this);' onkeypress="return onlyNos(event,this);"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="mobile"
              ErrorMessage="*" Font-Bold="True" Font-Size="small"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
      <td  class="dataenroll" style="width: 212px" align="right" >E-Mail &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;      </td>
      <td class="dataen" >
          <asp:TextBox ID="email" runat="server" Cssclass="dataen" Width="164px" onblur='javascript:echeck();'></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="email"
              ErrorMessage="*" Font-Bold="True" Font-Size="small"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
      <td class="dataenroll" style="width: 212px" align="right" >
          Are you? &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
      <td class="dataen" >
           <asp:DropDownList ID="txtareu" runat="server" AppendDataBoundItems="True" Cssclass="dataen" Width="166px">
                    <asp:ListItem Selected="True">--Select--</asp:ListItem>
                    <asp:ListItem Value="New">New To Indus Intl</asp:ListItem>
                    <asp:ListItem Value="Exist">Previously Enrolled</asp:ListItem>
                    
         </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtareu"
               ErrorMessage="*" Font-Bold="True" Font-Size="small" Width="7px" InitialValue="--Select--"></asp:RequiredFieldValidator>
                   </td>
    </tr>
    <tr>
      <td class="dataenroll" style="width: 212px"  align="right">
          Child Age &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
      <td class="dataen" >
            <asp:DropDownList ID="txtcage" runat="server" AppendDataBoundItems="True" Cssclass="dataen" Width="166px">
                    <asp:ListItem Selected="true">--Select--</asp:ListItem>
                    <asp:ListItem Value="5">5 Years</asp:ListItem>
                    <asp:ListItem Value="6">6 Years</asp:ListItem>
                    <asp:ListItem Value="7">7 Years</asp:ListItem>
                    <asp:ListItem Value="8">8 Years</asp:ListItem>
                    <asp:ListItem Value="9">9 Years</asp:ListItem>
                    <asp:ListItem Value="10">10 Years</asp:ListItem>
                    <asp:ListItem Value="11">11 Years</asp:ListItem>
                    <asp:ListItem Value="12">12 Years</asp:ListItem>
                    <asp:ListItem Value="13">13 Years</asp:ListItem>
                    <asp:ListItem Value="14">14 Years</asp:ListItem>
                    <asp:ListItem Value="15">15 Years</asp:ListItem>
                    <asp:ListItem Value="16">16 Years</asp:ListItem>
                    <asp:ListItem Value="17">17 Years</asp:ListItem>
                    <asp:ListItem Value="18">18 Years</asp:ListItem>
                    <asp:ListItem Value="Other">Other</asp:ListItem>
         </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcage"
               ErrorMessage="*" Font-Bold="True" Font-Size="small" Width="7px" InitialValue="--Select--"></asp:RequiredFieldValidator>
                   
          
          
          </td>
    </tr>
    <tr>
                            <td class="dataenroll" style="width: 212px" align="right">
                                Grade &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
      <td class="dataen" align="left" >
            <asp:DropDownList ID="txtgrade" runat="server" AppendDataBoundItems="True" Cssclass="dataen" Width="166px">
                    <asp:ListItem Selected="true">--Select--</asp:ListItem>
                    <asp:ListItem Value="4">Grade - 4</asp:ListItem>
                    <asp:ListItem Value="5">Grade - 5</asp:ListItem>
                    <asp:ListItem Value="6">Grade - 6</asp:ListItem>
                    <asp:ListItem Value="7">Grade - 7</asp:ListItem>
                    <asp:ListItem Value="8">Grade - 8</asp:ListItem>
                    <asp:ListItem Value="9">Grade - 9</asp:ListItem>
                    <asp:ListItem Value="10">Grade - 10</asp:ListItem>
                    <asp:ListItem Value="11">Grade - 11</asp:ListItem>
                    <asp:ListItem Value="12">Grade - 12</asp:ListItem>
                    <asp:ListItem Value="Other">Other</asp:ListItem>
         </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtgrade"
               ErrorMessage="*" Font-Bold="True" Font-Size="small" Width="7px" InitialValue="--Select--"></asp:RequiredFieldValidator>
          </td>
                          </tr>
    <tr>
      <td class="dataenroll" style="width: 212px" align="right">Course Enrolling for&nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
       <td class="dataen" >
       <asp:DropDownList ID="course" runat="server" AppendDataBoundItems="True"  AutoPostBack="true" Cssclass="dataen" Width="166px" OnSelectedIndexChanged="course_SelectedIndexChanged" >
              <asp:ListItem Selected="true">Choose a Course</asp:ListItem>
              <asp:ListItem Value="Maths">Maths</asp:ListItem>
              <asp:ListItem Value="Algebra">Algebra</asp:ListItem>
              <asp:ListItem Value="Calculus">Calculus</asp:ListItem>
              <asp:ListItem Value="Geometry">Geometry</asp:ListItem>
              <asp:ListItem Value="English Reading">English Reading</asp:ListItem>
              <asp:ListItem Value="English Writing">English Writing</asp:ListItem>
              <asp:ListItem Value="English Grammer">English Grammer</asp:ListItem>
              <asp:ListItem Value="Vocabulary">Vocabulary</asp:ListItem>
              <asp:ListItem Value="SAT Prep">SAT Prep</asp:ListItem>
             
              <asp:ListItem Value="New">Other</asp:ListItem>
           </asp:DropDownList>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="course"
               ErrorMessage="*" Font-Bold="True" Font-Size="small" Width="7px" InitialValue="Choose a Course"></asp:RequiredFieldValidator>
           <asp:TextBox ID="newcourse" runat="server" Visible="false" CssClass="dataen" onblur="javascript:chkcrs(this);"
               Width="172px"></asp:TextBox>
    </tr>
    <tr>
      <td class="dataenroll" style="width: 212px" align="right" >
          Course Starting From &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
        <td style="width: 451px; height: 20px;" valign="bottom">
          <input type="text" id="c_startfrom" readonly value="" runat="server" style="width: 172px; height: 20px" class="lable9" />
      
         <a href="javascript:show_calendar('regForm.c_startfrom');" onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;">
          <img src="calender.gif" alt='Choose the Date' border="0" style="width: 17px; height: 13px" /></a> 
          
          &nbsp;
          <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="c_startfrom"
              ErrorMessage="*" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
      <td  class="dataenroll" style="width: 212px" align="right" >
          How do you hear about us &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
      <td class="dataen" >
         <asp:DropDownList ID="txthowu" runat="server" AppendDataBoundItems="True" Cssclass="dataen" Width="166px">
                    <asp:ListItem Selected="true">--Select--</asp:ListItem>
                    <asp:ListItem Value="newspaper">News Paper</asp:ListItem>
                    <asp:ListItem Value="onlinesearch">Online Search</asp:ListItem>
                    <asp:ListItem Value="friends">Friends</asp:ListItem>
         </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txthowu"
               ErrorMessage="*" Font-Bold="True" Font-Size="small" Width="7px" InitialValue="--Select--"></asp:RequiredFieldValidator>
                   
               
               </td>
    </tr>
    <tr>
      <td class="dataenroll" style="width: 212px" align="right" > Referred Name  &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
      <td class="dataen" >
          <asp:TextBox ID="referral" runat="server" Cssclass="dataen" Width="164px"></asp:TextBox>
           <asp:RegularExpressionValidator runat="server" Id="RegularExpressionValidator4" ControlToValidate="referral"   ValidationExpression="[aA-zZ]*"
      ErrorMessage = "Characters Only"   Display="Dynamic" />
        </td>
    </tr>
   
    <tr>
      <td   class="dataenroll" style="width: 212px" align="right" >Additional Information if any  &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;  </td>
      <td class="dataen" >
          <asp:TextBox ID="add_infm" runat="server" Cssclass="dataen" Height="69px" TextMode="MultiLine"
              Width="200px"></asp:TextBox></td>
    </tr>
    <tr>
      <td colspan="2">
          <div align="center">
              <asp:Button ID="ImageButton1" runat="server"  CssClass="dataen" Text="Submit" OnClick="ImageButton1_Click" />
              <%--<asp:ImageButton ID="ImageButton1" runat="server"
                  Height="22px" ImageUrl="images/submit.gif" Width="66px" OnClick="ImageButton1_Click" />--%>
              &nbsp;&nbsp;<%--<img src="images/cancel_btn.gif" alt='' border='0' onclick='javascript:resetall();' />--%>
              <!---<asp:ImageButton ID="ImageButton2" runat="server" Height="22px" ImageUrl="~/cancel_btn.gif"
                 Width="85px" />---->
             </div></td>
    </tr>
    <tr>
      <td colspan="2">&nbsp;</td>
    </tr>
  </table>
    
    </td>
    </tr>
    
    
    
  
    </table>
    
    
    </form>
</body>
</html>