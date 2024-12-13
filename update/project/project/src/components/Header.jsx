import logo from'../assets/images/all-img/logo.png'
import logo2 from '../assets/images/all-img/logo2.png'

const Header = ()=> {
    return(
        <>
       <section className="logo-contact">
		<div className="container">
			<div className="row">
				<div className="col-lg-3 col-md-4 col-sm-6 col-xs-12">
					<div className="single-top-contact">
						<i className="fa fa-phone"></i>
						<h4>+880 1934 781924</h4>
					</div>
				</div>
				<div className="col-lg-3 col-md-4 col-sm-6 col-xs-12">
					<div className="single-top-contact">
						<i className="fa fa-envelope"></i>
						<h4><a href="mailto:example@gmail.com">example@mail.com</a></h4>
					</div>
				</div>
				<div className="col-lg-3 col-md-4 col-sm-6 col-xs-12">
					<div className="single-top-contact">
						<i className="fa fa-clock-o"></i>
						<h4>Mon to sat Open: 9am - 6pm</h4>
					</div>
				</div>
				<div className="col-lg-3 col-md-4 col-sm-6 col-xs-12">
					<div className="top_social_profile">
						<ul>
							<li><a href="#" className="top_f_facebook"><i className="fa fa-facebook" title="Facebook"></i></a>
							</li>
							<li><a href="#" className="top_f_twitter"><i className="fa fa-twitter" title="Twitter"></i></a></li>
							<li><a href="#" className="top_f_instagram"><i className="fa fa-instagram"
										title="Instagram"></i></a></li>
							<li><a href="#" className="top_f_linkedin"><i className="fa fa-linkedin" title="LinkedIn"></i></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
    
        <div id="navigation" className="navbar-light bg-faded site-navigation">
		<div className="container">
			<div className="row">
				<div className="col-lg-2 col-md-3 col-sm-4">
					<div className="site-logo">
						<a href="index_2.html"><img src={logo2} alt=""/></a>
					</div>
				</div>

				<div className="col-lg-6 col-md-9 col-sm-8 ">
					<div className="header_right ">
						<nav id="main-menu" className="ms-auto">
							<ul>
								<li><a className="nav-link" href="index_2.html">Home</a>

								</li>
								<li><a className="nav-link" href="#">Pages <span className="ti-angle-down"></span></a>
									<ul>
										<li><a className="nav-link" href="about.html">About Us</a></li>
										<li><a className="nav-link" href="team.html">Instructor</a></li>
										<li><a className="nav-link" href="team-details.html">Instructor Details</a></li>
										<li><a className="nav-link" href="faq.html">FAQ's</a></li>
										<li><a className="nav-link" href="event.html">Event</a></li>
										<li><a className="nav-link" href="event_single.html">Event Single</a></li>
										<li><a className="nav-link" href="error.html">404 Page</a></li>
										<li><a className="nav-link" href="login.html">Login</a></li>
										<li><a className="nav-link" href="register.html">Register</a></li>
									</ul>
								</li>
								<li><a className="nav-link" href="allcourse.html">Courses <span
											className="ti-angle-down"></span></a>
									<ul>
										<li><a className="nav-link" href="allcourse.html">Courses 01</a></li>
										<li><a className="nav-link" href="course2.html">Courses 02</a></li>
										<li><a className="nav-link" href="course3.html">Courses 03</a></li>
										<li><a className="nav-link" href="course-sidebar.html">Course Sidebar</a></li>
										<li><a className="nav-link" href="single_course.html">Course details</a></li>
									</ul>
								</li>
								<li><a className="nav-link" href="shop.html">Shop <span className="ti-angle-down"></span></a>
									<ul>
										<li><a className="nav-link" href="shop.html">Shop</a></li>
										<li><a className="nav-link" href="single_shop.html">Single Shop</a></li>
										<li><a className="nav-link" href="cart.html">Cart Page</a></li>
										<li><a className="nav-link" href="checkout.html">Checkout page</a></li>
									</ul>
								</li>
								<li><a className="nav-link" href="blog.html">Blog <span className="ti-angle-down"></span></a>
									<ul>
										<li><a className="nav-link" href="blog.html">Blog List</a></li>
										<li><a className="nav-link" href="blog_single.html">Single Blog</a></li>
									</ul>
								</li>
								<li><a className="nav-link" href="contact.html">Contact</a></li>
							</ul>
						</nav>
						<div id="mobile_menu"></div>
					</div>
				</div>
				<div className="col-lg-4 col-md-3 col-sm-8">
					<div className="call_to_action">
						<a className="btn_one" href="contact.html">Contact Us</a>
						<a className="btn_two" href="register.html">My Account</a>
					</div>
				</div>
			</div>
		</div>
	</div>
        </>
    )
}
export default Header;