<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newsletter.aspx.cs" Inherits="newsletter" ValidateRequest="false" %>
<%--<%@ Register TagPrefix="fckEdistor1" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>--%>

<%@ Register Src="Usercontrols/TopMenu.ascx" TagName="TopMenu" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>: : Indus Intl : Admin : :</title>
      <script type="text/javascript" src="tinymce3.5/jscripts/tiny_mce/tiny_mce.js" ></script>
<script type="text/javascript">
    tinyMCE.init({
        // General options

        //   content_css : "style.css",


        mode: "textareas",
        theme: "advanced",
        plugins: "autolink,lists,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",

        // Theme options
        theme_advanced_buttons1: "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
        theme_advanced_buttons2: "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
        theme_advanced_buttons3: "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
        theme_advanced_buttons4: "insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile,insertimage",
        theme_advanced_toolbar_location: "top",
        theme_advanced_toolbar_align: "left",
        theme_advanced_statusbar_location: "bottom",
        theme_advanced_resizing: true,
        //relative_urls: true,
        relative_urls: false,
        remove_script_host: false,

        skin: "o2k7",
        skin_variant: "silver",
        content_css: "css/example.css,tinymce3.5/examples/lists/style.css",

        template_external_list_url: "tinymce3.5/examples/lists/template_list.js",
        external_link_list_url: "tinymce3.5/examples/lists/link_list.js",
        external_image_list_url: "tinymce3.5/examples/lists/image_list.js",
        media_external_list_url: "tinymce3.5/examples/lists/media_list.js",
    });
</script>

  <link rel="stylesheet" href="Styles/stylesheet.css" />   
 <script language="javascript" type="text/javascript">
	function alertsubmit()
    {
        alert("Mail has been sent Successfully");
    }
</script>
</head>

<body topmargin="2" leftmargin="3" bgcolor="#E6E6E6" id="body1" runat="server">
<form id="form1" runat="server">

<table width="1180px" border="0"  cellpadding="2" align="center">
 <tr>
    <td colspan="2">
    <uc1:TopMenu ID="Topmenu1" runat="server" />
	</td>
  </tr>
  <tr>
    <td colspan="2">
	</td>
  </tr>
  
   <tr>
    <td class="lable" width="286" align="right">
     <font color="red">*</font>&nbsp;Select Course&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
    </td>
    <td width="703">
     <asp:DropDownList ID="course" runat="server" AutoPostBack="true" AppendDataBoundItems="True" CssClass="lable" Width="298px" OnSelectedIndexChanged="course_SelectedIndexChanged" >
              <asp:ListItem Selected="True">Choose a Course</asp:ListItem>
              <asp:ListItem Value="All">All</asp:ListItem>
              <asp:ListItem Value="BO-IndusTrng-Curriculum">DWH/BO/COGNOS/Crystal Reports</asp:ListItem>
              <asp:ListItem Value="INFORMATICA-Training-Curriculum">INFORMATICA</asp:ListItem>
              <asp:ListItem Value="BA-Training-Curriculum">BUSINESS ANALYST</asp:ListItem>
              <asp:ListItem Value="QAIndusTrng-Curriculum">QA Manual and Automated Testing</asp:ListItem>
              <asp:ListItem Value="ORACLEDBA10g-TrngCurriculum">ORACLE DBA</asp:ListItem>
              <asp:ListItem Value="ORACLE APPS">ORACLE APPS</asp:ListItem>
              <asp:ListItem Value="ORACLE10g-RAC-DATAGUARD-TrngCurriculum">ORACLE 10g RAC / DATA GUARD</asp:ListItem>
              <asp:ListItem Value="SAP-FICO-Training-Curriculum">SAP - FICO</asp:ListItem>
              <asp:ListItem Value="DotNET">.NET / C# / ASP.NET / VB.NET</asp:ListItem>
              <asp:ListItem Value="SAP-HR-Training-Curriculum">SAP - HR</asp:ListItem>
              <asp:ListItem Value="SAP - CRM">SAP - CRM</asp:ListItem>
              <asp:ListItem Value="PSoft-Training-Curriculum">People Soft - Technical and Functional</asp:ListItem>
              <asp:ListItem Value="WebDesign-Training-Curriculum">Web Development</asp:ListItem>
              <asp:ListItem Value="JAVA-Training-Curriculum">JAVA / J2EE Training</asp:ListItem>
              <asp:ListItem Value="UNIX.ADMIN-Training-Curriculum">UNIX ADMIN</asp:ListItem>
              <asp:ListItem Value="PMP-Training-Curriculum">PMP Certification</asp:ListItem>
              <asp:ListItem Value="DB2UDB-9DBA-Curriculum">DB2 - UDB 9</asp:ListItem>
              <asp:ListItem Value="ORACLE PLSQL - Training">ORACLE PLSQL</asp:ListItem>
              <asp:ListItem Value="sas curriculums.pdf">SAS</asp:ListItem>
              <asp:ListItem Value="NA">SAP BW</asp:ListItem>
              <asp:ListItem Value="NA">SAP MM</asp:ListItem>
              <asp:ListItem Value="NA">Hyperion Essbase</asp:ListItem>
              <asp:ListItem Value="NA">SAP SD</asp:ListItem>
              <asp:ListItem Value="Free Orientation-IT Training &amp; Consulting">Free Orientation-IT Training &amp; Consulting</asp:ListItem>
               <asp:ListItem Value="Weblogic curriculum">Web Logic Portal</asp:ListItem>
              <asp:ListItem Value="New">New</asp:ListItem>
           </asp:DropDownList>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="course"
               ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px" InitialValue="Choose a Course"></asp:RequiredFieldValidator>&nbsp;
              
    </td>
    </tr>
  
  
   <tr>
    <td class="lable" width="286" align="right">
     <font color="red">*</font>&nbsp;From&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
    </td>
    <td width="703">
    <asp:TextBox ID="txtFrom" runat="server" Text="learning@indusintl.net" CssClass="lable" Width="290px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px" ControlToValidate="txtFrom"></asp:RequiredFieldValidator></td>
    </tr>
  
  
 <tr>
    <td class="lable" width="286" align="right">
     <font color="red">*</font>&nbsp;To&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
    </td>
    <td width="703" class="lable">
    <asp:TextBox ID="txtName"  runat="server" CssClass="lable" Width="291px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px" ControlToValidate="txtName"></asp:RequiredFieldValidator>
    </td>
    </tr>
    
    
   <tr>
   <td class="lable" width="286" align="right">
      <font color="red">*</font>&nbsp;Subject&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
   </td>
   <td width="703">
     <asp:TextBox ID="txtSubject" Text="Indusintl News Letter" runat="server" CssClass="lable" Width="292px"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px" ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
     
     </td>
   </tr>
    
    
    <tr>
        <td height="81" width="286" class="lable" align="right">
            Cut &amp; Paste News Letter&nbsp; Content Here :</td>&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
        <td runat="server" height="81" width="703" class="lable">
      <%--  <FCKeditorV2:FCKeditor ID="newscontent" runat="server" Width="100%" Height="250" BasePath="FCkEditor/"></FCKeditorV2:FCKeditor>--%>
             <%--<FCKeditorV2:FCKeditor  ID="FCKeditor1" BasePath="/fckeditor/" runat="server" Height="400px"></FCKeditorV2:FCKeditor>--%>
           
            <asp:TextBox ID="newscontent" runat="server" TextMode="MultiLine"  CssClass="lable" Width="98%" Height="250"></asp:TextBox></td>
    </tr>
  <tr>
    <td width="286" height="81">&nbsp;</td>
    <td id="maildata" width="703" height="81" runat="server">
      
      <!-- Laxmi -->
      
     
      
    </td>
  </tr>
  <tr>
    <td width="286" height="69">&nbsp;
    
    </td>
    
    <td width="703" height="69" align="center">
    <table width="100%">
    <tr>
    <td>
    <asp:Button ID="btnview"  Text="Preview NewsLetter" runat="server" OnClick="btnview_Click"> </asp:Button>
    </td>
    <td>
    <asp:Button ID="btnsend"  Text="Send NewsLetter" runat="server" OnClick="btnsend_Click"> </asp:Button>
    </td>
    </tr>
    </table>
    
    </td>
  </tr>
  <tr>
    <td width="286" height="57">&nbsp;</td>
    <td width="703" height="57">&nbsp;</td>
  </tr>
  <tr>
    <td width="286" height="59">&nbsp;</td>
    <td width="703" height="59">&nbsp;</td>
  </tr>
  <tr>
    <td width="989" colspan="2" bgcolor="#6699FF">&nbsp;
    <asp:Label ID="lblerror" Text="" runat="server" ></asp:Label>
    </td>
  </tr>
</table>
</form>
</body>
</html>
