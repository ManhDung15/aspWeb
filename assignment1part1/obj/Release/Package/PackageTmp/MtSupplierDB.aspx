<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtSupplierDB.aspx.cs" Inherits="assignment1part1.MtSupplierDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="manasup"> <!-- use data grid view and detail view to manage and edit database-->
                    <h1>supplier database management</h1>
                    <asp:GridView runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SupplierID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1250px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" ReadOnly="True" SortExpression="SupplierID" />
                            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                            <asp:BoundField DataField="CompanyAddress" HeaderText="CompanyAddress" SortExpression="CompanyAddress" />
                            <asp:BoundField DataField="CompanyPhone" HeaderText="CompanyPhone" SortExpression="CompanyPhone" />
                            <asp:BoundField DataField="CompanyEmail" HeaderText="CompanyEmail" SortExpression="CompanyEmail" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Supplier] WHERE [SupplierID] = @SupplierID" InsertCommand="INSERT INTO [Supplier] ([SupplierID], [CompanyName], [CompanyAddress], [CompanyPhone], [CompanyEmail]) VALUES (@SupplierID, @CompanyName, @CompanyAddress, @CompanyPhone, @CompanyEmail)" SelectCommand="SELECT * FROM [Supplier]" UpdateCommand="UPDATE [Supplier] SET [CompanyName] = @CompanyName, [CompanyAddress] = @CompanyAddress, [CompanyPhone] = @CompanyPhone, [CompanyEmail] = @CompanyEmail WHERE [SupplierID] = @SupplierID">
                        <DeleteParameters>
                            <asp:Parameter Name="SupplierID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="SupplierID" Type="String" />
                            <asp:Parameter Name="CompanyName" Type="String" />
                            <asp:Parameter Name="CompanyAddress" Type="String" />
                            <asp:Parameter Name="CompanyPhone" Type="Int32" />
                            <asp:Parameter Name="CompanyEmail" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CompanyName" Type="String" />
                            <asp:Parameter Name="CompanyAddress" Type="String" />
                            <asp:Parameter Name="CompanyPhone" Type="Int32" />
                            <asp:Parameter Name="CompanyEmail" Type="String" />
                            <asp:Parameter Name="SupplierID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <h2>insert new database</h2>
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="SupplierID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="1244px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" ReadOnly="True" SortExpression="SupplierID" />
                            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                            <asp:BoundField DataField="CompanyAddress" HeaderText="CompanyAddress" SortExpression="CompanyAddress" />
                            <asp:BoundField DataField="CompanyPhone" HeaderText="CompanyPhone" SortExpression="CompanyPhone" />
                            <asp:BoundField DataField="CompanyEmail" HeaderText="CompanyEmail" SortExpression="CompanyEmail" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
    </div>
</asp:Content>
