<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Sellerprodadd.aspx.cs" Inherits="Sellerhm" %>

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
        .auto-style5 {
            width: 244px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Add Product Details"></asp:Label>
    <br />
    <table border="1" class="auto-style1">
        <tr>
            <td class="auto-style5">Product ID</td>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Product Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="236px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Price</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="236px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Upload Product Image</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Product" />
                <br />
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">View All Prduct</asp:HyperLink>
    <br />-->


</asp:Content>
