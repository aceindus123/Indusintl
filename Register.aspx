<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>
<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="cc3"  %>
<%@ Register Src="Usercontrols/head.ascx" TagName="HeaderMenu1" TagPrefix="uc1" %>
<%@ Register Src="Usercontrols/TopMenu.ascx" TagName="TopMenu1" TagPrefix="uc2" %>
<%@ Register Src="Usercontrols/leftmenu1.ascx"  TagName="LeftMenu1" TagPrefix="uc3" %>
<%@ Register Src="Usercontrols/MiddleItem.ascx" TagName="MiddleMenu1" TagPrefix="uc4" %>
<%@ Register Src="Usercontrols/RightMenu.ascx" TagName="RightMenu1" TagPrefix="uc5" %>
<%@ Register Src="Usercontrols/FooterMenu.ascx" TagName="FooterMenu1" TagPrefix="uc6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><title>: : Indus Intl : :</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<style type="text/css">
        .style17
        {
            font-size: 11px;
            color: #0f71c1;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            text-align: justify;
            height: 20px;
            width: 166px;
        }
        .style18
        {
            font-size: 11px;
            color: #0f71c1;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            text-align: justify;
            width: 166px;
        }
        .style19
        {
            font-size: 11px;
            color: #0f71c1;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            text-align: justify;
            height: 19px;
            width: 166px;
        }
        .style21
        {
            width: 166px;
        }
    .style22
    {
        width: 147px;
    }
    .style23
    {
        height: 20px;
        width: 258px;
    }
    .style24
    {
        width: 258px;
    }
    .style25
    {
        height: 19px;
        width: 258px;
    }
    </style>
</head>
<body id="body1" runat="server" topmargin="0" leftmargin="0" bgcolor="#ffffff">
 <form id="form1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
         <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td align="left" style="padding-top:4px">
                <a href="Default.aspx"><img src="images/newlogo1.png" border="0"/></a>
              </td>
              <td align="right"  style="padding-top:4px">
                    <a href="Default.aspx"><img src="images/cellnumber1.png" border="0"/></a>    
              </td>
              <td align="right" width="33%"  style="padding-top:4px;">
                <a href="http://www.industraining.net" target="_blank"><img src="images/emailimage1.png" border="0" /></a>
              </td>
            </tr>
         </table>
        <table width="100%" height="90%" border="0" align="center" cellpadding="2" cellspacing="2">
        <tr>
        <td colspan="2" align="center" valign="middle" height="25" class="data7">Learning Registration form</td>
        </tr>
        <tr><td colspan="2"><asp:Label ID="lblerror" runat="server" Height="17px" Width="246px"></asp:Label><br /></td></tr>
       
        <tr>
        
          <td class="style17">Full Name *</td>
          <td class="style23">
              <asp:TextBox ID="txtUsername" runat="server" Width="164px"/>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsername" ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px"></asp:RequiredFieldValidator>
          </td>
            
        </tr>
        <tr>
          <td class="style17">Email ID *</td>
          <td class="style23">
              <asp:TextBox ID="email" runat="server" Width="164px" MaxLength="40"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                            ControlToValidate="email" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" Font-Names="Arial" Font-Size="X-Small"
                            ErrorMessage="Invalid EmailID" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </td>
        </tr>
        <tr>
          <td class="style17">Password *</td>
          <td class="style23">
              <asp:TextBox ID="pwd" runat="server" Width="164px" TextMode="Password"></asp:TextBox>&nbsp;
              <asp:RequiredFieldValidator ID="RfPsw" runat="server" ErrorMessage="*" ControlToValidate="pwd" ></asp:RequiredFieldValidator>
              </td>
        </tr>
      <tr>
          <td class="style17">Retype Password *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td class="style23">
              <asp:TextBox ID="repwd" runat="server" Width="164px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RfRePsw" runat="server" ErrorMessage="*" ControlToValidate="repwd"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CMPPsw" runat="server" ErrorMessage="Password should be same" ControlToCompare="pwd" ControlToValidate="repwd" Font-Names="Arial" Font-Size="X-Small"></asp:CompareValidator>
       </td>
        </tr>
        <tr>
           <td class="style18">Address *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
           <td class="style23">
                <table border="0">
                    <tr>
                        <td>
                            <asp:TextBox ID="addr" runat="server" CssClass="data" Width="243px" 
                            TextMode="MultiLine" Height="76px"></asp:TextBox>          
                        </td>
                         <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="addr" ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px"></asp:RequiredFieldValidator>         
                        </td>
                    </tr>
                </table>
          </td>
      </tr>
        <tr>
          <td class="style18">Age *&nbsp;&nbsp;&nbsp;</td>
          <td class="style23">
             <asp:TextBox ID="age" runat="server" CssClass="data" Width="164px"></asp:TextBox>                
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="age" ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px"></asp:RequiredFieldValidator>         
          </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>  
              <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be between 6 and 100" ControlToValidate="age" MinimumValue="6" MaximumValue="100" Type="Integer" Font-Size="Smaller"></asp:RangeValidator>
          </td>    
        </tr>
        <tr>
          <td class="style19">Gender *</td>
          <td class="style25">
            <table>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal">
                          <asp:ListItem Value="Male" Selected="True">Male</asp:ListItem>
                          <asp:ListItem Value="Female">Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="gender" ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
         </td>
       </tr>
          
     <tr>
          <td class="style17">Course Enrolling for *</td>
           <td class="style24">
           <table border="0">
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td>
                                   <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                                        <ContentTemplate>
                                           <asp:DropDownList ID="training" runat="server" CssClass="data" 
                                                OnSelectedIndexChanged="training_SelectedIndexChanged" AutoPostBack="True" 
                                                ToolTip="Please select your Course." Width="143px">
                                                <asp:ListItem>select Training</asp:ListItem>
                                                <asp:ListItem >Online Training</asp:ListItem>
                                                <asp:ListItem >ClassRoom Training</asp:ListItem>
                                           </asp:DropDownList>
                                       </ContentTemplate>
                                   </asp:UpdatePanel>
                               </td>
                               <td>    
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                                    ErrorMessage="*" 
                                    ControlToValidate="training" InitialValue="select Training"></asp:RequiredFieldValidator>
                                </td>
                                <td> 
                                      <asp:UpdatePanel ID="UpdatePanel2" runat="server" >
                                        <ContentTemplate>
                                            <asp:DropDownList ID="course" runat="server" CssClass="data"   
                                                AutoPostBack="True" onselectedindexchanged="course_SelectedIndexChanged" Width="190px" >
                                                 <asp:ListItem>- Select -</asp:ListItem>
                                                   
                                            </asp:DropDownList>
                                         </ContentTemplate>
                                      </asp:UpdatePanel>
                                  <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="course"
                                     ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px" InitialValue="Choose a Course"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>    
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ErrorMessage="*" ControlToValidate="training" InitialValue="- Select -"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>    
                    </td>
              </tr>
            </table>
               <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="course"
                   ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px" InitialValue="Choose a Course"></asp:RequiredFieldValidator></td>--%>
     </td>
     </tr>

         <tr>
          <td class="style18"> Course Dates*&nbsp;&nbsp;&nbsp;      </td>
           <td>
                <table border="0">
                    <tr>
                        <td><span class="data">From : </span> 
                            <asp:TextBox ID="txtcoursestart" runat="server" Width="157px" ></asp:TextBox>
                           
                           <cc3:CalendarExtender ID="cal1" runat="server" TargetControlID="txtcoursestart"></cc3:CalendarExtender>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtcoursestart" ></asp:RequiredFieldValidator>
                        </td>
                        <td><span class="data">To: </span>
                            <asp:TextBox ID="txtcourseend" runat="server" Width="158px" ></asp:TextBox>
                           <cc3:CalendarExtender ID="cal2" runat="server" TargetControlID="txtcourseend"></cc3:CalendarExtender>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtcourseend" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
             <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcal2" ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px"></asp:RequiredFieldValidator>--%>
        </tr>
         <%-- <tr>
                    <td colspan="2">
                     <asp:Calendar ID="calendar1" runat="server" Visible="false" 
                   OnSelectionChanged="calendar1_SelectionChanged1" Width="100px" ></asp:Calendar>
                    </td>
                   
                     <asp:Calendar ID="calendar2" runat="server" Visible="false" 
        OnSelectionChanged="calendar2_SelectionChanged" Width="100px"  ></asp:Calendar>
                    
                    </tr>
        --%>
         <tr><td colspan="2">
          <asp:UpdatePanel ID="UpdatePanel3" runat="server" >
                 <ContentTemplate>
            <asp:Panel ID="Panel1" runat="server">
           <table>
        <tr>
            <td class="data" align="left" colspan="2">
                <u>Billing Information</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
      
        <tr>
          <td class="style18"> Name on the Card *&nbsp;&nbsp;&nbsp;      </td>
          <td style="width: 249px">
              <asp:TextBox ID="txtlname" runat="server" CssClass="data" Width="164px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFlname" runat="server" ErrorMessage="*" ControlToValidate="txtlname" ></asp:RequiredFieldValidator>            
          </td>
        </tr>
        
        
       
         <tr>
          <td class="style18">Course fees(amt of $)*&nbsp;&nbsp;&nbsp;      </td>
          <td style="width: 249px">
              <asp:TextBox ID="txtcourfee" runat="server" CssClass="data" Width="164px"></asp:TextBox><%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcourfee" ErrorMessage="*" Font-Bold="True" Font-Size="Large" Width="7px"></asp:RequiredFieldValidator>--%>
                <asp:RequiredFieldValidator ID="RFcourfee" runat="server" ErrorMessage="*" ControlToValidate="txtcourfee" ></asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
          <td class="style18">Card Number*&nbsp;&nbsp;&nbsp;      </td>
          <td style="width: 249px">
              <asp:TextBox ID="txtcardno" runat="server" CssClass="data" Width="164px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFcardno" runat="server" ErrorMessage="*" ControlToValidate="txtcardno" ></asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:RadioButtonList ID="paym" runat="server" CellPadding="0" CellSpacing="0" 
                    onselectedindexchanged="paym_SelectedIndexChanged" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Zero" Value="visa"><img src="images/visa.gif" />
                    </asp:ListItem>
                    <asp:ListItem Text="Zero" Value="Master"><img src="images/master.gif" />
                    </asp:ListItem>
                    <asp:ListItem Text="Zero" Value="paypal"><img src="images/paypal.jpg" />
                    </asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RFpayment" runat="server" ErrorMessage="*" ControlToValidate="paym"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style18">Expiration Date*</td>
            <td>
                <table>
                    <tr>
                        <td>
                            <asp:DropDownList ID="expdatemon" runat="server">
                                <asp:ListItem>Month</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>
                            
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="expdatemon" InitialValue="Month"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:DropDownList ID="expyear" runat="server">
                                <asp:ListItem>Year</asp:ListItem>
                                <asp:ListItem>2011</asp:ListItem>
                                <asp:ListItem>2012</asp:ListItem>
                                <asp:ListItem>2013</asp:ListItem>
                                <asp:ListItem>2014</asp:ListItem>
                                <asp:ListItem>2015</asp:ListItem>
                                <asp:ListItem>2016</asp:ListItem>
                                <asp:ListItem>2017</asp:ListItem>
                                <asp:ListItem>2018</asp:ListItem>
                                <asp:ListItem>2019</asp:ListItem>
                                <asp:ListItem>2020</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="expyear" InitialValue="Year"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
          <td class="style18">CVV Code*&nbsp;&nbsp;&nbsp;      </td>
          <td style="width: 249px">
              <asp:TextBox ID="txtcvvcode" runat="server" CssClass="data" Width="164px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFcvvcode" runat="server" ErrorMessage="*" ControlToValidate="txtcvvcode" ></asp:RequiredFieldValidator>
          </td>
        </tr>
       <tr>
          <td class="style21"></td>
          <td>
              <%-- <img border="0" src="images/card1.jpg" width="100" height="100" onmouseover="zoom('23px','34px','47px','68px',this);" onmouseout="zoom('23px','34px','23px','34px',this));" />--%>
              <asp:Image ID="Image3" runat="server" ImageUrl="images/samplecvv.jpg" />
              <span class="data"><a href="#" rel="imgtip[0]">What&#39;s This?</a></span>  
       
             </td>
            
             
            
        </tr>
        
        </table>
         </asp:Panel>
         </ContentTemplate>
         </asp:UpdatePanel>
         </td></tr>
         
        <tr>
          <td class="style18">Comments*&nbsp;&nbsp;&nbsp;</td>
          <td class="style24">
            <table>
                <tr>
                    <td>
                        <asp:TextBox ID="comm" runat="server" CssClass="data" Width="258px" 
                        TextMode="MultiLine" Height="90px"></asp:TextBox>      
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="comm"></asp:RequiredFieldValidator>          
                    </td>
                </tr>
            </table>
         </td>
        </tr>
        <tr>
          <td colspan="2"><label> </label>
              <div align="center">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                  &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                  <asp:ImageButton ID="submitbtn" runat="server"
                      Height="22px" ImageUrl="images/submit.gif" Width="86px" onclick="submitbtn_Click"   
                        />
                  &nbsp;&nbsp;<asp:ImageButton ID="cancelbtn" runat="server"  Height="22px" 
                      ImageUrl="images/cancel_btn.gif" Width="86px" onclick="cancelbtn_Click"  />
                
                  &nbsp; &nbsp; &nbsp; &nbsp;</div></td>
        </tr>
        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>
      </table>
   
 </form>
</body>

</html>

