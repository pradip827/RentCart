<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="chngpass.aspx.cs" Inherits="chnfpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="shortcut icon" href="img/logotitle.jpg" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <title></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-3"></div>
            <div class="col-6">
                <div class="card" style="width: 24rem;">
                    <div class="card-body">
                        

                        <div class="form-group">
                            <label for="exampleInputPassword1">Old Password</label>
                            <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">-->
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" autocomplete="off" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">New Password</label>
                            <!--<input type="password" class="form-control" id="exampleInputPassword1">-->
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Confirm Password</label>
                            <!--<input type="password" class="form-control" id="exampleInputPassword1">-->
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <!--<button type="submit" class="btn btn-primary">Submit</button>-->
                        <asp:Button ID="Button1" runat="server" Text="Chnage" CssClass="btn col-12 btn-primary" OnClick="Button1_Click" />


                    </div>
                </div>
            </div>
            <div class="col-3"></div>

        </div>
    </div>
    <br />
    <br />
    <br />



    <!-- Javascript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>


</asp:Content>


