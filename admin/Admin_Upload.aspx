<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Upload.aspx.cs" Inherits="Admin_Upload" %>
<%@ Register Src="Usercontrols/TopMenu.ascx" TagName="TopMenu" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Indus Learning - Admin Control Panel</title>
    
    
        <script language="javascript" type="text/javascript">
	function alertsubmit()
{
alert("Menu Item has been uploaded Successfully");
}
    </script>
    
    
  <link rel="stylesheet" href="Styles/stylesheet.css" />   
    
</head>
<body id="body1" runat="server" topmargin="0" leftmargin="0" bgcolor="#ffffff">
    <form id="form1" runat="server">
   <table width="100%" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
    
   <tr>
    <td align="center" valign="top" width='100%'>
         <uc1:TopMenu ID="Topmenu1" runat="server" />
    </td>
    </tr>
  
  
    <tr>
     <td align="center" valign="top" width="100%" class="lable">
    
    <table width="70%" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr>
    
    <td colspan='2' align="center" valign="bottom" style="height: 73px">
          
      <font size='4pt' color="#660000"><b>Upload Curriculum</b></font></td>
          </tr>
          <tr>
          
                <td colspan='2' style="width: 201px; height: 20px" class="lable" align="center" valign="middle">
                <br />
                  <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Label ID="lblerror" runat="server" Height="17px" Width="246px" Font-Bold="True" Font-Size="Small" ForeColor="#C00000"></asp:Label>
          
          <br />
          </td>
          </tr>
          <tr>
           <td style="width: 201px; height: 20px" class="lable" align="left" valign="bottom">
          Course Name *</td>
      <td style="width: 451px; height: 43px;" valign="bottom">
       
       <asp:DropDownList ID="course" runat="server" AppendDataBoundItems="True" CssClass="lable" Width="268px">
                    <asp:ListItem Selected="True">Choose a Course</asp:ListItem>
                    <asp:ListItem Value="Maths">Maths</asp:ListItem>
              <asp:ListItem Value="Algebra">Algebra</asp:ListItem>
              <asp:ListItem Value="Calculus">Calculus</asp:ListItem>
              <asp:ListItem Value="Geometry">Geometry</asp:ListItem>
              <asp:ListItem Value="English Reading">English Reading</asp:ListItem>
              <asp:ListItem Value="English Writing">English Writing</asp:ListItem>
              <asp:ListItem Value="English Grammer">English Grammer</asp:ListItem>
              <asp:ListItem Value="Vocabulary">Vocabulary</asp:ListItem>
              <asp:ListItem Value="SAT Prep">SAT Prep</asp:ListItem>
               <asp:ListItem Value="New">New</asp:ListItem>
                    </asp:DropDownList>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="course"
               ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px" InitialValue="Choose a Course"></asp:RequiredFieldValidator></td>
                        
    </tr>
            
    <tr>
      <td style="width: 201px; height: 20px" valign="bottom" class="lable" align="left">
       Upload the Curriculum *</td>
      <td style="width: 451px; height: 20px;">
          <asp:FileUpload ID="curr" runat="server" CssClass="lable" Width="267px" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="curr"
              ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
      <td colspan="2" class="lable" style="height: 26px">
          <div>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
              <asp:Button ID="btnsubmit" runat="server" CssClass="labled" Height="22px"
                  Text="Submit" Width="49px" OnClick="btnsubmit_Click" />&nbsp; &nbsp;<asp:Button ID="reset" runat="server" CssClass="labled" Height="22px" Text="Cancel" /></div></td>
    </tr>
  </table>
    
    </td>
    
    
    </tr>
    
    
    
  
    </table>
    
    
    </form>
</body>
</html>
