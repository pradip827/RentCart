<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="img/logotitle.jpg" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <title></title>

</head>
<body>
    <div class="container mt-5">
        <div class="row" >
            <div class="col-3"></div>
            <div class="col-6">
                <div class="card" style="width: 24rem;">
                    <div class="card-body">
                        <h5 class="card-title">Login</h5>
                        <form id="form1" runat="server">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">-->
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" autocomplete="on"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <!--<input type="password" class="form-control" id="exampleInputPassword1">-->
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <!--<button type="submit" class="btn btn-primary">Submit</button>-->
                            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn col-12 btn-primary" OnClick="Button1_Click" />
                        </form>
                        <br /><span>New User? <a href="RegisteRC.aspx">register here </a> </span>
                        <br /><span><a href="forgot_password.aspx">Forgat Password</a> </span>
                    </div>
                </div>
            </div>
            <div class="col-3"></div>

        </div>
    </div>


    <!-- Javascript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

</body>
</html>