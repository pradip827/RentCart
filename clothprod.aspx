<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="clothprod.aspx.cs" Inherits="clothprod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #F5F5F5;
            height: 456px;
        }

        .auto-style2 {
            width: 501px;
        }

        .auto-style3 {
            width: 300px;
            height: 195px;
            margin-left: 10px;
            margin-right: 10px;
        }

        .auto-style5 {
            height: 39px;
            text-align: center;
            background-color: #FFFFFF;
        }

        .auto-style6 {
            text-align: center;
            background-color: #FFFFFF;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .auto-style7 {
            background-color: #FFFFFF;
            text-align: left;
            height: 14px;
            width: 1380px;
        }

        td {
            align-items: center;
            border-image-outset:3px;
            font-weight: bold;
        }

        table {
            margin-left: 50px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:DataList ID="DataList1" runat="server" CellPadding="1" DataKeyField="productId" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" CellSpacing="2" OnItemCommand="DataList1_ItemCommand1">


        <ItemTemplate>
            <table border="0" class="auto-style3 card" style="width: 18rem; height: 33rem">
                <tr class="card-body">
                    <td class="auto-style6">Product ID:&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("productId") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Product Name: &nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="align-items:center; margin-left:28px;">
                        <asp:Image ID="Image1" runat="server" class="img-fluid" Height="255px" ImageUrl='<%# Eval("productimage") %>' Width="234px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Rs:&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Quantity:&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>S</asp:ListItem>
                        <asp:ListItem>XS</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>XL</asp:ListItem>
                        <asp:ListItem>XXL</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><a class="navbar-brand logo_h" href="Cart.aspx">

                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="addtocart" class="btn btn-primary" CommandArgument='<%# Eval("productId") %>' />
                    </a>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />

        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cloth]"></asp:SqlDataSource>

    <!--
    <asp:DataList ID="DataList4" runat="server" DataKeyField="productId" DataSourceID="SqlDataSource1" CellPadding="4" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#333333" RepeatLayout="Flow" RepeatDirection="Horizontal" Height="16px" Width="1329px" OnItemCommand="DataList1_ItemCommand1" Style="margin-top: 54px">
        

        
            
        
    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <h3>
                            <center><asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>'></asp:Label></center>



                        </h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image1" runat="server" Height="273px" ImageUrl='<%# Eval("productimage") %>' Width="226px" />
                    </td>
                    <td>
                        <h3>The Product is avlilabe for the rent from the seller Mr.Shrivastva from sakinaka</h3>
                    </td>
                </tr>
                <caption>
                    <h4>
                <tr>
                    <td class="auto-style2"><a class="navbar-brand logo_h" href="Cart.aspx">

                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="addtocart" ImageUrl="~/img/cart.JPG" CommandArgument='<%# Eval("productId") %>' />
                    </td>
                    </td>

                      
                </tr>
                <tr>
                    <td class="auto-style2">
                        <h3>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %> '></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text="rs for 1 day"></asp:Label>
                        </h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("productId") %>'></asp:Label></td>
                </tr>

            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>     <asp:Label ID="lbltest" runat="server"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cloth]"></asp:SqlDataSource>
    -->

</asp:Content>

