import React from "react";
import logo from'../assets/images/all-img/logo.png';
const Header = () => {
  return (
    <>
      <div id="navigation" className="fixed-top navbar-light bg-faded site-navigation">
        <div className="container">
          <div className="row">
            {/* Logo Section */}
            <div className="col-lg-2 col-md-3 col-sm-4">
              <div className="site-logo">
                <a href="index.html">
                  <img src={logo} alt="Site Logo" />
                </a>
              </div>
            </div>

            {/* Menu Section */}
            <div className="col-lg-6 col-md-9 col-sm-8">
              <div className="header_right">
                <nav id="main-menu" className="ms-auto">
                  <ul>
                    <li><a className="nav-link" href="index.html">Home</a></li>
                    <li>
                      <a className="nav-link" href="#">Pages <span className="ti-angle-down"></span></a>
                      <ul>
                        <li><a className="nav-link" href="about.html">About Us</a></li>
                        <li><a className="nav-link" href="team.html">Instructor</a></li>
                        <li><a className="nav-link" href="team-details.html">Instructor Details</a></li>
                      </ul>
                    </li>
                    <li>
                      <a className="nav-link" href="allcourse.html">Courses <span className="ti-angle-down"></span></a>
                      <ul>
                        <li><a className="nav-link" href="allcourse.html">All Courses</a></li>
                        <li><a className="nav-link" href="course3.html">Favorite Course</a></li>
                      </ul>
                    </li>
                    <li>
                      <a className="nav-link" href="blog.html">Blog <span className="ti-angle-down"></span></a>
                      <ul>
                        <li><a className="nav-link" href="blog.html">Blog List</a></li>
                        <li><a className="nav-link" href="blog_single.html">Single Blog</a></li>
                      </ul>
                    </li>
                    <li><a className="nav-link" href="event.html">Event</a></li>
                    <li><a className="nav-link" href="faq.html">FAQ's</a></li>
                    <li><a className="nav-link" href="about.html">About Us</a></li>
                    <li><a className="nav-link" href="contact.html">Contact</a></li>
                  </ul>
                </nav>
                <div id="mobile_menu"></div>
              </div>
            </div>

            {/* Cart and Login/Signup Section */}
            <div className="col-lg-4 col-md-3 col-sm-8">
              <div className="home_lc">
                <a href="#" className="hlc">
                  <i className="ti-heart"></i>
                  <span className="gactive">0</span>
                </a>
                <a href="cart.html" className="hlc">
                  <i className="ti-shopping-cart-full"></i>
                  <span className="gactive">2</span>
                </a>
              </div>
              <div className="call_to_action">
                <a className="btn_one" href="login.html">Login</a>
                <a className="btn_two" href="register.html">Sign Up</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default Header;
