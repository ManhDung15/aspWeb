<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="assignment1part1.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Website</title>
    <link rel="stylesheet" href="CSS/Stylesheet1.css" type="text/css" />
    <style type="text/css">
        .auto-style13 {
            width: 350px;
            background-color: lightblue;
            margin-left: auto;
            margin-right: auto;
            margin-top: 36px;
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
                <div class="auto-style13"> <!--create 7 box for 7 different styles in css-->
                    <div class="box1">
                        <h1 style="color:yellow; background-color: red;">CHECKOUT</h1>
                    </div>
                    <div class="box2">
                        <h2>total</h2>
                        <h3>$1500</h3>               
                    </div>
                    <div class="box3"> <!--combine 2 method payment button in 1 line-->
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="108px" ImageUrl="~/images/visa.jpg" Width="170px" OnClick="ImageButton1_Click" />
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="108px" ImageUrl="~/images/master.jpg" Width="170px" />
                    </div>
                    <div class="box4">
                        <p>Card Number</p>
                        <asp:TextBox ID="TextBox1" runat="server" Width="349px" Height="40px">1234 1234 1234 1234</asp:TextBox>
                    </div>
                    <div class="box5"> <!-- expery date and ccv in 1 line -->
                        <p>Expiry Date</p>
                        <asp:TextBox ID="TextBox2" runat="server" Width="170px" Height="40px">MM/YYYY</asp:TextBox>
                    </div>
                    <div class="box6">
                        <p>CVV or CVC</p>
                        <asp:TextBox ID="TextBox3" runat="server" Width="170px" Height="40px">123</asp:TextBox>
                    </div>
                    <div class="box7">
                        <p>Card Holder Name</p>
                        <asp:TextBox ID="TextBox4" runat="server" Width="349px" Height="40px">Full Name</asp:TextBox>
                    </div>
                    <div class="box7"> <!-- confirm payment-->
                        <asp:Button ID="Button1" runat="server" Text="CONFIRM" Font-Bold="True" Font-Size="Large" ForeColor="Red" Height="60px" Width="349px" OnClick="Button1_Click" />
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
