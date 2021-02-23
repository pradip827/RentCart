<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link rel="stylesheet" type="text/css" href="logincss.css" />

    <style type="text/css">
        
        .auto-style4 {
            text-align: justify;
        }
        
        .auto-style5 {
            width: 30%;
            height: 0px;
            margin: auto;
            padding: 60px 0px;
            font-weight: 400;
        }
        .auto-style6 {
            width: 70%;
            height: -81px;
        }
                
        .auto-style8 {
            margin-left: 3px;
        }
                
        .auto-style9 {
            margin-left: 200px;
        }
                
        .auto-style10 {
            text-align: left;
            width: 366px;
            height: 43px;
        }
                
    </style>

</head>
<body>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="img/logotitle.jpg" height="70" width="100"/></p>
&nbsp;<center> <form id="form1" runat="server"><div><h1 class="auto-style4">&nbsp;</h1></div>
   <div class="login" >
   <h1 class="auto-style2,auto-style1" >&nbsp;&nbsp;</h1>
       <h1 class="auto-style2,auto-style1" >&nbsp; Login</h1>
       <h3 class="auto-style1">&nbsp;</h3>
       <h3 class="auto-style1">&nbsp;</h3>
       <h3 class="auto-style1">E-mail or Phone Number     </h3>
        <h3 class="auto-style10">
            &nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="221px" BorderWidth="1px" Height="31px" CssClass="auto-style8" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please give input" ForeColor="Red" ClientIDMode="AutoID" BorderStyle="None" ></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </h3>
       <h3 class="auto-style1">
            &nbsp;&nbsp; Password&nbsp;&nbsp;&nbsp;
        </h3>
       <h3 class="auto-style1">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox  ID="TextBox2" runat="server" Height="30px"  Width="222px"></asp:TextBox>
        </h3>
        <h3><asp:Button ID="Button1" runat="server" Text="Login" Width="229px" Height="32px" OnClick="Button1_Click" />
        </h3>
       <p class="auto-style9">
       <a href="#" onclick="window.open('forgot_password.aspx','FP','width=500,height=300,top=300,fullscreen=no,resizeable=0')">Forgot Password</a>
       </p>
</div>
      <div>
       <hr  class="crtac"/>
          <asp:Button ID="Button2" runat="server" BorderColor="#FF9933" ForeColor="#0066FF" OnClick="Button2_Click" Text="Create Account" />
        &nbsp;
       </div>
        <div><hr class="auto-style6" /></div>
        

        <footer><div class="auto-style5">
  <a href="google.com">
      Conditions of Use
  </a>&nbsp;&nbsp;
     <a>
      Privacy&nbsp;&nbsp; Notice
     </a>
            <a>`
        </a>
  
</div></footer>
    </form></center>
   
 </body>
</html>
