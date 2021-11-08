<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="watch.aspx.cs" Inherits="watch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    



    <style type="text/css">
        .auto-style1 {
            width: 101%;
            height: 260px;
            margin-bottom: 0px;
        }
        .auto-style2 {
            width: 443px;
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="watchid" DataSourceID="SqlDataSource1"  CellPadding="1"  RepeatColumns="4" RepeatDirection="Horizontal" CellSpacing="2" OnItemCommand="DataList1_ItemCommand1">
        <ItemTemplate>
            <table border="0" class="auto-style3 card" style="width: 18rem; height: 33rem">
                <tr class="card-body">
                    <td class="auto-style6">Product ID:&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("watchid") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Product Name: &nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("watchname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="align-items:center; margin-left:28px;">
                        <asp:Image ID="Image1" runat="server" class="img-fluid" Height="273px" ImageUrl='<%# Eval("watchimg") %>' Width="234px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Rs:&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>'></asp:Label>
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

                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="addtocart" class="btn btn-primary" CommandArgument='<%# Eval("watchid") %>' />
                    </a>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />

        </ItemTemplate>
        

    </asp:DataList>
    
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [watch] WHERE [watchid] = @watchid" InsertCommand="INSERT INTO [watch] ([watchname], [price], [watchimg]) VALUES (@watchname, @price, @watchimg)" SelectCommand="SELECT * FROM [watch]" UpdateCommand="UPDATE [watch] SET [watchname] = @watchname, [price] = @price, [watchimg] = @watchimg WHERE [watchid] = @watchid">
        
    </asp:SqlDataSource>

</asp:Content>

