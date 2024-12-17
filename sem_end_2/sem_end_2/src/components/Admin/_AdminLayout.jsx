
import { Outlet, Link } from 'react-router-dom';
import logo from'/src/assets/images/all-img/logo.png';

const AdminLayout =()=>{
    return (
        <>
        	{/* <!-- START LOGO WITH CONTACT --> */}
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
	{/* <!-- END LOGO WITH CONTACT --> */}

	{/* <!-- START NAVBAR --> */}
	<div id="navigation" className="navbar-light bg-faded site-navigation">
		<div className="container">
			<div className="row">
				<div className="col-lg-2 col-md-3 col-sm-4">
					<div className="site-logo">
						<a href="index_2.html"><img src={logo} alt=""/></a>
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
	{/* <!-- END NAVBAR --> */}
            <Outlet/>
        {/* START FOOTER */}
      <div className="footer section-padding">
        <div className="container">
          <div className="row">
            {/* Company Info Section */}
            <div className="col-lg-3 col-sm-6 col-xs-12">
              <div className="single_footer">
                <a href="index.html">
                  <img src={logo} alt="Company Logo" />
                </a>
                <p>
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vitae risus nec dui venenatis
                  dignissim.
                </p>
              </div>
              <div className="foot_social">
                <ul>
                  <li><a href="#">TW</a></li>
                  <li><a href="#">FB</a></li>
                  <li><a href="#">INS</a></li>
                  <li><a href="#">YT</a></li>
                </ul>
              </div>
            </div>

            {/* Courses Section */}
            <div className="col-lg-3 col-sm-6 col-xs-12">
              <div className="single_footer">
                <h4>Courses</h4>
                <ul>
                  <li><a href="#">Creative Writing</a></li>
                  <li><a href="#">Digital Marketing</a></li>
                  <li><a href="#">SEO Business</a></li>
                  <li><a href="#">Social Marketing</a></li>
                  <li><a href="#">Graphic Design</a></li>
                  <li><a href="#">Website Development</a></li>
                </ul>
              </div>
            </div>

            {/* Company Links Section */}
            <div className="col-lg-3 col-sm-6 col-xs-12">
              <div className="single_footer">
                <h4>Company</h4>
                <ul>
                  <li><a href="#">About us</a></li>
                  <li><a href="#">Knowledge Base</a></li>
                  <li><a href="#">Affiliate Program</a></li>
                  <li><a href="#">Community</a></li>
                  <li><a href="#">Market API</a></li>
                  <li><a href="#">Support team</a></li>
                </ul>
              </div>
            </div>

            {/* Contact Info Section */}
            <div className="col-lg-3 col-sm-6 col-xs-12">
              <div className="single_footer">
                <h4>Contact Info</h4>
                <div className="sf_contact">
                  <span className="ti-mobile"></span>
                  <h3>Phone number</h3>
                  <p>+88 457 845 695</p>
                </div>
                <div className="sf_contact">
                  <span className="ti-email"></span>
                  <h3>Email Address</h3>
                  <p>example@yourmail.com</p>
                </div>
                <div className="sf_contact">
                  <span className="ti-map"></span>
                  <h3>Office Address</h3>
                  <p>California, USA</p>
                </div>
              </div>
            </div>
          </div>

          {/* Footer Bottom Section */}
          <div className="row fc">
            <div className="col-lg-6 col-sm-6 col-xs-12">
              <div className="footer_copyright">
                <p>&copy; 2023. All Rights Reserved.</p>
              </div>
            </div>
            <div className="col-lg-6 col-sm-6 col-xs-12">
              <div className="footer_menu">
                <ul>
                  <li><a href="#">Terms of use</a></li>
                  <li><a href="#">Privacy Policy</a></li>
                  <li><a href="#">Cookie Policy</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      {/* END FOOTER */}
        </>
    )
}

export default AdminLayout;