<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtProductDB.aspx.cs" Inherits="assignment1part1.MtProductDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="manadb">
                    <h1>Product Database Management</h1>
                    <h3>     
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MtDisplayProductData.aspx">See in different view</asp:HyperLink>
                    </h3>
                    <div class="manatb">        
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="789px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Product] ([ProductID], [ProductName], [Description], [Price], [Quantity], [CategoryID]) VALUES (@ProductID, @ProductName, @Description, @Price, @Quantity, @CategoryID)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [Description] = @Description, [Price] = @Price, [Quantity] = @Quantity, [CategoryID] = @CategoryID WHERE [ProductID] = @ProductID">
                            <DeleteParameters>
                                <asp:Parameter Name="ProductID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ProductID" Type="Int32" />
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="Price" Type="Decimal" />
                                <asp:Parameter Name="Quantity" Type="Int32" />
                                <asp:Parameter Name="CategoryID" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="Price" Type="Decimal" />
                                <asp:Parameter Name="Quantity" Type="Int32" />
                                <asp:Parameter Name="CategoryID" Type="String" />
                                <asp:Parameter Name="ProductID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <h2>Insert New Data</h2>
                        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="793px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                                <asp:CommandField ShowInsertButton="True" />
                            </Fields>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                        </asp:DetailsView>
                    </div>
    </div>
</asp:Content>
