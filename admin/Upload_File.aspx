<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload_File.aspx.cs" Inherits="Upload_File" %>
<%@ Register Src="Usercontrols/TopMenu.ascx" TagName="TopMenu" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>: : Indus Intl : Admin : :</title>

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

<link rel="stylesheet" href="Styles/stylesheet.css" />   

<script type="text/javascript" src="clockh.js">
</script>
<script type="text/javascript" src="clockp.js">
</script>

<script language="javascript" type="text/javascript">
function alertadd()
{
alert("File has been Uploaded Successfully");
}
function alertdelete()
{
alert("Upload File has been deleted Successfully");
}

function alerterr()
{
alert("Invalid File.....Please upload .doc or .xls or .txt files only");
}


function alertexist()
{
alert("This file was already Exist...");
}
</script>



</head>

<body id="body1" runat="server">
<form id="form1" runat="server">

<table width="1180px" height="832" border="0" cellpadding="0" cellspacing="0" align="center">
 
 <tr>
    <td align="center" valign="top" width='100%' style="height: 257px">
         <uc1:TopMenu ID="Topmenu1" runat="server" />
    </td>
    </tr>
  <tr>
    <td height="631" align="left" valign="top"><table width="100%" height="250" border="1" cellpadding="0" cellspacing="3">
      <tr>
        <td align="left" valign="top" scope="col" id="fupload" runat="server" style="width: 47%">
                                         
        </td>
   
        
        <th align="center" valign="top" scope="col" style="width: 498px"><table width="100%" height="115" border="0" cellpadding="0" cellspacing="2">
        
          <tr>
            <td height="25" colspan="2" align="center" valign="middle"  class="lable"><label></label>
              <span  class="lable15">File Upload</span>&nbsp;</td>
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
            <td height="21" class="lable" align="right" valign="middle" bgcolor="#F5F5F5" style="width: 253px">
                Upload File :</td>
            <td width="272" bgcolor="#F5F5F5" class="lable" style="height: 24px" align="left">&nbsp;&nbsp;<asp:FileUpload ID="upload" runat="server" />
                </td>
          </tr>
            <tr>
                <td align="center" bgcolor="#f5f5f5" class="style8" height="21" style="width: 253px"
                    valign="middle">
                </td>
                <td align="left" bgcolor="#f5f5f5" class="lable">
                    Note:&nbsp; Upload .doc / .xls / .txt files only</td>
            </tr>
          <tr>
            <td height="21" align="center" valign="middle" bgcolor="#F5F5F5" class="style8" style="width: 253px"><label>
                &nbsp;</label></td>
            <td bgcolor="#F5F5F5" class="style7" align="left">
               <asp:Button ID="btnLogin" CssClass="but" Text="Upload" runat="server" CausesValidation="False"
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
      </tr>
    </table>
     
    </td>
  </tr>
  
</table>


</form>
</body>
</html>
