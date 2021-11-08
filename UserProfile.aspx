<%@ Page  EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div><center>
        <br />
        <br /> <!--<hr color="FD7E29" /> -->
        <br />
        <br />
        <br />
        <table><big>
       <tr><td><h5>Your first Name:
               </h5></td><td> <h5><asp:TextBox ID="TextBox1" runat="server" BorderColor="#FF6600" autocomplete="off"></asp:TextBox> </h5> </td>
           <td><h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your Last Name:
               </h5></td><td><h5><asp:TextBox ID="TextBox2" runat="server" BorderColor="#FF6600" autocomplete="off"></asp:TextBox></h5></td>
        </tr><tr><td><h5>Your User Id:
                     </h5></td><td><h5><asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" BorderColor="#FF6600"></asp:TextBox></h5></td>
            <td><h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact No:
                </h5></td><td><h5><asp:TextBox ID="TextBox4" runat="server" BorderColor="#FF6600" autocomplete="off"></asp:TextBox></h5></td></tr>
        <tr><td><h5>Address:
                </h5></td><td><h5><asp:TextBox ID="TextBox8" runat="server" BorderColor="#FF6600" autocomplete="off"></asp:TextBox></h5></td>
            <td><h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Question 1: What is Your TV name:
                </h5></td><td><h5><asp:TextBox ID="TextBox5" runat="server" BorderColor="#FF6600" autocomplete="off"></asp:TextBox></h5></td></tr>
        <tr><td><h5>Question 2: Grandmothe Name:
                </h5></td><td><h5><asp:TextBox ID="TextBox6" runat="server" BorderColor="#FF6600" autocomplete="off"></asp:TextBox></h5></td>
            <td><h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Question 3: What is your Edecutation:
                </h5></td><td><h5><asp:TextBox ID="TextBox7" runat="server" BorderColor="#FF6600" autocomplete="off"></asp:TextBox></h5></td></tr>
            <tr><td><br /></td></tr>
            <tr><td colspan="4"><center><asp:Button ID="Button3" runat="server" Text="edit" OnClick="Button3_Click"   Width="229px" Height="32px" BorderColor="#FF6600"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click"   Width="229px" Height="32px" BorderColor="#FF6600"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Text="Update" OnClick="Button4_Click"   Width="229px" Height="32px" BorderColor="#FF6600"></asp:Button></center></td></tr>
       </big></table>
        
         </center></div>
</asp:Content>

