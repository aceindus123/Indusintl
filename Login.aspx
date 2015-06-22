<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
    <td width="1000px" style="border:1px solid #d7d9e5" align="center">
       <uc1:HeaderMenu ID="HeaderMenu1" runat="server" />
    </td>
  </tr>
   
    <tr>
            <td height="3px"></td>
          </tr>
        
          <tr>
            <td height="3px" align="center" class="welcome">
            
            </td>
          </tr>
          <tr>
            <td align="left">
            
              <table width="643" height="298" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="258" height="298">&nbsp;</td>
                      <td width="485"><table width="309" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td><img src="images/login-h1.jpg" width="309" height="62" /></td>
                        </tr>
                        <tr>
                          <td height="200" valign="top" background="images/loginbbg.jpg"><table width="262" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td>Username</td>
                              <td><asp:TextBox ID="emailLogin" runat="server" Width="139px"></asp:TextBox>
                                 <%-- <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="emailLogin" ValidationGroup="login" ErrorMessage="*"></asp:RequiredFieldValidator>--%>
                              </td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td>Password</td>
                              <td><asp:TextBox ID="pass" runat="server" TextMode="Password" Width="138px"></asp:TextBox>
                                 <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pass" ValidationGroup="login" ErrorMessage="*"></asp:RequiredFieldValidator>--%>
                              </td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td>
                                  <asp:Button ID="btnLogin" runat="server" Text="Submit" CausesValidation="false" OnClick="btnLogin_Click" /> <%--ValidationGroup="login"--%>
                              <%--<asp:ImageButton ID="" CssClass="but" ImageUrl="~/images/signin.jpg" OnClick="btnLogin_Click" OnClientClick="javascript:return Validate();"   Width="73" Height="27"  runat="server"  />                       --%>

                              </td>
                            </tr>
                          </table>
                            <label></label>
                            <table width="262" border="0" align="center" cellpadding="0" cellspacing="0">
                              <%--<tr>
                                <td width="128">Forgot password</td>
                                  <td width="134">New user </td>
                              </tr>--%>
                                 <tr>
              <td id="lblValid" runat="server" class="star" style="height: 10px">&nbsp;</td>
                <td id="ErrorMsg" runat="server" class="star" style="height: 10px">&nbsp;</td>
              </tr>
                                                      </table></td>
                        </tr>
                        <tr>
                          <td><img src="images/loginh2.jpg" width="309" height="23" /></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                        </tr>
                      </table></td>
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
