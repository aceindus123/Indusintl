<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Duration_Edit.aspx.cs" Inherits="Admin_Duration_Edit" %>

<%@ Register Src="Usercontrols/TopMenu.ascx" TagName="TopMenu" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>: : Indus Intl : Admin : : </title>
    
    <script language="javascript" type="text/javascript" src="js/calendar.js"></script> 
        <script language="javascript" type="text/javascript">
	function alertsubmit()
{
alert("Course Duration has been saved Successfully");
}

function chkcrs(field)
{
	var OthCrs=field.value;
	
	if(OthCrs == "" && document.getElementById("course").value == "New")
	{
	    alert("Please Enter a New Category Name")
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
    
</head>
<body id="body1" runat="server" topmargin="0" leftmargin="0" bgcolor="#ffffff">
    <form id="regForm" runat="server">
        <input type="hidden" id="hidState" readonly value="" runat="server" style="width: 172px; height: 20px" class="lable9" />
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
      <font size='4pt' color="#660000"><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Post New Course Duration</b></font></td>
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
       
      <td style="width: 201px; height: 20px" class="lable16" align="right" valign="middle">
          New Duration&nbsp; * &nbsp;&nbsp;:&nbsp;&nbsp;</td>
       <td style="width: 451px; height: 20px; margin-left: 120px;">
           <asp:TextBox ID="categ" runat="server" CssClass="lable" Width="172px" BorderWidth='1'></asp:TextBox>            
           
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="categ"
               ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px"  ></asp:RequiredFieldValidator></td>
   
    </tr>
         
    <tr>
       
      <td style="width: 201px; height: 20px" class="lable16" align="right" valign="middle">
           Duration Type&nbsp; * &nbsp;&nbsp;:&nbsp;&nbsp;</td>
       <td style="width: 451px; height: 20px; margin-left: 120px;">
           <asp:DropDownList ID="ddldtype" runat="server" CssClass="lable" Width="172px">
           <asp:ListItem Value="2">Week Days</asp:ListItem>
           <asp:ListItem Value="1">Week Ends</asp:ListItem>
           <asp:ListItem Value="3">All Days</asp:ListItem>
             <asp:ListItem Value="4">Vacation</asp:ListItem>
           
           </asp:DropDownList>
           
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="categ"
               ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px"  ></asp:RequiredFieldValidator></td>
                        
    
    </tr> 
        
  
    <tr>
      <td colspan="2" class="lable9" style="height: 26px">
          &nbsp;</td>
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
              <asp:Button ID="reset" runat="server" CssClass="labled" Height="22px" Text="Cancel" CausesValidation="false" OnClick="reset_Click"  /></div></td>
    </tr>
  </table>
    
    </td>
    </tr>
    
    
    
  
    </table>
    
    
    </form>
</body>
</html>