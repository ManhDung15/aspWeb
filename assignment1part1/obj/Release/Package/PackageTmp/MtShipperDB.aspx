<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtShipperDB.aspx.cs" Inherits="assignment1part1.MtShipperDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="manadb">
                    <h1>Shipper Database Management</h1>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ShipperID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="790px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="ShipperID" HeaderText="ShipperID" ReadOnly="True" SortExpression="ShipperID" />
                            <asp:BoundField DataField="ShipperName" HeaderText="ShipperName" SortExpression="ShipperName" />
                            <asp:BoundField DataField="ShipperPhone" HeaderText="ShipperPhone" SortExpression="ShipperPhone" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Shipper] WHERE [ShipperID] = @ShipperID" InsertCommand="INSERT INTO [Shipper] ([ShipperID], [ShipperName], [ShipperPhone]) VALUES (@ShipperID, @ShipperName, @ShipperPhone)" SelectCommand="SELECT * FROM [Shipper]" UpdateCommand="UPDATE [Shipper] SET [ShipperName] = @ShipperName, [ShipperPhone] = @ShipperPhone WHERE [ShipperID] = @ShipperID">
                        <DeleteParameters>
                            <asp:Parameter Name="ShipperID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ShipperID" Type="String" />
                            <asp:Parameter Name="ShipperName" Type="String" />
                            <asp:Parameter Name="ShipperPhone" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ShipperName" Type="String" />
                            <asp:Parameter Name="ShipperPhone" Type="Int32" />
                            <asp:Parameter Name="ShipperID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <h2>insert new database</h2>
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ShipperID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="793px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="ShipperID" HeaderText="ShipperID" ReadOnly="True" SortExpression="ShipperID" />
                            <asp:BoundField DataField="ShipperName" HeaderText="ShipperName" SortExpression="ShipperName" />
                            <asp:BoundField DataField="ShipperPhone" HeaderText="ShipperPhone" SortExpression="ShipperPhone" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
    </div>
</asp:Content>
