<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtEmployeeDB.aspx.cs" Inherits="assignment1part1.MtEmployeeDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="manasup">
                    <h1>Employee Database Management</h1><!--using gridview and detail view to display and edit data with some functions-->
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="785px" Width="1244px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ReadOnly="True" SortExpression="EmployeeID" />
                            <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" SortExpression="EmployeeName" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [EmployeeID] = @EmployeeID" InsertCommand="INSERT INTO [Employee] ([EmployeeID], [EmployeeName], [Gender], [Address], [PhoneNumber], [DateOfBirth], [Position]) VALUES (@EmployeeID, @EmployeeName, @Gender, @Address, @PhoneNumber, @DateOfBirth, @Position)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [EmployeeName] = @EmployeeName, [Gender] = @Gender, [Address] = @Address, [PhoneNumber] = @PhoneNumber, [DateOfBirth] = @DateOfBirth, [Position] = @Position WHERE [EmployeeID] = @EmployeeID">
                        <DeleteParameters>
                            <asp:Parameter Name="EmployeeID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="EmployeeID" Type="String" />
                            <asp:Parameter Name="EmployeeName" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="PhoneNumber" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="DateOfBirth" />
                            <asp:Parameter Name="Position" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="EmployeeName" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="PhoneNumber" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="DateOfBirth" />
                            <asp:Parameter Name="Position" Type="String" />
                            <asp:Parameter Name="EmployeeID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <h2>insert new database</h2>
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="1241px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ReadOnly="True" SortExpression="EmployeeID" />
                            <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" SortExpression="EmployeeName" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
    </div>
</asp:Content>
