<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sellerreg.aspx.cs" Inherits="sellerreg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="registercss.css" />
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-3"></div>
            <div class="col-6">
                <div class="card mb-5" style="width: 24rem;">
                    <div class="card-body">
                        <h5 class="card-title">Create account</h5>
                        <form id="form1" runat="server">
                            <div class="form-group">
                                <label for="exampleInputEmail1">First name</label>
                                <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">-->
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Last name</label>
                                <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">-->
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Contact Number</label>
                                <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">-->
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Number" MaxLength="10" autocomplete="off"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">-->
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="Email" autocomplete="off"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Password</label>
                                <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">-->
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="Password" autocomplete="off"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Confirm Password</label>
                                <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">-->
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Password" autocomplete="off"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Password not matched" ForeColor="Red"></asp:CompareValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Address</label>
                                <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">-->
                                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Which Tv You have on your home?</label>
                                <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">-->
                                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">what is your grand mother name?</label>
                                <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">-->
                                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">what is your feald of edecutation?</label>
                                <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">-->
                                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>
                            </div>
                            <!--<button type="submit" class="btn btn-primary">Submit</button>-->
                            <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn col-12 btn-primary" OnClick="Button1_Click1" />
                        </form>
                        <br />
                        <span>Alredy have account <a href="login.aspx">Login here</a> </span>
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
