.<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Enroll.aspx.cs" Inherits="Enroll" %>

<%@ Register Src="~/Usercontrols/HeaderMenu.ascx" TagName="HeaderMenu" TagPrefix="uc1" %><%@ Register Src="~/Usercontrols/FooterMenu.ascx" TagName="FooterMenu" TagPrefix="uc2" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" ><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>: : Indus Intl : :</title><link rel="stylesheet" href="style.css" type="text/css" /><style type="text/css">
        .style1
        {
            font-family: Arial;
            font-size: 11px;
            font-weight: normal;
            color: #2391bf;
            width: 212px;
            height: 30px;
        }
        .style2
        {
            height: 30px;
        }
    </style>
    
    <script language="javascript" type="text/javascript" src="includes/calendar.js"></script>
    <script language="javascript" type="text/javascript">

        function alertsubmit() {
            alert("Course Schedule has been saved Successfully");
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

  function chkcrs(field) {
      var OthCrs = field.value;

      if (OthCrs == "" && document.getElementById("course").value == "New") {
          alert("Please Enter a New Course Name")
          field.focus()
          return false
      }
      return true

  }
    </script>
</head>

<body id="Body1" style="padding:0px; margin:0px;" runat="server">
<form id="regForm" runat="server">
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
         <td width="250"></td>
            <td align="left">
            
     <table width="100%" height="90%" border="0" align="center" cellpadding="0" cellspacing="5">
    <tr>
    <td colspan="2" align="left" valign="middle" height="25" class="welcome"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registration and Enrollment</td>
    </tr>
                          <tr>
                              <td class="dataenroll" style="width: 212px">
          <asp:Label ID="lblerror" runat="server" Height="17px" Width="111px"></asp:Label></td>
                              <td >                              </td>
                          </tr>
    
    <tr>
      <td  class="dataenroll" style="width: 212px" align="right">
          Student First Name &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;     </td>
      <td class="dataen">
          <asp:TextBox ID="fname" runat="server" Cssclass="dataen" Width="164px"  ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname"
              ErrorMessage="*" Font-Bold="True" Font-Size="small"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator runat="server" Id="regexpSSN" ControlToValidate="fname"   ValidationExpression="[aA-zZ]*"
      ErrorMessage = "Characters Only"   Display="Dynamic" />
      </td>
    </tr>
    <tr>
      <td  class="dataenroll" align="right" style="width: 212px">Last Name &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
      <td class="dataen" >
          <asp:TextBox ID="lname" runat="server" Cssclass="dataen" Width="164px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="lname" ErrorMessage="*" Font-Bold="True" Font-Size="small" Width="7px"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator runat="server" Id="RegularExpressionValidator1" ControlToValidate="lname"   ValidationExpression="[aA-zZ]*"
      ErrorMessage = "Characters Only"   Display="Dynamic" />
      </td>
    </tr>
                          <tr>
                               <td  class="dataenroll" align="right" style="width: 212px">
                                   Parent / Guardian &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
      <td class="dataen" >
         <asp:DropDownList ID="txtparent" runat="server" AppendDataBoundItems="True" Cssclass="dataen" Width="169px">
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
      <td  class="dataenroll" style="width: 212px" align="right" >Last Name &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
      <td class="dataen" >
          <asp:TextBox ID="plname" runat="server" Cssclass="dataen" Width="164px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="lname" ErrorMessage="*" Font-Bold="True" Font-Size="small" Width="7px"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator runat="server" Id="RegularExpressionValidator3" ControlToValidate="plname"   ValidationExpression="[aA-zZ]*"
      ErrorMessage = "Characters Only"   Display="Dynamic" />
      </td>
    </tr>           
                     
                          
    <tr>
      <td  class="dataenroll" style="width: 212px" align="right" >Address &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
      <td class="dataen" >
          <asp:TextBox ID="address" runat="server" Cssclass="dataen" Width="164px"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator55"
               runat="server" ControlToValidate="address" ErrorMessage="*" Font-Bold="True" Font-Size="small" Width="7px"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
      <td  class="dataenroll" style="width: 212px"  align="right">City &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;     </td>
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
      <td  class="dataenroll" style="width: 212px"  align="right">Country &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;      </td>
      <td class="dataen" >
          <asp:TextBox ID="country" runat="server" Cssclass="dataen" Width="164px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="country" ErrorMessage="*" Font-Bold="True" Font-Size="small" Width="7px"></asp:RequiredFieldValidator></td>

    </tr>
    <tr>
      <td  class="dataenroll"  align="right" >Zip &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
      <td class="dataen" >
          <asp:TextBox ID="zip" runat="server" Cssclass="dataen" Width="164px" onblur='javascript:chknum(this);' onkeypress="return onlyNos(event,this);" MaxLength="6"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" ControlToValidate="zip" ErrorMessage="*" Font-Bold="True" Font-Size="small" Width="7px"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
      <td class="dataenroll" style="width: 212px" align="right" >
          Home Phone # &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
      <td class="dataen" >
          <asp:TextBox ID="home" runat="server" Cssclass="dataen" Width="164px"  MaxLength="11"
              onblur='javascript:validatePhone(this);' onkeypress="return onlyNos(event,this);"></asp:TextBox></td>
    </tr>
    <tr>
      <td class="dataenroll" style="width: 212px" align="right" >Mobile &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
      <td class="dataen" >
          <asp:TextBox ID="mobile" runat="server" Cssclass="dataen" Width="164px" MaxLength="11" onblur='javascript:validatePhone(this);' onkeypress="return onlyNos(event,this);"></asp:TextBox>
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
          Are you? &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
      <td class="dataen" >
           <asp:DropDownList ID="txtareu" runat="server" AppendDataBoundItems="True" Cssclass="dataen" Width="169px">
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
          Child Age &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
      <td class="dataen" >
            <asp:DropDownList ID="txtcage" runat="server" AppendDataBoundItems="True" Cssclass="dataen" Width="169px">
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
                                Grade &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
      <td class="dataen" align="left" >
            <asp:DropDownList ID="txtgrade" runat="server" AppendDataBoundItems="True" Cssclass="dataen" Width="169px">
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
      <td class="dataenroll" style="width: 212px" align="right">Course Enrolling for &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
       <td class="dataen" >
       <asp:DropDownList ID="course" runat="server" AppendDataBoundItems="True"  AutoPostBack="true" Cssclass="dataen" Width="169px" OnSelectedIndexChanged="course_SelectedIndexChanged" >
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
          Course Starting From &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
      <td class="dataen" >
          <asp:TextBox ID="c_startfrom" ReadOnly="true" runat="server" Cssclass="dataen" Width="164px"></asp:TextBox>
          
               
         <a href="javascript:show_calendar('regForm.c_startfrom');" onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;">
          <img src="images/calender.gif" alt='Choose Date From Calender' border="0" style="width: 17px; height: 13px" /></a> 
          
          &nbsp;
          <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="c_startfrom"
              ErrorMessage="*" Font-Bold="True" Font-Size="small"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
      <td  class="dataenroll" style="width: 212px" align="right" >
          How do you hear about us &nbsp;* &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
      <td class="dataen" >
         <asp:DropDownList ID="txthowu" runat="server" AppendDataBoundItems="True" Cssclass="dataen" Width="169px">
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
      <td class="dataenroll" style="width: 212px" align="right" > Referred Name &nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
      <td class="dataen" >
          <asp:TextBox ID="referral" runat="server" Cssclass="dataen" Width="164px" ></asp:TextBox>
           <asp:RegularExpressionValidator runat="server" Id="RegularExpressionValidator4" ControlToValidate="referral"   ValidationExpression="[aA-zZ]*"
      ErrorMessage = "Characters Only"   Display="Dynamic" />
        </td>
    </tr>
   
    <tr>
      <td   class="dataenroll" style="width: 212px" align="right" >Additional Information if any  &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>
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
		  <tr><td height="03px" colspan="2"></td></tr>
		  
		  
		  <tr>
    <td align="center" class="footer" style="background-image:url(images/menubg.jpg); height:50px; background-repeat:repeat-x" colspan="2">
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
