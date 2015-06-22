<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="Upload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Upload Login @  Indus Times.com</title>

<script language="javascript" type="text/javascript">
	function alertsubmit()
{
alert("Please enter correct Username or Password!");
}
    </script>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

a:link {
	color: #006699;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #006699;
}
a:hover {
	text-decoration: none;
	color: #006699;
}
a:active {
	text-decoration: none;
	color: #006699;
}

.style7 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FF0000; }


#Layer28 {
	position:absolute;
	left:615px;
	top:31px;
	width:79px;
	height:44px;
	z-index:7;
}

-->
</style>



<script type="text/javascript" src="clockh.js">
</script>
<script type="text/javascript" src="clockp.js">
</script>
</head>

<body id="body1" runat="server">
<form id="form1" runat="server">


<div id="Layer28">
<div id="clock_a"></div>
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" height="95" width="390">
                                                                        <param name="movie" value="clock1.swf" />
                                                                        <param name="quality" value="high" />
                                                                        <param name="SCALE" value="exactfit" />
                                                                        <embed src="clock1.swf" width="390" height="95" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                                                                            type="application/x-shockwave-flash" scale="exactfit"></embed>
  </object> 
</div>


<table width="100%" height="832" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <th scope="col" style="height: 129px"><img src="mainbanner.gif" width="1002" height="129" border="0" usemap="#Map2" id="IMG1" /></th>
  </tr>
 <tr height="150">
        <td colspan="2">
        &nbsp;
        </td>
        </tr>
  <tr>
    <td height="631" align="left" valign="top"><table width="100%" height="250" border="1" cellpadding="0" cellspacing="3">
      <tr>
        <th width="18%"  align="left" valign="top" scope="col"></th>
   
        
        <th align="center" valign="top" scope="col"><table width="100%" height="115" border="0" cellpadding="0" cellspacing="2">
        
          <tr>
            <td height="20" colspan="2" align="center" valign="middle" bgcolor="#CC3300" class="style8"><label></label>
              <span class="style4">User Login</span> &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" bgcolor="#f5f5f5" class="style8" height="21" style="width: 253px"
                    valign="middle">
                </td>
                <td align="left" bgcolor="#f5f5f5" class="style7" style="height: 24px" width="272">
                </td>
            </tr>
            <tr>
                <td align="right" bgcolor="#f5f5f5" class="style8" height="21" style="width: 253px"
                    valign="middle">
                </td>
                <td align="left" bgcolor="#f5f5f5" class="style7" style="height: 24px" width="272">
                </td>
            </tr>
          <tr>
            <td height="21" align="right" valign="middle" bgcolor="#F5F5F5" class="style8" style="width: 253px">E Mail ID</td>
            <td width="272" bgcolor="#F5F5F5" class="style7" style="height: 24px" align="left">&nbsp;
                <asp:TextBox ID="emailLogin" CssClass="tbox" Width="110" MaxLength="50" runat="server"></asp:TextBox>
                </td>
          </tr>
          <tr>
            <td height="21" align="right" valign="middle" bgcolor="#F5F5F5" class="style8" style="width: 253px"><label>Password</label></td>
            <td bgcolor="#F5F5F5" class="style7" align="left">&nbsp;
                <asp:TextBox ID="pass" CssClass="tbox" Width="110" MaxLength="12" runat="server" TextMode="Password"></asp:TextBox> 
                 </td>
          </tr>
          <tr>
            <td height="21" align="center" valign="middle" bgcolor="#F5F5F5" class="style8" style="width: 253px"><label>
                &nbsp;</label></td>
            <td bgcolor="#F5F5F5" class="style7" align="left">
               <asp:Button ID="btnLogin" CssClass="but" Text="Login" runat="server" CausesValidation="False"
                                                                                                            OnClick="btnLogin_Click" OnClientClick="javascript:return Validate();" />
            </td>
          </tr>
          <tr>
            <td align="center" valign="middle" bgcolor="#F5F5F5" class="style7" style="height: 21px; width: 253px;"> </td>
            <td bgcolor="#F5F5F5" class="style7" style="height: 21px"> </td>
          </tr>
            <tr>
                <td align="center" bgcolor="#f5f5f5" class="style7" style="height: 21px; width: 253px;" valign="middle">
                </td>
                <td bgcolor="#f5f5f5" class="style7" style="height: 21px" id="tdmsg" runat="server">
                
                </td>
            </tr>

        </table>
          </th>
        <th width="20%" align="left" valign="top" scope="col"></th>
      </tr>
    </table>
     
    </td>
  </tr>
  <tr>
    <td height="25" align="left" valign="top" bgcolor="#0099CC"><img src="footer.gif" width="1002" height="25" border="0" usemap="#Map17" /></td>
  </tr>
</table>


</form>
</body>
</html>
