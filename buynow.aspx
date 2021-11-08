<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="buynow.aspx.cs" Inherits="buynow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
     <style type="text/css">
        .auto-style2 {
            width: 51%;
            height: 276px;
        }
        .auto-style3 {
            width: 172px;
        }
        .auto-style4 {
            width: 329px;
        }
        .auto-style5 {
            width: 329px;
            height: 154px;
        }
        .auto-style6 {
            height: 154px;
        }
                .BotonDeImagen
{   
    width:300px;
    height:300px;        
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Order ID</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Order Date</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="50px" ShowFooter="True" Width="560px">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="SrNo" />
                <asp:BoundField DataField="productId" HeaderText="Product Id" />
                <asp:BoundField DataField="productname" HeaderText="Product Name" />
                <asp:ImageField DataImageUrlField="productimage" HeaderText="Product">
                   <ControlStyle CssClass="BotonDeImagen"/>
                </asp:ImageField>
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <table border="1" class="auto-style2">
        <tr>
            <td class="auto-style5">&nbsp;Your Address</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" Height="125px" TextMode="MultiLine" Width="312px" AutoCompleteType="None"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Mobile Number</td>
            <td>
                <asp:TextBox ID="TextBox2" type="number" runat="server" Width="292px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
    </table>
    
       <center> <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Place Order" Width="110px" Height="40px" /></center>


</asp:Content>

