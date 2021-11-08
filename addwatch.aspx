<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="addwatch.aspx.cs" Inherits="addwatch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 53%;
            height: 133px;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            width: 244px;
        }
        .auto-style4 {
            height: 29px;
            width: 244px;
        }
        .auto-style7 {
            width: 244px;
            height: 28px;
        }
        .auto-style8 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center><table class="auto-style1">
        <tr>
            <td class="auto-style3">Product Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="236px" BorderColor="#FF6600" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Price</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="236px" BorderColor="#FF6600" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Upload Product Image</td>
            <td class="auto-style8">
                <asp:fileupload id="FileUpload1" runat="server" />
                
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Product" BorderColor="#FF6600" />
                <br />
                <asp:Label ID="Label3" runat="server" BorderColor="#FF6600"></asp:Label>
            </td>
        </tr>
    </table></center>
    <br />

</asp:Content>

