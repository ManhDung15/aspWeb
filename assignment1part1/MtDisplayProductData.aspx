<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtDisplayProductData.aspx.cs" Inherits="assignment1part1.MtDisplayProductData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <h3>Display data in DropDownList from product database table, <br />
                Populate GridView using selected item in DropDownList.
            </h3>
        <h1>Search product by categoryID in DropDownList</h1>
        </div>
        <asp:DropDownList ID="ddlData1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CategoryID" DataValueField="ProductID" OnSelectedIndexChanged="ddlData1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [Description], [Price], [Quantity], [CategoryID] FROM [Product]"></asp:SqlDataSource>
        <p>GridView to display data from DDL</p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <p>
            grid table to display table data
        </p>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
            </Columns>
        </asp:GridView>
</asp:Content>
