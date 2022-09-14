<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtHome.aspx.cs" Inherits="assignment1part1.NewHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main"> <!--main for creating shopping by category -->
                    <h1>Shop by Categories</h1>
                    <table><!-- use table with 1 row and 3 column to display all 3 picture in a line-->
                        <tr>
                            <td><asp:HyperLink runat="server" NavigateUrl="~/MtOrder.aspx">COMPUTER</asp:HyperLink><br /><asp:Image ID="Image2" runat="server" ImageUrl="~/images/catecom.jpg" Height="400px" Width="400px" /></td>
                            <td><asp:HyperLink runat="server" NavigateUrl="~/MtOrder.aspx">MOBILE PHONE</asp:HyperLink><asp:Image ID="Image3" runat="server" ImageUrl="~/images/catemp.jpg" Height="400px" Width="400px" /></td>
                            <td><asp:HyperLink runat="server" NavigateUrl="~/MtOrder.aspx">TELEVISION</asp:HyperLink><br /><asp:Image ID="Image4" runat="server" ImageUrl="~/images/catetv.jpg" Height="400px" Width="400px" /></td>
                        </tr>

                    </table>
     </div>
</asp:Content>
