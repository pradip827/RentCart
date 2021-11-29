<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="billt.aspx.cs" Inherits="billt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 98%;
            height: 472px;
        }
        .auto-style3 {
            text-align: left;
            background-color: #FFFFFF;
        }
        .auto-style4 {
            text-align: left;
            height: 80px;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            width: 100%;
            height: 72px;
        }
        .auto-style6 {
            text-align: left;
            height: 85px;
            background-color: #FFFFFF;
        }
        .auto-style7 {
            width: 658px;
        }
        .auto-style8 {
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style9 {
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
&nbsp;Order&nbsp; ID:<asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Download Invoice" BackColor="#FF6600" Height="50px" Width="152px"  />
    </p>
    <asp:Panel ID="Panel1" runat="server"  >
       <!-- <table>
            <tr><td><h1>RentCart</h1></td><td><img src="img/logotitle.jpg" height="200px" width="200px" /></td></tr>
        </table> 
        <!--<asp:Label ID="Label7" runat="server" Font-Bold="True" Height="200px" Width="200px" align="center"></asp:Label>
        -->
        <table border="1" class="auto-style2">
            <tr><td>
                </td></tr>
            <tr>
                <td class="auto-style8">RentCart Invoice &nbsp;<br />

            </tr>
            <tr>
                <td class="auto-style4">Order no:<asp:Label ID="Label2" runat="server" Font-Bold="True" ></asp:Label>
                    <br />
                    Order Date:<asp:Label ID="Label3" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <table border="1" class="auto-style5">
                        <tr>
                            <td class="auto-style7">Buyer Address:<br />
                                <asp:Label ID="Label4" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                            <td>Seller Address:<br /> <span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: small; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Krishna Nagar, 90 Feet Rd, LBS Nagar, Saki Naka, Mumbai, Maharashtra 400072</span><br /> </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="197px" Width="1214px" CssClass="auto-style9">
                        <Columns>
                            <asp:BoundField DataField="sno" HeaderText="Sr.No">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle />
                            </asp:BoundField>
                            <asp:BoundField DataField="productId" HeaderText="Product ID">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="productname" HeaderText="Product Name">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="quantity" HeaderText="Quantity">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="price" HeaderText="Price">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Grand Total:
                    <asp:Label ID="Label6" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Delextration: <span style="color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">A receipt or proof of purchase is a document that you provide to your customers as record of their purchase of your goods or services. </span></td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
    <p>
        <br />
    </p>
</asp:Content>

