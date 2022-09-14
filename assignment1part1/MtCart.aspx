<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtCart.aspx.cs" Inherits="assignment1part1.MtCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="newCart">
            <div>
                <h1>sumary shopping cart</h1>
            </div>
            <div>
                <asp:HyperLink ID="hlConShop" runat="server" NavigateUrl="~/MtOrder.aspx" BorderStyle="None" Height="32px" Width="184px">Continue Shopping</asp:HyperLink>
            </div>
            <div class="contain">
                <div class="leftcolumn">
                    <div> <!--list purchased items from order page-->
                        <asp:ListBox ID="lstbxCart" runat="server" Width="509px" Height="197px"></asp:ListBox>
                    </div>
                    <div>
                        <asp:Label ID="lblMessage" runat="server" EnableViewState="False" Text="Alert:"></asp:Label>
                    </div>

                    <div>
                        <asp:Button ID="btnCheck" runat="server" Text="Check Out" PostBackUrl="~/MtPayment.aspx" CssClass="btnorder" Height="79px" OnClick="btnCheck_Click1" style="position: relative" Width="205px" />
                    </div>
                </div>
        
                <div class="rightcolumn">
                    <asp:Button ID="btnRemove" runat="server" OnClick="btnRemove_Click" Text="Remove Item" CssClass="btnorder" Height="62px" Width="196px" /> <br />
                    <asp:Button ID="btnEmpty" runat="server" OnClick="btnEmpty_Click" Text="Empty Cart" CssClass="btnorder" Height="62px" Width="196px" />
                </div>
        
            </div>
    </div>
</asp:Content>
