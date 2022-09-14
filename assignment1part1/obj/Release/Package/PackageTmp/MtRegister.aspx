<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtRegister.aspx.cs" Inherits="assignment1part1.NewRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="regis">
                    <h1>Create new account</h1>
                    <div>
                    <h3>Enter Name</h3> <!-- textbox and validate content inside with RequiredFieldValidators -->
                    <asp:TextBox ID="txbxName" runat="server" Height="52px" Width="445px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txbxName" ErrorMessage="*Name is compulsory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                    <h3>Enter Password</h3> <!-- textbox and validate content inside with RequiredFieldValidators -->
                    <asp:TextBox ID="txbxPassword" runat="server" TextMode="Password" Height="59px" Width="445px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txbxPassword" ErrorMessage="*Password is compulsory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                    <h3>Confirm Password</h3> <!-- textbox and validate content inside with RequiredFieldValidators -->
                    <asp:TextBox ID="txbxConPass" runat="server" TextMode="Password" Height="59px" Width="445px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txbxConPass" ErrorMessage="*Confirm Password is compulsory" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvRePass" runat="server"
                        ErrorMessage="Password Re-Entry" Display="Dynamic"
                        ControlToValidate="txbxConpass" ControlToCompare="txbxPassword" ForeColor="Red">Must match with first email address</asp:CompareValidator>
                    </div>
                    <div>
                    <h3>Enter Email</h3> <!-- textbox and validate content inside with RequiredFieldValidators -->
                    <asp:TextBox ID="txbxEmail" runat="server" Height="49px" Width="445px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txbxEmail" ErrorMessage="*Email is compulsory" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txbxEmail" ErrorMessage="Email must be have @ and . symbol" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                    <div>
                    <h3>Enter Phone Number</h3> <!-- textbox and validate content inside with RequiredFieldValidators -->
                    <asp:TextBox ID="txbxPhone" runat="server" Height="52px" Width="445px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txbxPhone" ErrorMessage="*Phone Number is compulsory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                    <asp:CheckBox ID="CheckBox1" runat="server" ValidateRequestMode="Enabled" /> 
                    <asp:Label ID="Label1" runat="server" Text="I agree with terms and conditions"></asp:Label>                  
                    </div>
                    <div>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="RegisterUser" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Height="87px" Width="446px" />
                    </div>
    </div>
</asp:Content>
