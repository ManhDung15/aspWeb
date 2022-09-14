<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtLogin.aspx.cs" Inherits="assignment1part1.NewLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login">
        <h1>Login</h1>
        <h3>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/MtAdminLogin.aspx">Login as Admin</asp:HyperLink>
        </h3>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MtRegister.aspx">Register account</asp:HyperLink>
        <asp:Login ID="Login1" runat="server" Width="375px" OnAuthenticate="ValidateUser"></asp:Login>
    </div>  <!-- use login tools in Toolbox-->
</asp:Content>
