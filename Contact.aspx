<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style type="text/css">
        .auto-style4 {
            width: 100%;
            height: 715px;
        }
        .auto-style5 {
            width: 239px;
            height: 196px;
        }
        .auto-style6 {
            width: 27px;
            height: 19px;
        }
        .auto-style7 {
            text-align: center;
            font-size: x-large;
            color: #0066FF;
            height: 72px;
        }
        .auto-style16 {
            width: 649px;
            text-align: center;
            height: 18px;
        }
        .auto-style18 {
            font-size: large;
            color: #0066FF;
        }
        .auto-style19 {
            text-align: center;
            height: 234px;
        }
        .auto-style21 {
            font-size: large;
            font-weight: bold;
            color: #0066FF;
        }
        .auto-style23 {
            width: 649px;
            text-align: center;
            height: 72px;
        }
        .auto-style24 {
            height: 72px;
        }
        .auto-style26 {
            width: 649px;
            text-align: center;
            height: 54px;
        }
        .auto-style27 {
        }
        .auto-style28 {
            width: 51px;
            height: 50px;
        }
        .auto-style29 {
            width: 63px;
            height: 50px;
        }
        .auto-style31 {
            color: #0066FF;
        }
        .auto-style33 {
            font-size: medium;
            color: #000000;
        }
        .auto-style34 {
            width: 49px;
            height: 45px;
        }
        .auto-style35 {
            width: 54px;
            height: 41px;
        }
        .auto-style37 {
            width: 48px;
            height: 50px;
        }
        .auto-style38 {
            width: 649px;
            text-align: center;
            height: 81px;
        }
        .auto-style39 {
            width: 649px;
            text-align: center;
            height: 61px;
        }
        .auto-style40 {
            font-size: large;
        }
        .auto-style41 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">

        <br />

        <table class="auto-style4">
            <tr>
                <td class="auto-style19" colspan="2">
                    <img alt="" class="auto-style5" src="images/contactus.png" /></td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="2"><strong>We&#39;d&nbsp;
                    <img alt="" class="auto-style6" src="images/heart.png" />&nbsp; to help!!!</strong></td>
            </tr>
            <tr>
                <td class="auto-style26">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img alt="" class="auto-style34" src="img/username-logo-png-4.png" />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" BorderColor="#FF6600" Height="46px" Width="396px" Placeholder="Enter Username"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" style="font-size: x-large; font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style27" rowspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style18">Mumbai, Maharashtra</span><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img alt="" class="auto-style28" src="img/white-phone-icon-png--clipart-best-30.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style18">&nbsp;&nbsp; (+91) 992-024-7082</span><br />
&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img alt="" class="auto-style29" src="img/email.jpg" />&nbsp;&nbsp; <span class="auto-style31"><span class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="mailto:chauhanprd@gmail.com">chauhanprd@gmail.com</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rentcar@rentcart.com</span><br class="auto-style18" />
                    </span>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img alt="" class="auto-style35" src="img/email.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" BorderColor="#0066FF" Height="46px" Width="396px" Placeholder="Emial-id"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" style="font-size: x-large; font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style38">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<img alt="" class="auto-style37" src="img/fedbackwrie.png" style="vertical-align: top" />&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="Disabled" BorderColor="#0066FF" CssClass="auto-style33" Height="64px" TextMode="MultiLine" Width="396px" Placeholder="Go ahead we are listening..."></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" style="font-size: x-large; font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style39" style="vertical-align: top">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Height="42px" Text="Submit" Width="124px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style40">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" CssClass="auto-style41"></asp:Label>
                    </span>
                </td>
            </tr>
        </table>

   </div>
</asp:Content>

