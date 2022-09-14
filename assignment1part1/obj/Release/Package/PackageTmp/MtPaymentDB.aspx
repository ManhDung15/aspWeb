<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtPaymentDB.aspx.cs" Inherits="assignment1part1.MtPaymentDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="manadb">
                    <h1>Payment Database Management</h1>
                    <asp:GridView runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PaymentID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="794px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="PaymentID" HeaderText="PaymentID" ReadOnly="True" SortExpression="PaymentID" />
                            <asp:BoundField DataField="PaymentType" HeaderText="PaymentType" SortExpression="PaymentType" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Payment] WHERE [PaymentID] = @PaymentID" InsertCommand="INSERT INTO [Payment] ([PaymentID], [PaymentType]) VALUES (@PaymentID, @PaymentType)" SelectCommand="SELECT * FROM [Payment]" UpdateCommand="UPDATE [Payment] SET [PaymentType] = @PaymentType WHERE [PaymentID] = @PaymentID">
                        <DeleteParameters>
                            <asp:Parameter Name="PaymentID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="PaymentID" Type="String" />
                            <asp:Parameter Name="PaymentType" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="PaymentType" Type="String" />
                            <asp:Parameter Name="PaymentID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <h2>Insert new data</h2>
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="796px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="PaymentID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="PaymentID" HeaderText="PaymentID" ReadOnly="True" SortExpression="PaymentID" />
                            <asp:BoundField DataField="PaymentType" HeaderText="PaymentType" SortExpression="PaymentType" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
    </div>
</asp:Content>
