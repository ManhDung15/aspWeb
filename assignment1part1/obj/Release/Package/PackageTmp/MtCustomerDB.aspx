<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtCustomerDB.aspx.cs" Inherits="assignment1part1.MtCustomerDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="manadb">
                    <h1>Customer Database Management</h1> <!--using gridview and detail view to display and edit data with some functions-->
                    <h3>     
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MtDisplayCustomerData.aspx">See in binding data view</asp:HyperLink>
                    </h3>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" Width="791px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                            <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Phone Number" HeaderText="Phone Number" SortExpression="Phone Number" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customer] ([CustomerID], [CustomerName], [Address], [Phone Number], [Email]) VALUES (@CustomerID, @CustomerName, @Address, @Phone_Number, @Email)" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [CustomerName] = @CustomerName, [Address] = @Address, [Phone Number] = @Phone_Number, [Email] = @Email WHERE [CustomerID] = @CustomerID">
                        <DeleteParameters>
                            <asp:Parameter Name="CustomerID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CustomerID" Type="String" />
                            <asp:Parameter Name="CustomerName" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Phone_Number" Type="Int32" />
                            <asp:Parameter Name="Email" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CustomerName" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Phone_Number" Type="Int32" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="CustomerID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <h2>Insert New Data</h2>
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="792px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                            <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Phone Number" HeaderText="Phone Number" SortExpression="Phone Number" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
    </div>
</asp:Content>
