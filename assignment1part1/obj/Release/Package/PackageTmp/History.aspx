<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="assignment1part1.History" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Website</title>
    <link rel="stylesheet" href="CSS/Stylesheet1.css" type="text/css" />
    <style type="text/css">
        .auto-style3 {
            height: 65px;
        }
        .auto-style6 {
            height: 78px;
        }
        .auto-style12 {
            width: 1260px;
            background-color: lightblue;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 17px;
            height: 496px;
        }
        .auto-style13 {
            height: 72px;
        }
        .auto-style22 {
            width: 896px;
        }
        .auto-style23 {
            width: 220px;
            height: 65px;
        }
        .auto-style24 {
            width: 220px;
            height: 78px;
        }
        .auto-style25 {
            width: 220px;
            height: 72px;
        }
        .auto-style26 {
            width: 330px;
            height: 65px;
        }
        .auto-style27 {
            width: 330px;
            height: 78px;
        }
        .auto-style28 {
            width: 330px;
            height: 72px;
        }
        .auto-style29 {
            width: 329px;
            height: 65px;
        }
        .auto-style30 {
            width: 329px;
            height: 78px;
        }
        .auto-style31 {
            width: 329px;
            height: 72px;
        }
        .auto-style32 {
            width: 394px;
            height: 65px;
        }
        .auto-style33 {
            width: 394px;
            height: 78px;
        }
        .auto-style34 {
            width: 394px;
            height: 72px;
        }
        .auto-style35 {
            width: 311px;
            height: 65px;
        }
        .auto-style38 {
            width: 276px;
            height: 65px;
        }
        .auto-style39 {
            width: 276px;
            height: 78px;
        }
        .auto-style40 {
            width: 276px;
            height: 72px;
        }
        .auto-style41 {
            width: 173px;
            height: 78px;
        }
        .auto-style42 {
            width: 173px;
            height: 72px;
        }
        .auto-style43 {
            width: 377px;
            height: 78px;
        }
        .auto-style44 {
            width: 377px;
            height: 72px;
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
                    <asp:Image ID="Image4" runat="server" Height="268px" ImageUrl="~/images/banner.jpg" Width="100%" />
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
                <div class="auto-style12">
                    <h1 class="auto-style22">Purchase History</h1>
                    <table id="history">
                        <tr>
                            <th class="auto-style38">Order ID</th>
                            <th class="auto-style35" colspan="2">Product</th>
                            <th class="auto-style32">Order Date</th>
                            <th class="auto-style29">Payment Status</th>
                            <th class="auto-style26">Shipping status</th>
                            <th class="auto-style23">Total</th>
                            <th class="auto-style3"></th>
                        </tr>
                        <tr>
                            <td class="auto-style39">BCO99</td>
                            <td class="auto-style41"><asp:Image ID="Image1" runat="server" Height="65px" ImageUrl="~/images/asus.jpg" Width="82px" /></td>
                            <td class="auto-style43">ASUS</td>
                            <td class="auto-style33">14/2/2021</td>
                            <td class="auto-style30">Paid</td>
                            <td class="auto-style27">Pending</td>
                            <td class="auto-style24">$1500</td>
                            <td class="auto-style6"><asp:Button ID="Button1" runat="server" Text="Delete" Width="100%" /></td>
                        </tr>
                        <tr>
                            <td class="auto-style39">BPH93</td>
                            <td class="auto-style41"><asp:Image ID="Image2" runat="server" Height="69px" ImageUrl="~/images/iphone12.jpg" Width="82px" /></td>
                            <td class="auto-style43">Iphone</td>
                            <td class="auto-style33">12/12/2020</td>
                            <td class="auto-style30">Paid</td>
                            <td class="auto-style27">Completed</td>
                            <td class="auto-style24">$1500</td>
                            <td class="auto-style6"><asp:Button ID="Button2" runat="server" Text="Delete" Width="100%" /></td>
                        </tr>
                        <tr>
                            <td class="auto-style40">BCA65</td>
                            <td class="auto-style42"><asp:Image ID="Image3" runat="server" Height="65px" ImageUrl="~/images/canon.jpg" Width="82px" /></td>
                            <td class="auto-style44">Canon</td>
                            <td class="auto-style34">24/11/2020</td>
                            <td class="auto-style31">Paid</td>
                            <td class="auto-style28">Completed</td>
                            <td class="auto-style25">$2000</td>
                            <td class="auto-style13"><asp:Button ID="Button3" runat="server" Text="Delete" /></td>
                        </tr>
                    </table>
                    <p>page 1 of 1</p>
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
