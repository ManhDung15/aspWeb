<%@ Page Title="" Language="C#" MasterPageFile="~/masterindex.Master" AutoEventWireup="true" CodeBehind="MtAbout.aspx.cs" Inherits="assignment1part1.MtAbout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="abu"> <!-- class for about content-->
                    <div class="ro1"> <!-- row 1 display basic info of blue electro-->
                        <h1>About Blue Electro</h1>
                        <p>
                            Our company have 5 retailers in Singapore, operates over 100 stores and has revenues of $1 million.<br />
                            Blue Electro was established in 2010. Over the years, we expanded electrical products.<br />
                            Our price is affordable with many promotions. Moreover, we also have various methods for payment.<br />
                        </p>
                    </div>
                    <div class="ro2"> <!-- row 2 display contct info of blue electro-->
                        <h3>Contact Info</h3>
                        <p>
                            Blue Electro<br />
                            blueelectro1@gmail.com<br />
                            +65 65686568
                        </p>
                    </div>
                    <div><!--click button to back home page-->
                        <asp:Button ID="Button1" runat="server" Text="Back to Homepage" ForeColor="Red" Height="45px" Width="446px" OnClick="Button1_Click" />
                    </div>

    </div>
</asp:Content>
