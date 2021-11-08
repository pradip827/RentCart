<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="sellerchangepass.aspx.cs" Inherits="sellerchangepass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center> <table><tr><td><h5>Enter previous password:</h5></td>
        <td><h5><asp:TextBox ID="TextBox1" runat="server" BorderColor="#FF6600" autocomplete="off"></asp:TextBox></h5></td>
           <asp:Label ID="Label1" runat="server" ></asp:Label></tr>
        <tr><td><h5>Enter Your New Password:</h5></td>
            <td><h5><asp:TextBox ID="TextBox2" runat="server" BorderColor="#FF6600" autocomplete="off"></asp:TextBox></h5></td>  
        </tr>
       <tr><td><h5>Confirm Password:</h5></td>
            <td><h5><asp:TextBox ID="TextBox3" runat="server" BorderColor="#FF6600" autocomplete="off"></asp:TextBox></h5></td>  <asp:Label ID="Label2" runat="server" ></asp:Label>
        </tr>
       <tr><td colspan="2"><h5><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" BorderColor="#FF6600"></asp:Button></h5></td></tr>
    </table></center>
</asp:Content>

