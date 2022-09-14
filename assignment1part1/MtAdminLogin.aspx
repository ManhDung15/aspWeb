<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtAdminLogin.aspx.cs" Inherits="assignment1part1.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Admin Login</h1>
    <div>
        <asp:Label ID="lblAccount" runat="server" Text="Admin Acount"></asp:Label> <br />
        <asp:TextBox ID="txtbxAccount" runat="server" Height="38px" Width="257px"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="lblPassword" runat="server" Text="Admin Password"></asp:Label> <br />
        <asp:TextBox ID="txtbxPassword" runat="server" Height="38px" Width="257px"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="lblCheck" runat="server" ForeColor="Red" Text="*" Display="Dynamic"></asp:Label>
        <asp:Label ID="lblTry" runat="server" ForeColor="Red" Text="*" Display="Dynamic"></asp:Label>
    </div>

    <div>
        <asp:Button ID="btnOk" runat="server" Text="Login as Admin" CssClass="btnorder" OnClick="btnOk_Click" />
    </div>
    
</asp:Content>
