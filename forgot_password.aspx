<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgot_password.aspx.cs" Inherits="forgot_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="forgetpass.css" />
    <link rel="shortcut icon" href="img/logotitle.jpg" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div class="container mt-5">
        <div class="row" >
            <div class="col-3"></div>
            <div class="col-6">
                <div class="card" style="width: 24rem;">
                    <div class="card-body">
                        <h5 class="card-title">Forgot Password</h5>
                        
                            <div class="form-group">
                                <label for="exampleInputEmail1">Please Enter Register Email</label>
                                <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">-->
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>
                                
                            </div>
                            <div class="form-group">
                                <label >What is your Tv name: </label>
                                <!--<input type="password" class="form-control" id="exampleInputPassword1">-->
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" ></asp:TextBox>
                                
                            </div>
                             <div class="form-group">
                                <label >what is your grand mother name: </label>
                                <!--<input type="password" class="form-control" id="exampleInputPassword1">-->
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                
                            </div>
                             <div class="form-group">
                                <label >what is your edecutation: </label>
                                <!--<input type="password" class="form-control" id="exampleInputPassword1">-->
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" ></asp:TextBox>
                               
                            </div>
                            <!--<button type="submit" class="btn btn-primary">Submit</button>-->
                            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn col-12 btn-primary" OnClick="Button1_Click1" />
                       
                        
                    </div>
                </div>
            </div>
            <div class="col-3"></div>

        </div>
    </div>
    <div class="container mt-5" runat="server" id="change_password">
        <div class="row" >
            <div class="col-3"></div>
            <div class="col-6">
                <div class="card" style="width: 24rem;">
                    <div class="card-body">
                        <h5 class="card-title">Login</h5>
                       
                            <div class="form-group">
                                <label for="exampleInputPassword1">New Password</label>
                                <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">-->
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>
                                
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Confirm Password</label>
                                <!--<input type="password" class="form-control" id="exampleInputPassword1">-->
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                
                            </div>
                            <!--<button type="submit" class="btn btn-primary">Submit</button>-->
                            <asp:Button ID="Button2" runat="server" Text="Chnage" CssClass="btn col-12 btn-primary" OnClick="Button1_Click" />
                         
                        
                    </div>
                </div>
            </div>
            <div class="col-3"></div>

        </div>
    </div>

    </form>
    <!-- Javascript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

   
</body>
</html>
