<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtCategoryDB.aspx.cs" Inherits="assignment1part1.MtCategoryDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="manadb"> <!--using gridview and detail view to display and edit data with some functions-->
                    <h1>Category Database Management</h1>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="794px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" ReadOnly="True" SortExpression="CategoryID" />
                            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [CategoryID] = @CategoryID" InsertCommand="INSERT INTO [Category] ([CategoryID], [CategoryName]) VALUES (@CategoryID, @CategoryName)" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [CategoryName] = @CategoryName WHERE [CategoryID] = @CategoryID">
                        <DeleteParameters>
                            <asp:Parameter Name="CategoryID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CategoryID" Type="String" />
                            <asp:Parameter Name="CategoryName" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CategoryName" Type="String" />
                            <asp:Parameter Name="CategoryID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <h2>Insert new database</h2>
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="795px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" ReadOnly="True" SortExpression="CategoryID" />
                            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
    </div>
</asp:Content>
