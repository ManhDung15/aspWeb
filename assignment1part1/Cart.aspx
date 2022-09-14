<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="assignment1part1.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Website</title>
    <link rel="stylesheet" href="CSS/Stylesheet1.css" type="text/css" />
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
                <div>
                    <div class="smallc cartpage"> <!--use uss to style-->
                        <table style="width:100%; border-collapse:collapse;"> <!--using table to list product display -->
                            <tr>
                                <th>Product</th> <!--3 table head so have 3 table data -->
                                <th>Quantity</th>
                                <th>Subtotal</th>
                            </tr>
                            <tr>
                                <td> <!--first product name and image and drop list and price -->
                                    <div class="infocart">
                                        <img src="images/iphone12.jpg" style="height: 155px; width: 139px; margin:10px" />
                                        <div>
                                            <p>Iphone 12 Pro</p>
                                            <p>Price: $1500</p>
                                            <asp:Button ID="btnRemove" runat="server" Text="Remove" />
                                        </div>
                                    </div>
                                </td> <!--dropdownlist to list number of item 1 to 10-->                 
                                <td><asp:DropDownList ID="ddlCart" runat="server">
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
                                    </asp:DropDownList></td>
                                <td>$1500</td>             
                            </tr>
                            <tr>
                                <td>
                                    <div class="infocart"> <!--second product name and image and drop list and price -->
                                        <img src="images/lgtv.jpg" style="height: 155px; width: 139px; margin:10px" />
                                        <div>
                                            <p>TV LG FullHD 4K</p>
                                            <p>Price: $2000</p>
                                            <asp:Button ID="Button1" runat="server" Text="Remove" />
                                        </div>
                                    </div>
                                </td> <!--dropdownlist to list number of item 1 to 10-->                
                                <td><asp:DropDownList ID="DropDownList1" runat="server"> 
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
                                    </asp:DropDownList></td>
                                <td>$2000</td>             
                            </tr> 
                            <tr>
                                <td>
                                    <div class="infocart"> <!--third product name and image and drop list and price -->
                                        <img src="images/asus.jpg" style="height: 155px; width: 139px; margin:10px" />
                                        <div>
                                            <p>Asus Vivobook</p>
                                            <p>Price: $1000</p>
                                            <asp:Button ID="Button2" runat="server" Text="Remove" />
                                        </div>
                                    </div>
                                </td> <!--dropdownlist to list number of item 1 to 10-->                
                                <td><asp:DropDownList ID="DropDownList2" runat="server"> 
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
                                    </asp:DropDownList></td>
                                <td>$1000</td>             
                            </tr> 
                        
                        </table>
                        <div class="totalprice"> <!--calculate all 3 product price with table-->
                            <table>
                                <tr>
                                    <td>TOTAL</td>
                                    <td>$4500</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><asp:Button ID="Button3" runat="server" Text="Payment" Font-Bold="True" Font-Size="Larger" ForeColor="#0066CC" Height="123px" Width="395px" OnClick="Button3_Click" /></td>
                                    <!--click button to payment page-->
                                </tr>
                            </table>

                        </div>
                    </div>
                </div>
                <div class="copy-right text-center"> <!--copy right sentence at the end of the webpage --> 
			        <p>Copyright 2021 - blueelectro@gmail.com - Electronic Website<br/> 
                        <a href="#"> <strong> Welcome </strong> </a></p>	
		        </div>
           </div>

        </div>
        
    </form>
</body>
</html>
