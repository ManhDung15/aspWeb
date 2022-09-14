<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtOrder.aspx.cs" Inherits="assignment1part1.MtOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="neworder">
                    <div>
                        <h1>Shopping items by choosing fields from DropDownList</h1>
                    </div>
                    <div class="ddlorder">
                        <div>
                            <h3>Select products</h3>
                        </div>
                        <!-- choose product from DDL and display in label -->
                        <div> 
                            <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ProductName" DataValueField="ProductID">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [Description], [ImageFile], [UnitPrice] FROM [NProducts]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="contain">
                        <div class="leftcolumn">
                            <p class="auto-style16">
                                <asp:Image ID="imgProduct" runat="server" Height="450px" Width="450px" />
                            </p>
                        </div>
                        <div class="rightcolumn">
                            <div class="productdes">
                                <h3>Electronic Device</h3>
                                <h1><asp:Label ID="lblName" runat="server" Text="Product's Name"></asp:Label></h1>
                                <p>
                                    <asp:Label ID="lblDescription" runat="server" Text="Product's Description"></asp:Label>
                                </p>
                            </div>
                            <div class="productquan">
                                <p>
                                    <asp:Label ID="lblQuantity" runat="server" Text="Enter Quantity"></asp:Label>
                                </p>
                                <p>
                                    <asp:TextBox ID="txtbxQuantity" runat="server" Height="42px" Width="348px"></asp:TextBox>
                                </p>
                                <div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger"
                                       runat="server" ControlToValidate="txtbxQuantity" Display="Dynamic" 
                                       ErrorMessage="Quantity is a compulsory field." ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="text-danger" 
                                       ControlToValidate="txtbxQuantity" Display="Dynamic" 
                                       ErrorMessage="Quantity must range from 1 to 500."
                                       MaximumValue="500" MinimumValue="1" Type="Integer" ForeColor="Red"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="productprice">
                                <p>
                                    <asp:Label ID="lblPrice" runat="server" Text="Product's Price"></asp:Label>
                           
                                </p>            
                            </div>
                            <div> 
                                <asp:Button ID="btnAdd" runat="server" Text="Add To Cart" OnClick="btnAdd_Click" Height="58px" Width="173px"  CssClass="btnorder" />
                                <asp:Button ID="btnGo" runat="server" Text="Go to Cart" PostBackUrl="~/MtCart.aspx" Height="58px" Width="173px" CssClass="btnorder" />
                            </div>      
                        </div>
                    </div>
    </div>
</asp:Content>
