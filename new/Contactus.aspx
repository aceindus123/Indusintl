<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<%@ Register Src="~/Usercontrols/HeaderMenu.ascx" TagName="HeaderMenu" TagPrefix="uc1" %>
<%@ Register Src="~/Usercontrols/FooterMenu.ascx" TagName="FooterMenu" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>:::Indus Learning:::</title>
<link rel="stylesheet" href="includes/style.css" type="text/css" />
</head>

<body id="Body1" topmargin="0" bottommargin="0" leftmargin="0" runat="server">
<center>
<form id="form1" runat="server">
<table cellspacing="0" cellpadding="0">
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
                ContactUs
            </td>
          </tr>
          <tr>
            <td align="left">
            
              <table align="left" class="text">
              
                           
                <td  width="140" valign="top" style="padding-top:5px; padding-left:7; padding-right:7px;"><img src="images/21.jpg" width="134" height="413" style="float:left;" /></td>
            <td>
            
            
              <table border="0" align="center" cellpadding="3" cellspacing="0" 
                        style="width: 619px">
              <tr>
                <td class="head"><div align="center">
                    <img id="imgOff" name="imgOff" src="images/indusloc1.gif" height="235" width="512" /></div></td>
              </tr>
              <tr>
                <td class="data">If you need to get in touch with us, we are just a phone or email 
                    away. Of course you’re welcome to stop by in person. Below you can see various 
                    ways to get in touch, and if you are coming for a visit, you can use mapping 
                    services linked below to directions and a map.</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="left"><table cellspacing="0" cellpadding="0" width="100%">
                  <tr>
                    <%--<td height="17" style="width: 11px"></td>--%>
                    <td colspan="1" align="left" width="23%" height="17" valign="top" class="data8">
                        Driving Directions:</td>
                    <td valign="top" width="75%" class="text" align="left"><a href="http://www.mapquest.com/directions/main.adp?src=maps&amp;1sb=revise&amp;2l=5Q%2fKINRQxeX63LoYZDyn%2fw%3d%3d&amp;2g=aM6tWcIXcFPUCxRWGQVBiA%3d%3d&amp;2v=ADDRESS&amp;2a=1039%20Sterling%20Rd&amp;2c=Herndon&amp;2s=VA&amp;2z=20170%2d3870&amp;2y=US&amp;2pn=&amp;2pl=" target="_blank" class="text"><strong>
                        Gets MapQuest TM driving directions from your Office or Home?</strong></a></td>
                  </tr>
                  <tr>
                    <td height="17" colspan="2" align="left" class="data8">Office Timings:
                        <font color="navy" face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">
                        9:00 am to 6:00 pm</span></font></td>
                  </tr>
                  <tr>
                    <td height="17" colspan="2" align="left" class="data8">Class Timings :<font color="navy"
                            face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">3:00 
                        pm to 8:00 pm</span></font></td>
                  </tr>
                  <tr>
                   <%-- <td height="17" style="width: 11px">&nbsp;</td>--%>
                    <td height="17" colspan="2" align="left" class="data6">Training Location : </td>
                  </tr>
                </table>                </td>
              </tr>
              <tr>
              <td align="left" valign="top">
              <table cellspacing="1" cellpadding="1" width="100%">
              <tr>
                <td class="data"><strong>1039 Sterling Road, Ste#103</strong><strong>, 
                    Herndon-VA-20170. USA.</strong><br />
                  <strong>(Behind Fuddruckers @ Cross Roads of Dulles on Elden Street)</strong> <br />
                  <strong>Washington DC</strong><strong> Metro Area.</strong></td>
              </tr>
              </table>
              </td>
              
              </tr>
    </td>
              </tr>
             
              <tr>
              
                <td class="data" style="height: 5px" align="left"><strong><span class="data6">Ph :</span> 
                    703-263-7279 <br />
                    <span class="data6">Fax:                   <strong><span class="data6">mail to:</span> 
                    learning@Indusintl.com</strong></td>
              </tr>
              <tr>
                <td class="data6" style="height: 20px">
                  <strong>Visit:</strong>
                   <a href="#" class="data6">http://www.indusintl.net</a><br />
                </td>
              </tr>
              <tr>
                <td><table align="center" border="0" cellpadding="2" cellspacing="2" width="95%">
                      <tbody>
                        <tr>
                          <td class="data4"><p align="center"><strong>Contact Form </strong></p></td>
                        </tr>
                        <tr>
                          <td><table align="center" border="0" cellpadding="2" cellspacing="2" 
                                  style="width: 76%">
                              <tbody>
                                <tr>
                                  <td width="34%" class="data">Full Name *</td>
                                  <td class="data">
                                   <asp:TextBox ID="txtName" MaxLength="50" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="namereq" runat="server" ControlToValidate="txtName"
                                                            Display="Dynamic" ErrorMessage="Name should not be blank"></asp:RequiredFieldValidator>
                                  
                                  </td>
                                </tr>
                                <tr>
                                  <td class="data">Phone Number </td>
                                  <td  class="data">  <asp:TextBox ID="tel" MaxLength="10" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                  <td class="data">E-Mail *
                                  </td>
                                  <td  class="data">
                                  <asp:TextBox ID="txtEmail" MaxLength="50" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="emailreq" runat="server" ControlToValidate="txtEmail"
        Display="Dynamic" ErrorMessage="Email ID Required"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="Emailexp" runat="server" ControlToValidate="txtEmail"
        Display="Dynamic" ErrorMessage="Invalid Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                  </td>
                                </tr>
                               <%-- <tr>
                                  <td class="data">Submit Resume </td>
                                  <td><input name="file1" id="file1" type="file" />
                                    &nbsp;</td>
                                </tr>--%>
                          
                          <tr>
                        <td class="data">Address :</td>
                        <td class="data">
                        <asp:TextBox ID="address" MaxLength="50"  TextMode="MultiLine" Wrap="true" Columns="30" Rows="4" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                                
                                 <tr>
                        <td class="data">Country :</td>
                        <td  class="data">
                        <select name="country" class="data" id="country" runat="server">
                            <option value="" selected>Choose a Country</option>
                                  <option value="USA">United States of America</option>
                                  <option value="CAN">Canada</option>
                                  <option value="DEU">Germany</option>
                                  <option value="FRA">France</option>
                                  <option value="GBR">United Kingdom</option>
                                  <option value="IND">India</option>
                                  <option value="">---------------------</option>
                                  <option value="AFG">Afghanistan</option>
                                  <option value="ALB">Albania</option>
                                  <option value="DZA">Algeria</option>
                                  <option value="ASM">American Samoa</option>
                                  <option value="AND">Andorra</option>
                                  <option value="AGO">Angola</option>
                                  <option value="AIA">Anguilla</option>
                                  <option value="ATA">Antarctica</option>
                                  <option value="ATG">Antigua and Barbuda</option>
                                  <option value="ARG">Argentina</option>
                                  <option value="ARM">Armenia</option>
                                  <option value="ABW">Aruba</option>
                                  <option value="AUS">Australia</option>
                                  <option value="AUT">Austria</option>
                                  <option value="AZE">Azerbaijan</option>
                                  <option value="BHS">Bahamas</option>
                                  <option value="BHR">Bahrain</option>
                                  <option value="BGD">Bangladesh</option>
                                  <option value="BRB">Barbados</option>
                                  <option value="BLR">Belarus</option>
                                  <option value="BEL">Belgium</option>
                                  <option value="BLZ">Belize</option>
                                  <option value="BEN">Benin</option>
                                  <option value="BMU">Bermuda</option>
                                  <option value="BTN">Bhutan</option>
                                  <option value="BOL">Bolivia</option>
                                  <option value="BIH">Bosnia and Herzegowina</option>
                                  <option value="BWA">Botswana</option>
                                  <option value="BVT">Bouvet Island</option>
                                  <option value="BRA">Brazil</option>
                                  <option value="IOT">British Indian Ocean Territory</option>
                                  <option value="BRN">Brunei Darussalam</option>
                                  <option value="BGR">Bulgaria</option>
                                  <option value="BFA">Burkina Faso</option>
                                  <option value="BDI">Burundi</option>
                                  <option value="KHM">Cambodia</option>
                                  <option value="CMR">Cameroon</option>
                                  <option value="CPV">Cape Verde</option>
                                  <option value="CYM">Cayman Islands</option>
                                  <option value="CAF">Central African Republic</option>
                                  <option value="TCD">Chad</option>
                                  <option value="CHL">Chile</option>
                                  <option value="CHN">China</option>
                                  <option value="CXR">Christmas Island</option>
                                  <option value="CCK">Cocoa (Keeling) Islands</option>
                                  <option value="COL">Colombia</option>
                                  <option value="COM">Comoros</option>
                                  <option value="COG">Congo</option>
                                  <option value="COK">Cook Islands</option>
                                  <option value="CRI">Costa Rica</option>
                                  <option value="CIV">Cote Divoire</option>
                                  <option value="HRV">Croatia (local name: Hrvatska)</option>
                                  <option value="CUB">Cuba</option>
                                  <option value="CYP">Cyprus</option>
                                  <option value="CZE">Czech Republic</option>
                                  <option value="DNK">Denmark</option>
                                  <option value="DJI">Djibouti</option>
                                  <option value="DMA">Dominica</option>
                                  <option value="DOM">Dominican Republic</option>
                                  <option value="TMP">East Timor</option>
                                  <option value="ECU">Ecuador</option>
                                  <option value="EGY">Egypt</option>
                                  <option value="SLV">El Salvador</option>
                                  <option value="GNQ">Equatorial Guinea</option>
                                  <option value="ERI">Eritrea</option>
                                  <option value="EST">Estonia</option>
                                  <option value="ETH">Ethiopia</option>
                                  <option value="FLK">Falkland Islands (Malvinas)</option>
                                  <option value="FRO">Faroe Islands</option>
                                  <option value="FJI">Fiji</option>
                                  <option value="FIN">Finland</option>
                                  <option value="FXX">France, Metropolitan</option>
                                  <option value="GUF">French Guiana</option>
                                  <option value="PYF">French Polynesia</option>
                                  <option value="ATF">French Southern Territories</option>
                                  <option value="GAB">Gabon</option>
                                  <option value="GMB">Gambia</option>
                                  <option value="GEO">Georgia</option>
                                  <option value="GHA">Ghana</option>
                                  <option value="GIB">Gibraltar</option>
                                  <option value="GRC">Greece</option>
                                  <option value="GRL">Greenland</option>
                                  <option value="GRD">Grenada</option>
                                  <option value="GLP">&gt;Guadeloupe</option>
                                  <option value="GUM">Guam</option>
                                  <option value="GTM">Guatemala</option>
                                  <option value="GIN">Guinea</option>
                                  <option value="GNB">Guinea-Bissau</option>
                                  <option value="GUY">Guyana</option>
                                  <option value="HTI">Haiti</option>
                                  <option value="HMD">Heard and Mc Donald Islands</option>
                                  <option value="HND">Honduras</option>
                                  <option value="HKG">Hong Kong</option>
                                  <option value="HUN">Hungary</option>
                                  <option value="ISL">Iceland</option>
                                  <option value="IDN">Indonesia</option>
                                  <option value="IRN">Iran (Islamic Republic of)</option>
                                  <option value="IRQ">Iraq</option>
                                  <option value="IRL">Ireland</option>
                                  <option value="ISR">Israel</option>
                                  <option value="ITA">Italy</option>
                                  <option value="JAM">Jamaica</option>
                                  <option value="JPN">Japan</option>
                                  <option value="JOR">Jordan</option>
                                  <option value="KAZ">Kazakhstan</option>
                                  <option value="KEN">Kenya</option>
                                  <option value="KIR">Kiribati</option>
                                  <option value="PRK">Korea, Democratic Peoples Republic of</option>
                                  <option value="KOR">Korea, Republic of</option>
                                  <option value="KWT">Kuwait</option>
                                  <option value="KGZ">Kyrgyzstan</option>
                                  <option value="LAO">Lao Peoples Democratic Republic</option>
                                  <option value="LVA">Latvia</option>
                                  <option value="LBN">Lebanon</option>
                                  <option value="LSO">Lesotho</option>
                                  <option value="LBR">Liberia</option>
                                  <option value="LBY">Libyan Arab Jamahiriya</option>
                                  <option value="LIE">Liechtenstein</option>
                                  <option value="LTU">Lithuania</option>
                                  <option value="LUX">Luxembourg</option>
                                  <option value="MAC">Macau</option>
                                  <option value="MKD">Macedonia, The Former Yugoslav Republic of</option>
                                  <option value="MDG">Madagascar</option>
                                  <option value="MWI">Malawi</option>
                                  <option value="MYS">Malaysia</option>
                                  <option value="MDV">Maldives</option>
                                  <option value="MLI">Mali</option>
                                  <option value="MLT">Malta</option>
                                  <option value="MHL">Marshall Islands</option>
                                  <option value="MTQ">Martinique</option>
                                  <option value="MRT">Mauritania</option>
                                  <option value="MVS">Mauritius</option>
                                  <option value="MYT">Mayotte</option>
                                  <option value="MEX">Mexico</option>
                                  <option value="FSM">Micronesia, Federated States of</option>
                                  <option value="MDA">Moldova, Republic of</option>
                                  <option value="MCO">Monaco</option>
                                  <option value="MNG">Mongolia</option>
                                  <option value="MSR">Montserrat</option>
                                  <option value="MAR">Morocco</option>
                                  <option value="MOZ">Mozambique</option>
                                  <option value="MMR">Myanmar</option>
                                  <option value="NAM">Namibia</option>
                                  <option value="NRU">Nauru</option>
                                  <option value="NPL">Nepal</option>
                                  <option value="NLD">Netherlands</option>
                                  <option value="ANT">Netherlands Antilles</option>
                                  <option value="NCL">New Caledonia</option>
                                  <option value="NZL">New Zealand</option>
                                  <option value="NIC">Nicaragua</option>
                                  <option value="NER">Niger</option>
                                  <option value="NGA">Nigeria</option>
                                  <option value="NIU">Niue</option>
                                  <option value="NFK">Norfolk Island</option>
                                  <option value="MNP">Northern Mariana Islands</option>
                                  <option value="MOR">Norway</option>
                                  <option value="OMN">Oman</option>
                                  <option value="PAK">Pakistan</option>
                                  <option value="PLW">Palau</option>
                                  <option value="PAN">Panama</option>
                                  <option value="PNG">Papua New Guinea</option>
                                  <option value="PRY">Paraguay</option>
                                  <option value="PER">Peru</option>
                                  <option value="PHL">Philippines</option>
                                  <option value="PCN">Pitcairn</option>
                                  <option value="POL">Poland</option>
                                  <option value="PRT">Portugal</option>
                                  <option value="PRI">Puerto Rico</option>
                                  <option value="QAT">Qatar</option>
                                  <option value="REU">Reunion</option>
                                  <option value="ROM">Romania</option>
                                  <option value="RUS">Russian Federation</option>
                                  <option value="RWA">Rwanda</option>
                                  <option value="KNA">Saint Kitts and Nevis</option>
                                  <option value="LCA">Saint Lucia</option>
                                  <option value="VCT">Saint Vincent and the Grenadines</option>
                                  <option value="WSM">Samoa</option>
                                  <option value="SMR">San Marino</option>
                                  <option value="STP">Sao Tome and Principe</option>
                                  <option value="SAU">Saudi Arabia</option>
                                  <option value="SEN">Senegal</option>
                                  <option value="SYC">Seychelles</option>
                                  <option value="SLE">Sierra Leone</option>
                                  <option value="SGP">Singapore</option>
                                  <option value="SVK">Slovakia (Slovak Republic)</option>
                                  <option value="SVN">Slovenia</option>
                                  <option value="SLB">Solomon Islands</option>
                                  <option value="SOM">Somalia</option>
                                  <option value="ZAF">South Africa</option>
                                  <option value="SGS">South Georgia and the South Sandwich Islands</option>
                                  <option value="ESP">Spain</option>
                                  <option value="LKA">Sri Lanka</option>
                                  <option value="SHN">St. Helena</option>
                                  <option value="SPM">St. Pierre and Miquelon</option>
                                  <option value="SDN">Sudan</option>
                                  <option value="SUR">Suriname</option>
                                  <option value="SJM">Svalbard and Jan Mayen Islands</option>
                                  <option value="SWZ">Swaziland</option>
                                  <option value="SWE">Sweden</option>
                                  <option value="CHE">Switzerland</option>
                                  <option value="SYR">Syrian Arab Republic</option>
                                  <option value="TWN">Taiwan</option>
                                  <option value="TJK">Tajikistan</option>
                                  <option value="TZA">Tanzania, United Republic of</option>
                                  <option value="THA">Thailand</option>
                                  <option value="TGO">Togo</option>
                                  <option value="TKL">Tokelau</option>
                                  <option value="TON">Tonga</option>
                                  <option value="TTO">Trinidad and Tobago</option>
                                  <option value="TUN">Tunisia</option>
                                  <option value="TUR">Turkey</option>
                                  <option value="TKM">Turkmenistan</option>
                                  <option value="TCA">Turks and Caicos Islands</option>
                                  <option value="TUV">Tuvalu</option>
                                  <option value="UGA">Uganda</option>
                                  <option value="UKR">Ukraine</option>
                                  <option value="ARE">United Arab Emirates</option>
                                  <option value="UMI">United States Minor Outlying Islands</option>
                                  <option value="URY">Uruguay</option>
                                  <option value="UZB">Uzbekistan</option>
                                  <option value="VUT">Vanuatu</option>
                                  <option value="VAT">Vatican City State (Holy See)</option>
                                  <option value="VEN">Venezuela</option>
                                  <option value="VNM">Viet Nam</option>
                                  <option value="VGB">Virgin Islands (British)</option>
                                  <option value="VIR">Virgin Islands (U.S.)</option>
                                  <option value="WLF">Wallisw and Futuna Islands</option>
                                  <option value="ESH">Western Sahara</option>
                                  <option value="YEM">Yeman</option>
                                  <option value="YUG">Yugoslavia</option>
                                  <option value="ZAR">Zaire</option>
                                  <option value="ZMB">Zambia</option>
                                  <option value="ZWE">Zimbabwe</option>
                                  <option value="UNK">Not Listed</option>
                          </select>
                           </td>
                      </tr>
                                
                                <tr>
                                  <td class="data">Comments</td>
                                  <td> <asp:TextBox ID="comments" TextMode="MultiLine" Wrap="true" Columns="30" Rows="6" runat="server"></asp:TextBox></td>
                                  
                                </tr>
                                <tr>
                                  <td colspan="2"><label> </label>
                                      <div align="center">
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                        
                                         <asp:Button ID="imgbtnContinue" runat="server" Text="Submit" OnClick="imgbtnContinue_Click"> </asp:Button> 
                                    </div></td>
                                </tr>
                                <tr>
                                  <td colspan="2" id="tderr" runat="server"></td>
                                </tr>
                              </tbody>
                          </table></td>
                        </tr>
                      </tbody>
                    </table></td>
                    
                    </tr>
              </table>
            
            </td>
                  
              </table>
            
            </td>
          </tr>
		  <tr><td height="03px" colspan="2"></td></tr>
		  
		  
		  <tr>
    <td align="center" class="footer" style="background-image:url(images/menubg.jpg); height:50px; background-repeat:repeat-x">
		<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="center" style="padding-top:10px" colspan="3">
    
    <uc2:FooterMenu ID="FooterMenu1" runat="server" />
    </td>
  
  </tr>
</table>

    	
    	</td>
  </tr>
		   
   
</table>

    </form>
</center>
</body>
</html>
