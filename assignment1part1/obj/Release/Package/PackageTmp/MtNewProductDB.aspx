<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtNewProductDB.aspx.cs" Inherits="assignment1part1.MtNewProductDB1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>New product database</h1>
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="ImageFile" HeaderText="ImageFile" SortExpression="ImageFile" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
            <asp:BoundField DataField="QtyOnHand" HeaderText="QtyOnHand" SortExpression="QtyOnHand" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [NProducts] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [NProducts] ([ProductID], [ProductName], [Description], [ImageFile], [UnitPrice], [QtyOnHand], [CategoryID]) VALUES (@ProductID, @ProductName, @Description, @ImageFile, @UnitPrice, @QtyOnHand, @CategoryID)" SelectCommand="SELECT * FROM [NProducts]" UpdateCommand="UPDATE [NProducts] SET [ProductName] = @ProductName, [Description] = @Description, [ImageFile] = @ImageFile, [UnitPrice] = @UnitPrice, [QtyOnHand] = @QtyOnHand, [CategoryID] = @CategoryID WHERE [ProductID] = @ProductID">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="String" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="ImageFile" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="QtyOnHand" Type="Int32" />
            <asp:Parameter Name="CategoryID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="ImageFile" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="QtyOnHand" Type="Int32" />
            <asp:Parameter Name="CategoryID" Type="String" />
            <asp:Parameter Name="ProductID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h3>insert new data</h3>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="556px" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>
</asp:Content>
