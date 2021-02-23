<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="watch.aspx.cs" Inherits="watch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    



    <style type="text/css">
        .auto-style1 {
            width: 101%;
            height: 260px;
            margin-bottom: 0px;
        }
    </style>
    
    



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    
    <asp:DataList ID="DataList1" runat="server" DataKeyField="watchid" DataSourceID="SqlDataSource1" CellPadding="4" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#333333" RepeatLayout="Flow" RepeatDirection="Horizontal" height="600px" width="1340px" >
        
    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                       <h3><center> <asp:Label ID="Label2" runat="server" Text='<%# Eval("watchname") %>'></asp:Label></center>
                       <h3></h3>
                        <h3></h3>
                        <h3></h3>
                        <h3></h3></h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="229px" ImageUrl='<%# Eval("watchimg") %>' Width="225px" />
                    </td><td><h3>we give it on rent you can take it from us </h3></td>
                </tr>
                <tr>
                    <caption>
                        
                            <td><h3>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                &nbsp;<asp:Label ID="Label4" runat="server" Text="rs for 1 day"></asp:Label>
                                </h3></td>
                            <caption>
                                <h3>
                            </caption>
                        </h3>
                    </caption>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [watch] WHERE [watchid] = @watchid" InsertCommand="INSERT INTO [watch] ([watchname], [price], [watchimg]) VALUES (@watchname, @price, @watchimg)" SelectCommand="SELECT * FROM [watch]" UpdateCommand="UPDATE [watch] SET [watchname] = @watchname, [price] = @price, [watchimg] = @watchimg WHERE [watchid] = @watchid">
        
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
</asp:Content>

