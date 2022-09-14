<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="assignment1part1.ProductPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Website</title>
    <link rel="stylesheet" href="CSS/Stylesheet1.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id ="wrapper">
                <div>
                    <h1>BLUE ELECTRO</h1>
                </div>
                <div id="banner">
                    <asp:Image ID="Image1" runat="server" Height="268px" ImageUrl="~/images/banner.jpg" Width="100%" />
                </div>
                <div id="navigation">
                    <ul id="nav">
                        <li><asp:HyperLink runat="server" NavigateUrl="~/Index.aspx">PRODUCT</asp:HyperLink></li>
                        <li><asp:HyperLink runat="server" NavigateUrl="~/About.aspx">ABOUT US</asp:HyperLink></li>
                        <li><asp:HyperLink runat="server" NavigateUrl="~/Contact.aspx">CONTACT</asp:HyperLink></li>
                        <li><asp:HyperLink runat="server" NavigateUrl="~/Search.aspx">SEARCH</asp:HyperLink></li>
                        <!-- button login and shopping cart is float on right -->
                                                
                        <li style="float:right"> 
                            <asp:HyperLink runat="server" NavigateUrl="~/Cart.aspx">CART</asp:HyperLink>
                        </li>
                        <li style="float:right">
                            <asp:HyperLink runat="server" NavigateUrl="~/Logout.aspx">LOGOUT</asp:HyperLink>
                        </li>
                        
                    </ul>

                </div>
                <div id ="content">
                    <p>~~> welcome <~~</p>
                </div>
                
                <div>
                    <!-- product card-->
                    <h2 style="color:yellow; text-align:center; background-color:red;">Special Offers</h2>

                    
                </div>
                <table style="width:100%;"> <!-- arrange in a table -->
                  <tr>
                    <td>Mobile Phone<br />
                        <div class="card"> <!--product card in an order. I refer from https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_product_card -->
                          <img src="/images/iphone12.jpg" alt="Iphone 12" style="height: 200px; width: 180px" />
                          <h1><asp:HyperLink runat="server" NavigateUrl="~/IphoneProduct.aspx">IPHONE 12 PRO</asp:HyperLink></h1>
                          <p class="price">$1500</p>
                          <p>The newest Iphone 12. A14 Bionic chip with 5G</p>
                          <p><button>Add to Cart</button></p>
                        </div>
                    </td>
                    <td>Laptop<br />
                        <div class="card">
                          <img src="/images/asus.jpg" alt="Laptop Asus" style="height: 200px; width: 180px"/>
                          <h1><asp:HyperLink runat="server" NavigateUrl="~/IphoneProduct.aspx">ASUS</asp:HyperLink></h1>
                          <p class="price">$1000</p>
                          <p>The fastest. Core i5 chip 10th Gen with many colors </p>
                          <p><button>Add to Cart</button></p>
                        </div>
                    </td>

                    <td>Television<br />
                        <div class="card">
                          <img src="/images/lgtv.jpg" alt="Television LG" style="height: 200px; width: 180px" />
                          <h1><asp:HyperLink runat="server" NavigateUrl="~/IphoneProduct.aspx">TELEVISION</asp:HyperLink></h1>
                          <p class="price">$800</p>
                          <p>The LED screen Technology. HD 4k Smart LED TV</p>
                          <p><button>Add to Cart</button></p>
                        </div>
                    </td>
                  </tr>
                </table>
                <div class="copy-right text-center"> <!-- copyright sentence -->
			        <p>Copyright 2021 - Electronic Website - blueelectro@gmail.com<br/> 
                        <a href=#> <strong> Welcome </strong> </a></p>	
		        </div>
            </div>
        </div>
        
    </form>
</body>
</html>
