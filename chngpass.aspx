<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="chngpass.aspx.cs" Inherits="chnfpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center> <table><tr><td><h5>Enter previous password:</h5></td>
        <td><h5><asp:TextBox ID="TextBox1" runat="server" backgroundcolor="#fd7e00"></asp:TextBox></h5></td>
           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></tr>
        <tr><td><h5>Enter Your New Password:</h5></td>
            <td><h5><asp:TextBox ID="TextBox2" runat="server" backgroundcolor="#fd7e00"></asp:TextBox></h5></td>  
        </tr>
       <tr><td><h5>Confirm Password:</h5></td>
            <td><h5><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></h5></td>  <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </tr>
       <tr><td colspan="2"><h5><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"></asp:Button></h5></td></tr>
    </table></center>
</asp:Content>


