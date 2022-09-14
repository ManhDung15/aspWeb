<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtContact.aspx.cs" Inherits="assignment1part1.MtContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contactf">
                    <h1>Contact</h1>
                    <p>How can we help you? <br />
                        Please submit the form below!
                    </p>
                    <h3>Your Name</h3>
                    <asp:TextBox ID="TextBox1" runat="server" Height="53px" Width="498px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Name is compulsory" ForeColor="Red"></asp:RequiredFieldValidator>
                    <h3>Your Email</h3>
                    <asp:TextBox ID="TextBox2" runat="server" Height="53px" Width="498px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Email is compulsory" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email must be have @ and . symbol" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <h3>Your Phone Number</h3>
                    <asp:TextBox ID="TextBox3" runat="server" Height="53px" Width="498px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Phone number is compulsory" ForeColor="Red"></asp:RequiredFieldValidator>
                    <h3>Share your questions</h3>
                    <asp:TextBox ID="TextBox4" runat="server" Height="53px" Width="498px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Please input questions" ForeColor="Red"></asp:RequiredFieldValidator>
                    <div class="consub">
                    <asp:Button ID="btnCont" runat="server" Text="Submit" Font-Bold="True" Font-Size="XX-Large" ForeColor="Red" Height="83px" Width="244px" OnClick="btnCont_Click"  />
                    <asp:Button ID="btnCac" runat="server" Text="Cancel" Font-Bold="True" Font-Size="XX-Large" ForeColor="Green" Height="83px" Width="245px" OnClick="btnCac_Click"  />
                </div>
        </div>
</asp:Content>
