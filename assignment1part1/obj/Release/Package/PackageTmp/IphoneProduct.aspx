<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IphoneProduct.aspx.cs" Inherits="assignment1part1.IphoneProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Website</title>
    <link rel="stylesheet" href="CSS/Stylesheet1.css" type="text/css" />
    <style type="text/css">
        .auto-style13 {
            height: 488px;
            width: 442px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id ="wrapper"> <!-- wrap all webpage content in a wrapper with css -->
                <div>
                    <h1><asp:HyperLink runat="server" NavigateUrl="~/Index.aspx">BLUE ELECTRO</asp:HyperLink></h1> <!--company name at the top left conner -->
                </div>
                <div id="banner"> <!--image banner -->
                    <asp:Image ID="Image1" runat="server" Height="268px" ImageUrl="~/images/banner.jpg" Width="100%" />
                </div>
                <div id="navigation"><!-- navigtion the unorder list and use css to make it inline -->
                    <ul id="nav"> <!--using hyperrlink to link pages-->
                        <li><asp:HyperLink runat="server" NavigateUrl="~/ProductPage.aspx">PRODUCT</asp:HyperLink></li> <!--float to left-->
                        <li><asp:HyperLink runat="server" NavigateUrl="~/About.aspx">ABOUT US</asp:HyperLink></li>
                        <li><asp:HyperLink runat="server" NavigateUrl="~/Contact.aspx">CONTACT</asp:HyperLink></li>
                        <li><asp:HyperLink runat="server" NavigateUrl="~/Search.aspx">SEARCH</asp:HyperLink></li>
                        <!-- button login and shopping cart is float on right -->
                                                
                        <li style="float:right"> 
                            <asp:HyperLink runat="server" NavigateUrl="~/Cart.aspx">CART</asp:HyperLink> <!--float to right-->
                        </li>
                        <li style="float:right">
                            <asp:HyperLink runat="server" NavigateUrl="~/Logout.aspx">LOGOUT</asp:HyperLink>
                        </li>
                        
                    </ul>

                </div>
                <div id ="content"> <!--welcome content -->
                    <p>>~~> welcome to blue electro <~~<</p>
                </div>
                <div id="productdisplay">
                    <table style="text-align:left; margin-left: 5px;" width:100%> <!--inline styles in tables-->
                        <tr> <!--1 row with 2 columns including an image and important-->
                            <td><img src="images/iphone12.jpg" class="auto-style13" /></td>
                            <td style="vertical-align:top">
                                    <p>Home/Mobile Phone</p>
                                    <h1>IPHONE 12 PRO</h1><!--droplist model color and capacity-->
                                    <h4>Model <br /> <asp:DropDownList ID="DropDownList3" runat="server">
                                        <asp:ListItem>Iphone 12 Pro</asp:ListItem>
                                        <asp:ListItem>Iphone 12 Pro Max</asp:ListItem>
                                        </asp:DropDownList></h4>
                                    <h4>Color<br /> <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="201px">
                                        <asp:ListItem>Silver</asp:ListItem>
                                        <asp:ListItem>Gold</asp:ListItem>
                                        <asp:ListItem>Graphite</asp:ListItem>
                                        </asp:DropDownList></h4>
                                    <h4>Capacity<br /> <asp:DropDownList ID="DropDownList2" runat="server" Height="21px" Width="203px">
                                        <asp:ListItem>128GB</asp:ListItem>
                                        <asp:ListItem>256GB</asp:ListItem>
                                        <asp:ListItem>512GB</asp:ListItem>
                                        </asp:DropDownList></h4>
                                    <h4>&nbsp;From $1500</h4><!-- button to go to cart-->
                                    <h3><asp:Button ID="Button1" runat="server" Text="ADD TO CARD" Font-Bold="True" Font-Size="Large" ForeColor="#0099FF" Height="76px" Width="318px" OnClick="Button1_Click" /></h3>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="copy-right text-center"> <!--copy right sentence at the end of the webpage --> 
			        <p>Copyright 2021 - blueelectro@gmail.com - Electronic Website<br/> 
                        <a href=#> <strong> Welcome </strong> </a></p>	
		        </div>
           </div>

        </div>
        
    </form>
</body>
</html>
