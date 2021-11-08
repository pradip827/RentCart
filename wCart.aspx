<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="wCart.aspx.cs" Inherits="wCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
        .BotonDeImagen
{   
    width:300px;
    height:300px;        
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Selected product:<asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
        in your Bag&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/clothprod.aspx">Contious Shopping</asp:HyperLink>
    </p>
    <p>
    </p>
    <table><tr><td><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="476px" OnRowDeleted="GridView1_RowDeleted" onRowDelecting="GridView1_RowDelecting" ShowFooter="True" Width="788px" OnRowDeleting="GridView1_RowDeleting" >
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="Sr.No">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="productId" HeaderText="Product ID">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image">
                <ControlStyle CssClass="BotonDeImagen"/>
                <ItemStyle HorizontalAlign="Center"  />
            </asp:ImageField>
            <asp:BoundField DataField="productname" HeaderText="Product Name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Price">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalPrice" HeaderText="Total Price ">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
        </Columns>
        <HeaderStyle Height="50px" />
        
    </asp:GridView>
    <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>
   <center> <asp:Button ID="Button1" runat="server" Text="Buy Now" OnClick="Button1_Click" Height="32px" Width="102px" /></center></td><br /><td>
            &nbsp;</td></tr></table>
    
</asp:Content>

