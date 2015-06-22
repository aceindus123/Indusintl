<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Grades.aspx.cs" Inherits="Admin_Grades" %>

<%@ Register Src="Usercontrols/TopMenu.ascx" TagName="TopMenu" TagPrefix="uc1" %>


<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>: : Indus Intl - Admin : :</title>


<link rel="stylesheet" href="Styles/stylesheet.css" />
<script language="javascript" type="text/javascript">
	function alertedit()
{
alert("Grade name has been Updated Successfully");
}
function alertdelete()
{
alert("Grade name has been deleted Successfully");
}
    </script>
    

</head>

<body  id="body1" runat="server" >

<form id="form1" runat="server">
	<table border="0" cellpadding="0" cellspacing="0" style="width: 1180px;" align="center">
		
		<tr>
		<td height="25" width="100%" valign="top">
		<uc1:TopMenu ID="TopMenu1" runat="server" />
		</td>
		</tr>
		
			
		
		<tr>
			
		<td width="85%" height="50" align="left" valign="top" class="lable">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            
                                         
                                            <tr>
                                                <td id="tdcontent" runat="server" style="height: 18px">
                                                </td>
                                            </tr>
                                            
                                            
                                        
                                        </table>
                                        
                                        <!-- Center Content -->
                                    </td>
			
		</tr>
		
	</table>
</form>

</body>

</html>
