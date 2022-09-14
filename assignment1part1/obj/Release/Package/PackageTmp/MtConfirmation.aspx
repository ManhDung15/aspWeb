<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtConfirmation.aspx.cs" Inherits="assignment1part1.MtConfirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <br />
            <hr />
            <div> <!-- used to show customer information -->
                <asp:TextBox ID="txtData" runat="server" TextMode="MultiLine" 
                    Columns="50" Rows="25"></asp:TextBox>  
            </div>
            <hr />
            <div>
                <h3>Purchased Products</h3> <br />
                <asp:ListBox ID="lstbxItem" runat="server" Width="543px" Height="125px"></asp:ListBox>
            </div>
            <div>
                <h2>Thank you for shopping with us</h2>
            </div>
            <div>
                <asp:Button ID="btnContinue" runat="server"
                    PostBackUrl="~/MtOrder.aspx" Text="Continue Shopping" CssClass="btnorder" Height="62px" Width="281px" />
            </div>
    </div>
</asp:Content>
