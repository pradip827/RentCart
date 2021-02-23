<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="clothprod.aspx.cs" Inherits="clothprod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #F5F5F5;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:DataList ID="DataList1" runat="server" DataKeyField="productId" DataSourceID="SqlDataSource1" CellPadding="4" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#333333" RepeatLayout="Flow" RepeatDirection="Horizontal" height="600px" width="1340px" >
    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr >
                <td colspan="2">
                    <h3><center><asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>'></asp:Label></center>
                        <h3></h3>
                        <h3></h3>
                        <h3></h3>
                        <h3></h3>
                    </h3>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="273px"  ImageUrl='<%# Eval("productimage") %>' Width="233px" />
                </td><td><h3>we give it on rent you can take it from us </h3></td>
            </tr>
            <caption>
                <h4>
                    <tr>
                        <td><a class="navbar-brand logo_h" href="Cart.aspx">
                            <img src="img/cart.JPG" />
                            </a></td>
                        <caption>
                            <h4></h4>
                        </caption>
                        <caption>
                            <h4></h4>
                        </caption>
                    </tr>
                    <tr>
                        <td>
                           <h3> <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %> ' ></asp:Label>
                               <asp:Label ID="Label3" runat="server" Text="rs for 1 day"></asp:Label>
                            </h3>
                        </td>
                    </tr>
                    <caption>
                        <h4></h4>
                    </caption>
                    <caption>
                        <h4></h4>
                    </caption>
                </h4>
            </caption>
        </table>
        <br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cloth]"></asp:SqlDataSource>
</asp:Content>

