<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtOrderDB.aspx.cs" Inherits="assignment1part1.MtOrderDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="manadb">
                    <h1>Order database</h1>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
                            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                            <asp:BoundField DataField="SalesDate" HeaderText="SalesDate" SortExpression="SalesDate" />
                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                            <asp:BoundField DataField="TotalBill" HeaderText="TotalBill" SortExpression="TotalBill" />
                            <asp:BoundField DataField="PaymentType" HeaderText="PaymentType" SortExpression="PaymentType" />
                            <asp:BoundField DataField="ShipDate" HeaderText="ShipDate" SortExpression="ShipDate" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Order] WHERE [OrderID] = @OrderID" InsertCommand="INSERT INTO [Order] ([OrderID], [EmployeeID], [SalesDate], [CustomerID], [TotalBill], [PaymentType], [ShipDate]) VALUES (@OrderID, @EmployeeID, @SalesDate, @CustomerID, @TotalBill, @PaymentType, @ShipDate)" SelectCommand="SELECT * FROM [Order]" UpdateCommand="UPDATE [Order] SET [EmployeeID] = @EmployeeID, [SalesDate] = @SalesDate, [CustomerID] = @CustomerID, [TotalBill] = @TotalBill, [PaymentType] = @PaymentType, [ShipDate] = @ShipDate WHERE [OrderID] = @OrderID">
                        <DeleteParameters>
                            <asp:Parameter Name="OrderID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="OrderID" Type="String" />
                            <asp:Parameter Name="EmployeeID" Type="String" />
                            <asp:Parameter Name="SalesDate" Type="DateTime" />
                            <asp:Parameter Name="CustomerID" Type="String" />
                            <asp:Parameter Name="TotalBill" Type="Double" />
                            <asp:Parameter Name="PaymentType" Type="String" />
                            <asp:Parameter Name="ShipDate" Type="DateTime" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="EmployeeID" Type="String" />
                            <asp:Parameter Name="SalesDate" Type="DateTime" />
                            <asp:Parameter Name="CustomerID" Type="String" />
                            <asp:Parameter Name="TotalBill" Type="Double" />
                            <asp:Parameter Name="PaymentType" Type="String" />
                            <asp:Parameter Name="ShipDate" Type="DateTime" />
                            <asp:Parameter Name="OrderID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <h2>insert new database</h2>
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="795px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
                            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                            <asp:BoundField DataField="SalesDate" HeaderText="SalesDate" SortExpression="SalesDate" />
                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                            <asp:BoundField DataField="TotalBill" HeaderText="TotalBill" SortExpression="TotalBill" />
                            <asp:BoundField DataField="PaymentType" HeaderText="PaymentType" SortExpression="PaymentType" />
                            <asp:BoundField DataField="ShipDate" HeaderText="ShipDate" SortExpression="ShipDate" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
    </div>
</asp:Content>
