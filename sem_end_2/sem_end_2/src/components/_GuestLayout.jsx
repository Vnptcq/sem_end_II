import { Outlet, Link } from "react-router-dom";
import logo from "../assets/images/all-img/logo.png";
import { useState } from "react";
import { useSelector } from "react-redux";
const Guestlayout = () => {
  const user = useSelector((state)=>state.auth.login.token);
  // const role = useSelector((state)=>state.user.profile.role.roleName);
  return (
    <>
      <div
        id="navigation"
        className="fixed-top navbar-light bg-faded site-navigation"
      >
        <div className="container">
          <div className="row">
            {/* Logo Section */}
            <div className="col-lg-2 col-md-3 col-sm-4">
              <div className="site-logo">
                <Link to="/" href="index.html">
                  <img src={logo} alt="Site Logo" />
                </Link>
              </div>
            </div>

            {/* Menu Section */}
            <div className="col-lg-6 col-md-9 col-sm-8">
              <div className="header_right">
                <nav id="main-menu" className="ms-auto">
                  <ul>
                    <li>
                      <Link to="/" className="nav-link">
                        Home
                      </Link>
                    </li>
                    <li>
                      <Link
                        to="intructors"
                        className="nav-link"
                        href="team.html"
                      >
                        Instructor
                      </Link>
                      <ul>
                        <li>
                          <Link
                            to="intructors"
                            className="nav-link"
                            href="team.html"
                          >
                            Instructor
                          </Link>
                        </li>
                        <li>
                          <a className="nav-link" href="team-details.html">
                            Instructor Details
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <Link
                        to="all_course"
                        className="nav-link"
                        href="allcourse.html"
                      >
                        Courses <span className="ti-angle-down"></span>
                      </Link>
                      <ul>
                        <li>
                          <Link to="all_course" className="nav-link">
                            All Courses
                          </Link>
                        </li>
                        <li>
                          <a className="nav-link" href="course3.html">
                            Favorite Course
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <Link to="blog" className="nav-link" href="blog.html">
                        Blog{" "}
                      </Link>
                    </li>
                    <li>
                      <Link to="event" className="nav-link" href="event.html">
                        Event
                      </Link>
                    </li>
                    <li>
                      <Link to="faq" className="nav-link" href="faq.html">
                        FAQ's
                      </Link>
                    </li>
                    <li>
                      <a className="nav-link" href="about.html">
                        About Us
                      </a>
                    </li>
                    <li>
                      <Link
                        to="contact"
                        className="nav-link"
                        href="contact.html"
                      >
                        Contact
                      </Link>
                    </li>
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
                <Link to="cart" className="hlc">
                  <i className="ti-shopping-cart-full"></i>
                  <span className="gactive">2</span>
                </Link>
              </div>
              <div className="call_to_action">
                {user ? (
                  <>
                    <div className="call_to_action">
                    <div id="main-menu" style={{display:'inline-block'}}>
                      <ul>
                        <li>
                          <Link to="userInfo" className="btn_two" style={{padding:'9px 30px'}}>
                            <i className="fa-solid fa-user"></i>
                          </Link>
                          <ul>
                            <li><a className="nav-link" href="team-details.html">
                                Your Information
                              </a>
                            </li>
                          </ul>
                        </li>
                      </ul>
                    </div>
                      <Link to="logout" className="btn_two" href="register.html">Log out</Link>
                    </div>
                  </>
                ) : (
                  <>
                    <div className="call_to_action">
                      <Link to="login" className="btn_one" href="login.html">
                        Login
                      </Link>
                      <Link
                        to="sign_up"
                        className="btn_two"
                        href="register.html"
                      >
                        Sign Up
                      </Link>
                    </div>
                  </>
                )}
              </div>
            </div>
          </div>
        </div>
      </div>
      <Outlet />
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
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce
                  vitae risus nec dui venenatis dignissim.
                </p>
              </div>
              <div className="foot_social">
                <ul>
                  <li>
                    <a href="#">TW</a>
                  </li>
                  <li>
                    <a href="#">FB</a>
                  </li>
                  <li>
                    <a href="#">INS</a>
                  </li>
                  <li>
                    <a href="#">YT</a>
                  </li>
                </ul>
              </div>
            </div>

            {/* Courses Section */}
            <div className="col-lg-3 col-sm-6 col-xs-12">
              <div className="single_footer">
                <h4>Courses</h4>
                <ul>
                  <li>
                    <a href="#">Creative Writing</a>
                  </li>
                  <li>
                    <a href="#">Digital Marketing</a>
                  </li>
                  <li>
                    <a href="#">SEO Business</a>
                  </li>
                  <li>
                    <a href="#">Social Marketing</a>
                  </li>
                  <li>
                    <a href="#">Graphic Design</a>
                  </li>
                  <li>
                    <a href="#">Website Development</a>
                  </li>
                </ul>
              </div>
            </div>

            {/* Company Links Section */}
            <div className="col-lg-3 col-sm-6 col-xs-12">
              <div className="single_footer">
                <h4>Company</h4>
                <ul>
                  <li>
                    <a href="#">About us</a>
                  </li>
                  <li>
                    <a href="#">Knowledge Base</a>
                  </li>
                  <li>
                    <a href="#">Affiliate Program</a>
                  </li>
                  <li>
                    <a href="#">Community</a>
                  </li>
                  <li>
                    <a href="#">Market API</a>
                  </li>
                  <li>
                    <a href="#">Support team</a>
                  </li>
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
                  <li>
                    <a href="#">Terms of use</a>
                  </li>
                  <li>
                    <a href="#">Privacy Policy</a>
                  </li>
                  <li>
                    <a href="#">Cookie Policy</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      {/* END FOOTER */}
    </>
  );
};

export default Guestlayout;
