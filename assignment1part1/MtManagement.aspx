<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtManagement.aspx.cs" Inherits="assignment1part1.MtManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="manage">
                    <h1>DATABASE MANAGEMENT</h1>
                    <p>What manager want to manage?</p>
                    <ol>
                        <li><asp:HyperLink runat="server" NavigateUrl="~/MtCategoryDB.aspx">CATEGORY DATABASE MANAGEMENT</asp:HyperLink><br /></li>
                        <li><asp:HyperLink runat="server" NavigateUrl="~/MtProductDB.aspx">PRODUCT DATABASE MANAGEMENT</asp:HyperLink><br /></li>
                        <li><asp:HyperLink runat="server" NavigateUrl="~/MtNewProductDB.aspx">NEW PRODUCT DATABASE MANAGEMENT</asp:HyperLink><br /></li>
                        <li><asp:HyperLink runat="server" NavigateUrl="~/MtEmployeeDB.aspx">EMPLOYEE DATABASE MANAGEMENT</asp:HyperLink><br /></li>
                        <li><asp:HyperLink runat="server" NavigateUrl="~/MtCustomerDB.aspx">CUSTOMER DATABASE MANAGEMENT</asp:HyperLink><br /></li>
                        <li><asp:HyperLink runat="server" NavigateUrl="~/MtOrderDB.aspx">ORDER DATABASE MANAGEMENT</asp:HyperLink><br /></li>
                        <li><asp:HyperLink runat="server" NavigateUrl="~/MtPaymentDB.aspx">PAYMENT DATABASE MANAGEMENT</asp:HyperLink><br /></li>
                        <li><asp:HyperLink runat="server" NavigateUrl="~/MtShipperDB.aspx">SHIPPER DATABASE MANAGEMENT</asp:HyperLink><br /></li>
                        <li><asp:HyperLink runat="server" NavigateUrl="~/MtSupplierDB.aspx">SUPPLIER DATABASE MANAGEMENT</asp:HyperLink><br /></li>
                    </ol>
    </div>
</asp:Content>
