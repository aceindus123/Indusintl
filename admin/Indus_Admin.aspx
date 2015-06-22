<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Indus_Admin.aspx.cs" Inherits="Indus_Admin" %>
<%@ Register Src="Usercontrols/TopMenu.ascx" TagName="TopMenu" TagPrefix="uc1" %>



<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Indus Learning - Admin Control Panel</title>
    
    
        <script language="javascript" type="text/javascript">
	function alertsubmit()
{
alert("Please enter correct Username or Password!");
}
    </script>
    
    
    
    
</head>
<body id="body1" runat="server" topmargin="0" leftmargin="0" bgcolor="#ffffff">
    <form id="form1" runat="server">
    <table width="1003" height="708" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
    <tr height="12%" width="100%">
        <td valign="top">
     <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1002" height="175">
    <param name="movie" value="2rams flash.swf" />
    <param name="quality" value="high" />
    <embed src="2rams flash.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1002" height="175"></embed>
  </object>
    </td>
    </tr>
   <tr>
    <td align="center" valign="top">
    <font size="4" color="#660000"><strong>Admin Control Panel </strong></font>
    </td>
    </tr>
   <tr  width="100%">
   <td valign="top">
   <table align="center" border="0" cellspacing="2" cellpadding="2" class="text">
     <tr height="38">
     <td></td>
     </tr>
     <tr height="38">
     <td></td>
     </tr>
   <tr class="text" valign="bottom">
        <td width="98" align="right">
          <b><font color="#000000">User ID: </font></b>
        </td>
        <td width="225">
           <asp:TextBox ID="emailLogin" CssClass="tbox" Width="160px" MaxLength="40" runat="server"></asp:TextBox>
        </td>
   </tr>
   <tr class="text" valign="bottom">
        <td width="98" align="right">
           <b><font color="#000000">Password: </font></b>
        </td>
        <td width="225">
            <asp:TextBox ID="pass" CssClass="tbox" Width="160px" MaxLength="12" runat="server"
               TextMode="Password"></asp:TextBox>
        </td>
   </tr>
   <tr class="text">
        <td width="98" align="right" height="19">
             &nbsp;
        </td>
        <td width="225" height="36">
            <asp:Button ID="btnLogin" CssClass="but" Text="Login" runat="server" CausesValidation="False"
            OnClick="btnLogin_Click"  />
        </td>
   </tr>
   <tr class="text">
       <td id="tdmsg"  align="right" runat="server">
           
       </td>
   </tr>
    
    </table>
   </td>
   </tr> 
    </table>
    
    
    </form>
</body>
</html>
