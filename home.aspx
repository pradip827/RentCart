<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link type="text/css" rel="stylesheet" href="homecss.css" />
</asp:Content>
<asp:Content ID="ContentPlaceHolder2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   	<!-- start features Area -->
	<section class="features-area section_gap">
		<div class="container">
			<div class="row features-inner">
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon1.png" alt="" />
						</div>
						<h6>a Delivery</h6>
						<p>Free Shipping on all order</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon2.png" alt="" />
						</div>
						<h6>Return Policy</h6>
						<p>Free Shipping on all order</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon3.png" alt="" />
						</div>
						<h6>24/7 Support</h6>
						<p>Free Shipping on all order</p>
					</div>
				</div>
				<!-- single features 
                     <ul class="nav navbar-nav menu_nav active">
                        <li class="nav-item submenu dropdown">
                            <% if (Session["username1"] == null) { %>
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Seller</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="sellerlogin.aspx">Login</a></li>
									<li class="nav-item"><a class="nav-link" href="sellerreg.aspx">Register</a></li>
								</ul>
                            <% 
                                             } else { %>

                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Seller</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="sellerprodadd.aspx">cloth</a></li>
									<li class="nav-item"><a class="nav-link" href="sellerreg.aspx">watch</a></li>
								</ul>
                            <li class="nav-item"><a class="nav-link" href="logout.aspx">Seller Logout</a></li>
                             <%} %>
							</li>
                            </ul
                    
                     -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon4.png" alt="" />
						</div>
						<h6>Secure Payment</h6>
						<p>Free Shipping on all order</p>
					</div>
				</div>
			
   
                </div>
		   
		</div>
	</section>
	

</asp:Content>



