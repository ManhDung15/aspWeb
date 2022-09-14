<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtLogout.aspx.cs" Inherits="assignment1part1.NewLogout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
                    <h1 style:"color=red">You are loged out</h1>
                    <h2 style:"color=red">Do you want to go to homepage?</h2>
                    <asp:Button ID="btnOK" runat="server" Text="OK" Height="93px" OnClick="btnOK_Click" Width="272px" Font-Bold="True" Font-Size="XX-Large" ForeColor="Red" />
    </div>
</asp:Content>
