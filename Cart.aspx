<%@ Page Title="cart" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .BotonDeImagen {
            width: 150px;
            height: 150px;
        }

        .auto-style1 {
            margin-left: 80px;
        }
        table{
            width:100%
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        Selected product:<asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
        in your Bag&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/clothprod.aspx">Contious Shopping</asp:HyperLink>
    </p>
    <p>
    </p>
    <table >
        <thead >
            <tr>
                <td class="auto-style1" >
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="476px" OnRowDeleted="GridView1_RowDeleted" onRowDelecting="GridView1_RowDelecting" ShowFooter="True" Width="788px" OnRowDeleting="GridView1_RowDeleting" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                        <Columns>
                            <asp:BoundField DataField="sno" HeaderText="Sr.No">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="productId" HeaderText="Product ID">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image">
                                <ControlStyle CssClass="BotonDeImagen" />
                                <ItemStyle HorizontalAlign="Center" />
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
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle Height="50px" BackColor="#A55129" Font-Bold="True" ForeColor="White" />

                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />

                    </asp:GridView>
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>
                    <center> <asp:Button ID="Button1" runat="server" Text="Buy Now" OnClick="Button1_Click" Height="34px" Width="103px" /></center>
                </td>
                <br />
                <td>&nbsp;
            &nbsp;</td>
            </tr>
            </thead>
    </table>

</asp:Content>

