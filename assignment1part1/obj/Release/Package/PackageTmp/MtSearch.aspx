<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtSearch.aspx.cs" Inherits="assignment1part1.MtSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div> <!-- create a search box with a search text and  button link to product page-->
                    <h1 style="color:red;">Search items</h1>
                    <asp:TextBox ID="txbxSearch" runat="server" Height="46px" Width="379px">Search entire store here...</asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" Height="48px" Width="107px" OnClick="btnSearch_Click" />
    </div>
</asp:Content>
