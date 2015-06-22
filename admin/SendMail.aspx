<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeFile="SendMail.aspx.cs" Inherits="SendMail" %>

<%--<%@ Register TagPrefix="fckEdistor1" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>--%>

<%@ Register Src="Usercontrols/TopMenu.ascx" TagName="TopMenu" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Indus Learning - Admin Control Panel</title>
    
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
    
</head>
<body id="body1" runat="server" topmargin="0" leftmargin="0" bgcolor="#ffffff">
    <form id="form1" runat="server">
    <table width="1180" cellpadding="0" cellspacing="0" bgcolor="#ffffff" align="center">
    
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
    <table width="100%" class="lable">
    
     <tr>
    <td width="15%" align="left">
        &nbsp;</td>
    <td width="2%">&nbsp;</td>
    <td width="83%" align="left" class="lableb">
        <asp:Label ID="msglbl" runat="server" Text=""></asp:Label></td>
    </tr>
    
     <tr>
    <td width="15%" align="left">
        &nbsp;</td>
    <td width="2%">&nbsp;</td>
    <td width="83%" align="left">&nbsp;</td>
    </tr>
    
     <tr>
    <td width="15%" align="right">
    From &nbsp; &nbsp; &nbsp;
    </td>
    <td width="2%">:</td>
    <td width="83%" align="left"><asp:TextBox ID="fromaddr" runat="server" Width="700" CssClass="datarep" BorderWidth="1" ></asp:TextBox></td>
    </tr>
    
    <tr>
    <td width="15%" align="right">
    To &nbsp; &nbsp; &nbsp;
    </td>
    <td width="2%">:</td>
    <td width="83%" align="left"><asp:TextBox ID="toaddr" runat="server" Width="700" CssClass="datarep" BorderWidth="1" ></asp:TextBox></td>
    </tr>
     <tr>
    <td width="15%" align="right">
    Subject &nbsp; &nbsp; &nbsp;
    </td>
    <td width="2%">:</td>
    <td width="83%" align="left"><asp:TextBox ID="subj" runat="server" Width="700" CssClass="datarep" BorderWidth="1" ></asp:TextBox></td>
    </tr>
    
  
    
    <tr>
    <td width="15%" align="left">
    
    </td>
         <td width="2%">:</td>
    <td colspan="3" width="700" align="left" >
   <%-- <fckEdistor1:FCKeditor ID="txtmsg" runat="server" Width="100%" Height="300" BasePath="FCkEditor/" ></fckEdistor1:FCKeditor>--%>
    <asp:TextBox ID="txtmsg" runat="server" Width="700" Height="300"  BorderWidth="1"  TextMode="MultiLine"></asp:TextBox>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    
    <tr>
    <td align="center">
        <asp:Button ID="mailsend" runat="server" Text="Send Mail" 
            onclick="mailsend_Click" />
    </td>
    </tr>
    
    <tr>
    <td class="lable">
        <asp:Label ID="lblerr" runat="server" Text=""></asp:Label>
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