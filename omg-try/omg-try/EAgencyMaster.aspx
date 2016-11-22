<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EAgencyMaster.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Electronix Store</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 846px;
        }
    </style>
    </head>
    
<body>
    <form id="form1" runat="server">
   <div id="main_container">
  <div class="top_bar">
    <div class="top_search">
      <div class="search_text"><a href="http://all-free-download.com/free-website-templates/">Advanced Search</a></div>
      <input type="text" class="search_input" name="search" />
      <input type="image" src="images/search.gif" class="search_bt"/>
    </div>
    <div class="languages">
      <div class="lang_text">Languages:</div>
      <a href="http://all-free-download.com/free-website-templates/" class="lang"><img src="images/en.gif" alt="" border="0" /></a> <a href="http://all-free-download.com/free-website-templates/" class="lang"><img src="images/de.gif" alt="" border="0" /></a> </div>
  </div>
  <div id="header">
    <div id="logo"> <a href="http://all-free-download.com/free-website-templates/"><img src="images/logo.png" alt="" border="0" width="237" height="140" /></a> </div>
    <div class="oferte_content">
      <div class="top_divider"><img src="images/header_divider.png" alt="" width="1" height="164" /></div>
      <div class="oferta">
        <div class="oferta_content"> <img src="images/laptop.png" width="94" height="92" alt="" border="0" class="oferta_img" />
          <div class="oferta_details">
            <div class="oferta_title">Samsung GX 2004 LM</div>
            <div class="oferta_text"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco </div>
            <a href="details.html" class="details">details</a> </div>
        </div>
        <div class="oferta_pagination"> <span class="current">1</span> <a href="http://all-free-download.com/free-website-templates/">2</a> <a href="http://all-free-download.com/free-website-templates/">3</a> <a href="http://all-free-download.com/free-website-templates/">4</a> <a href="http://all-free-download.com/free-website-templates/">5</a> </div>
      </div>
      <div class="top_divider"><img src="images/header_divider.png" alt="" width="1" height="164" /></div>
    </div>
    <!-- end of oferte_content-->
  </div>
  <div id="main_content">
    <div id="menu_tab">
      <div class="left_menu_corner"></div>
      <ul class="menu">
              <li><a href="http://all-free-download.com/free-website-templates/" class="nav1"> Home</a></li>
        <li class="divider"></li>
        <li><a href="http://all-free-download.com/free-website-templates/" class="nav2">Products</a></li>
        <li class="divider"></li>
        <li><a href="http://all-free-download.com/free-website-templates/" class="nav3">Specials</a></li>
        <li class="divider"></li>
        <li><a href="http://all-free-download.com/free-website-templates/" class="nav4">My account</a></li>
        <li class="divider"></li>
        <li><a href="http://all-free-download.com/free-website-templates/" class="nav4">Sign Up</a></li>
        <li class="divider"></li>
        <li><a href="http://all-free-download.com/free-website-templates/" class="nav5">Shipping</a></li>
        <li class="divider"></li>
        <li><a href="contact.html" class="nav6">Contact Us</a></li>
        <li class="divider"></li>
        <li class="currencies">Currencies        </li>
      </ul>
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div>
    <!-- end of left content -->
    <div class="center_content">
      <div class="center_title_bar">
        <p>Register Of PurchaseGoods</p>
        <table width="419" height="41" border="0">
          <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style2">
                        <div style ="width:740px;overflow:auto ;">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource1" AllowSorting="True">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                                        SortExpression="Id" />
                                    <asp:BoundField DataField="AgencyName" HeaderText="AgencyName" 
                                        SortExpression="AgencyName" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" 
                                        SortExpression="Address" />
                                    <asp:BoundField DataField="EmailId" HeaderText="EmailId" 
                                        SortExpression="EmailId" />
                                    <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                                        SortExpression="ContactNo" />
                                    <asp:BoundField DataField="OtherNo" HeaderText="OtherNo" 
                                        SortExpression="OtherNo" />
                                    <asp:CommandField ShowEditButton="True" />
                                    <asp:CommandField ShowDeleteButton="True" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MobileConnectionString2 %>" 
                                SelectCommand="SELECT * FROM [tblAgencyMaster]" 
                                ConflictDetection="CompareAllValues" 
                                DeleteCommand="DELETE FROM [tblAgencyMaster] WHERE [Id] = @original_Id AND [AgencyName] = @original_AgencyName AND [Address] = @original_Address AND [EmailId] = @original_EmailId AND [ContactNo] = @original_ContactNo AND [OtherNo] = @original_OtherNo" 
                                InsertCommand="INSERT INTO [tblAgencyMaster] ([Id], [AgencyName], [Address], [EmailId], [ContactNo], [OtherNo]) VALUES (@Id, @AgencyName, @Address, @EmailId, @ContactNo, @OtherNo)" 
                                OldValuesParameterFormatString="original_{0}" 
                                
                                UpdateCommand="UPDATE [tblAgencyMaster] SET [AgencyName] = @AgencyName, [Address] = @Address, [EmailId] = @EmailId, [ContactNo] = @ContactNo, [OtherNo] = @OtherNo WHERE [Id] = @original_Id AND [AgencyName] = @original_AgencyName AND [Address] = @original_Address AND [EmailId] = @original_EmailId AND [ContactNo] = @original_ContactNo AND [OtherNo] = @original_OtherNo">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_Id" Type="Int32" />
                                    <asp:Parameter Name="original_AgencyName" Type="String" />
                                    <asp:Parameter Name="original_Address" Type="String" />
                                    <asp:Parameter Name="original_EmailId" Type="String" />
                                    <asp:Parameter Name="original_ContactNo" Type="Decimal" />
                                    <asp:Parameter Name="original_OtherNo" Type="Decimal" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="AgencyName" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="EmailId" Type="String" />
                                    <asp:Parameter Name="ContactNo" Type="Decimal" />
                                    <asp:Parameter Name="OtherNo" Type="Decimal" />
                                    <asp:Parameter Name="original_Id" Type="Int32" />
                                    <asp:Parameter Name="original_AgencyName" Type="String" />
                                    <asp:Parameter Name="original_Address" Type="String" />
                                    <asp:Parameter Name="original_EmailId" Type="String" />
                                    <asp:Parameter Name="original_ContactNo" Type="Decimal" />
                                    <asp:Parameter Name="original_OtherNo" Type="Decimal" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Id" Type="Int32" />
                                    <asp:Parameter Name="AgencyName" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="EmailId" Type="String" />
                                    <asp:Parameter Name="ContactNo" Type="Decimal" />
                                    <asp:Parameter Name="OtherNo" Type="Decimal" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                            </div>
                        </td>
                    </tr>
                </table>
            &nbsp;<asp:Button ID="btnexcel" runat="server" Text="Excel" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        onclientclick="#" PostBackUrl="#" Width="64px" /> &nbsp;&nbsp;
                    <asp:Button ID="btnprint" runat="server" Text="Print" 
                        BackColor="#6EA7B1" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="White" 
                        onclientclick="#" PostBackUrl="#" Width="64px" /> </td>
          </tr>
        </table>
        <p>&nbsp;</p>
        <p><br />
        </p>
        <p>&nbsp;</p>
      </div>
      </div>
     </div>
    <!-- end of center content -->
    <!-- end of right content -->
   </div>
   <!-- end of main content -->
   </div>
   <!-- end of main_container -->
    </form>
</body>
</html>
