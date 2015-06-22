<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Enroll.aspx.cs" Inherits="Admin_Enroll" %>
<%@ Register Src="Usercontrols/TopMenu.ascx" TagName="TopMenu" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>: : Indus Intl : Admin : :</title>
    
      <script language="javascript" type="text/javascript" src="js/calendar.js"></script> 
        <script language="javascript" type="text/javascript">
	function alertsubmit()
{
alert("Enrollment has been saved Successfully");
}

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
    
      <script language="javascript" type="text/javascript">
	function alertdelete()
{
alert("Selected Student has been deleted Successfully");
}
function alertedit()
{
alert("Selected Details has been Edited Successfully");
}
    </script>
    
    <script language="javascript" type="text/javascript" >
function Sample()
{
var n = document.getElementById("GVData").rows.length;
var i; 
var j=0; 
for(i=2;i<=n;i++)
{
if(i<10)
{
if(document.getElementById("GVData_ctl0"+i+"_chkselect").checked==true)
{
if(j>0)
{
alert('you can select only one...');
document.getElementById("GVData_ctl0"+i+"_chkselect").checked=false;
}
else
{
j++;
}
}
}
else
{
if(document.getElementById("GVData_ctl"+i+"_chkselect").checked==true)
{
if(j>0)
{
alert('you can select only one...');
document.getElementById("GVData_ctl0"+i+"_chkselect").checked=false;
}
else
{
j++;
}
}
}
}
}
</script>

<script type="text/javascript">
function allowonlynumbers() 
{
if(event.keyCode >= 48 && event.keyCode <= 57) 
{
return true; 
}
else
{
alert('Only numbers can be entered.');return false; 
} 
}

</script>

<script type="text/javascript" language="javascript">
    function confirmMessageDelete(frm)
    {
        for(i = 0; i < frm.length; i++)
        {
            if(frm.elements[i].checked)
            {
                return confirm("Are you sure you want to delete the selected record?");
                return true;
            }            
        }        
      alert('select atleast one Checkbox for Delete!');
      return false;
    }
    </script>
    
<script type="text/javascript" language="javascript">
    function selectOne(frm)
    {
     for(i=0;i<frm.length;i++)
     {
       if(frm.elements[i].checked)
       {
         return true;
       }
     }
    alert('select atleast one Checkbox for Edit!');
      return false;
    }
    </script>
    
 <script type="text/javascript" language="javascript">
    function selectOneView(frm)
    {
     for(i=0;i<frm.length;i++)
     {
       if(frm.elements[i].checked)
       {
         return true;
       }
     }
    alert('select atleast one Checkbox for View!');
      return false;
    }
    </script>
    
    
  <link rel="stylesheet" href="Styles/stylesheet.css" />   
    
</head>
<body id="body1" runat="server" topmargin="0" leftmargin="0" bgcolor="#ffffff">
    <form id="form1" runat="server">
    <table width="1180px" cellpadding="0" cellspacing="0" bgcolor="#ffffff" align="center">
    
   <tr>
    <td align="center" valign="top" width='100%'>
         <uc1:TopMenu ID="Topmenu1" runat="server" />
    </td>
    </tr>
    
    <tr>
     <td align="center" valign="top" width="100%" class="lable9">
    
    <table width="90%" border="0" align="center" cellpadding="2" cellspacing="2">
    
    <tr>
    <td valign="top" align="left">
    <table>
    <tr>
    <td>
        <asp:Button ID="btnNew" runat="server" Text="AddNew" onclick="btnNew_Click" />
    </td>
    <td>  </td>
    <td>
        <asp:Button ID="btnEdit" runat="server" Text="Edit" onclick="btnEdit_Click" />
    </td>
    
     <td>  </td>
    <td>
        <asp:Button ID="btnDel" runat="server" Text="Delete" onclick="btnDel_Click" />
    </td>
     <td>  </td>
    <td>
        <asp:Button ID="btnMail" runat="server" Text="SendMail" 
            onclick="btnMail_Click" />
    </td>
    </tr>
    </table>
    </td>
    </tr>
    
    <tr>
    <td class="lable">
        <asp:Label ID="lblerr" runat="server" Text=""></asp:Label>
    </td>
    </tr>
    
    <tr>
    <td>
    Students List
    </td>
    </tr>
    
    <tr>
    <td>
    
    <asp:GridView  ID="GVData" runat="server" AllowPaging="true"    AutoGenerateColumns="false"  BorderWidth="1px" BackColor="White" 
      CellSpacing="1" BorderStyle="None" BorderColor="White" PageSize="30"  DataKeyNames="ID" Width="1065px"  
        onpageindexchanging="GVData_PageIndexChanging"  CssClass="lable" >
     <PagerStyle HorizontalAlign="center"  />
     <PagerSettings Mode="NumericFirstLast" />
     <RowStyle Font-Bold="False" Font-Names="Arial" Font-Size="9" />
     <HeaderStyle BackColor="LightSteelBlue" Font-Bold="false" Font-Names="Arial" Font-Size="10" Height="20" />
     <AlternatingRowStyle BackColor="#ffffff" Font-Names="Arial" Font-Size="9" />
      <Columns>
      <asp:TemplateField>
      <ItemTemplate>
      <asp:CheckBox ID="chkselect" runat="server" />
       <%--onclick="Sample();"--%>
      </ItemTemplate>
      </asp:TemplateField>
      <asp:BoundField DataField="stname" HeaderText="Student FName" />
      <asp:BoundField DataField="stlName" HeaderText="Student LName" />
      <asp:BoundField DataField="PFName" HeaderText="Parent FName" />
      <asp:BoundField DataField="PLName" HeaderText="Parent LName" />
      <asp:BoundField DataField="Address" HeaderText="Address" />
      <asp:BoundField DataField="City" HeaderText="City" />
      <asp:BoundField DataField="State" HeaderText="State" />
      <asp:BoundField DataField="Country" HeaderText="Country" />
      <asp:BoundField DataField="EmailID" HeaderText="EmailID" />
      <asp:BoundField DataField="Phoneno" HeaderText="Phone No" />
      <asp:BoundField DataField="MobileNo" HeaderText="Mobile" />
      <asp:BoundField DataField="Grade" HeaderText="Grade" />
      <asp:BoundField DataField="CourseEnroll" HeaderText="Course" />
      </Columns>
     </asp:GridView>
    
    </td>
    </tr>
    
    <tr>
    <td>
    
    
    </td>
    </tr>
    
  </table>
    
    </td>
    </tr>
    
    
    
  
    </table>
    
    
    </form>
</body>
</html>