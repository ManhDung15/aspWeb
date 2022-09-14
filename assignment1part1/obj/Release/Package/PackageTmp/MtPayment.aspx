<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtPayment.aspx.cs" Inherits="assignment1part1.MtPayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="newCheck">
            <h1>Check Out</h1>
            <div>
                <asp:HyperLink ID="hlConShop" runat="server" NavigateUrl="~/MtOrder.aspx" BorderStyle="None" Height="32px" Width="184px">Continue Shopping</asp:HyperLink>
            </div>
            <h3>Contact information</h3> <!-- request user input every text box and use required field validator to check -->
            
            <asp:Label ID="lblEmail1" runat="server" Text="Customer Email:"></asp:Label>
            <div>
                <asp:TextBox ID="txtEmail1" runat="server" TextMode="Email" Height="45px" Width="292px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail1" runat="server"
                    ErrorMessage="Email address" 
                    ControlToValidate="txtEmail1" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail1" runat="server"
                    ErrorMessage="Email address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="txtEmail1" Display="Dynamic" ForeColor="Red">Must be a valid email address</asp:RegularExpressionValidator>
            </div>
            <div>
                <label>Email Re-entry:</label>
                <div>
                    <asp:TextBox ID="txtEmail2" runat="server" TextMode="Email" Height="46px" Width="291px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail2" runat="server"
                        ErrorMessage="Email re-entry"
                        Display="Dynamic" ControlToValidate="txtEmail2" ForeColor="Red">Required</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvEmail2" runat="server"
                        ErrorMessage="Email re-entry" Display="Dynamic"
                        ControlToValidate="txtEmail2" ControlToCompare="txtEmail1" ForeColor="Red">Must match with first email address</asp:CompareValidator>
                </div> <!--compare 2 fields is same-->
            </div>
            <div>
                <label>Customer Name:</label>
                <div>
                    <asp:TextBox ID="txtFullName" runat="server" Height="47px" Width="290px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFullName" runat="server"
                        ErrorMessage="Full name" 
                        Display="Dynamic" ControlToValidate="txtFullName" ForeColor="Red">Required</asp:RequiredFieldValidator>
                </div>
            </div>
            <div>
                <label>Customer Phone:</label>
                    <div>
                        <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" Height="57px" Width="291px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server"
                            ErrorMessage="Phone number"
                            Display="Dynamic" ControlToValidate="txtPhone" ForeColor="Red">Required</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server"
                            ErrorMessage="Phone number"
                            Display="Dynamic" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                            ControlToValidate="txtPhone" ForeColor="Red">Use this format: 123-456-7890</asp:RegularExpressionValidator> 
                    </div>    <!--check phone number in US format-->
            </div>
            <h3>Billing Address</h3>
            <div>
                <label>Address:</label>
                <div>
                    <asp:TextBox ID="txtAddress" runat="server" Height="60px" Width="290px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvStreetAddress" runat="server"
                        ErrorMessage="Billing address" Text="Required"
                        Display="Dynamic"
                        ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                
            </div>
            <div>
                <label>Unit Number:</label>
                <div>
                    <asp:TextBox ID="txtbxUnit" runat="server" Height="58px" Width="286px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUnit" runat="server"
                        ErrorMessage="Billing Unit Number" Text="Required"
                        Display="Dynamic" ControlToValidate="txtbxUnit" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
               
            </div>
            <div>
                <label>Zip/Postal code:</label>
                <div>
                    <asp:TextBox ID="txtZip" runat="server" MaxLength="6" Height="53px" Width="282px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvZip" runat="server"
                       ErrorMessage="Billing zip code" Text="Required"
                       Display="Dynamic" ControlToValidate="txtZip" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                
             </div>
            <h3>Shipping Address</h3>
            <div>
                <div>
                    <asp:CheckBox ID="chkSameAsBilling" runat="server"
                        AutoPostBack="true"
                        OnCheckedChanged="chkSameAsBilling_CheckedChanged" />
                    <label>Same as billing address</label>
                </div>
            </div>
            <div>
                <label>Address:</label>
                <div>
                    <asp:TextBox ID="txtShipAddress" runat="server" Height="50px" Width="273px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvShipAddress" runat="server"
                        ErrorMessage="Shipping address" Text="Required"
                        Display="Dynamic"
                        ControlToValidate="txtShipAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
               
            </div>
            <div>
                <label>City:</label>
                <div>
                    <asp:TextBox ID="txtbxShipUnit" runat="server" CssClass="form-control" Height="47px" Width="271px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvShipUnit" runat="server"
                        ErrorMessage="Shipping city" Text="Required"
                        Display="Dynamic" ControlToValidate="txtbxShipUnit" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                
            </div>
            
            <div>
                <label>Zip/Postal code:</label>
                <div>
                    <asp:TextBox ID="txtShipZip" runat="server" MaxLength="10" Height="51px" Width="267px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvShipZip" runat="server"
                        ErrorMessage="Shipping zip code" Text="Required"
                        Display="Dynamic" ControlToValidate="txtShipZip" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                
            </div>
            <div>
                <h3>Payment - Credit Card</h3>
                <div>
                    <label>Card Number</label>
                    <div>
                        <asp:TextBox ID="txtbxCardNum" runat="server" Height="60px" Width="290px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCardNum" runat="server"
                            ErrorMessage="Billing address" Text="Required"
                            Display="Dynamic"
                            ControlToValidate="txtbxCardNum" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div>
                    <label>Name On Card</label>
                    <div>
                        <asp:TextBox ID="txtbxNOC" runat="server" Height="60px" Width="290px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNOC" runat="server"
                            ErrorMessage="Billing address" Text="Required"
                            Display="Dynamic"
                            ControlToValidate="txtbxNOC" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div>
                    <label>Expiry Datte</label>
                    <div>
                        <asp:TextBox ID="txtbxExpiry" runat="server" Height="60px" Width="290px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvExpiry" runat="server"
                            ErrorMessage="Billing address" Text="Required"
                            Display="Dynamic"
                            ControlToValidate="txtbxExpiry" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div>
                    <label>CVC</label>
                    <div>
                        <asp:TextBox ID="txtbxCVC" runat="server" Height="60px" Width="290px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCVC" runat="server"
                            ErrorMessage="Billing address" Text="Required"
                            Display="Dynamic"
                            ControlToValidate="txtbxCVC" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <!-- form 2 Button-->
            <div>
                <div>
                    <asp:Button ID="btnCheckOut" runat="server" Text="Check Out"
                        OnClick="btnCheckOut_Click" CssClass="btnorder" Height="65px" Width="219px" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel Order"
                        CausesValidation="False" OnClick="btnCancel_Click" CssClass="btnorder" Height="65px" PostBackUrl="~/MtOrder.aspx" Width="224px" />
                    
                </div>
            </div>
    </div>
</asp:Content>
