import React from 'react';
import '../assets/bootstrap/css/bootstrap.min.css'; // Import từ thư mục assets
import '../assets/fonts/font-awesome.min.css'; // Import từ thư mục assets
import '../assets/fonts/themify-icons.css'; // Import từ thư mục assets
import '../assets/owlcarousel/css/owl.carousel.css'; // Import từ thư mục assets
import '../assets/owlcarousel/css/owl.theme.css'; // Import từ thư mục assets
import logo from '../assets/images/all-img/logo.png';


const Header = () => {
    return (
        <>

            {/* START NAVBAR */}
            <div id="navigation" className="fixed-top navbar-light bg-faded site-navigation">
                <div className="container">
                    <div className="row">
                        <div className="col-lg-2 col-md-3 col-sm-4">
                            <div className="site-logo">
                                <a href="index-2.html"><img src={logo} alt="" /></a>
                            </div>
                        </div> {/* END Col */}

                        <div className="col-lg-6 col-md-9 col-sm-8">
                            <div className="header_right">
                                <nav id="main-menu" className="ms-auto">
                                    <ul>
                                        <li><a className="nav-link" href="index-2.html">Home <span className="ti-angle-down"></span></a>
                                            <ul>
                                                <li><a className="nav-link" href="index-2.html">Home 01</a></li>
                                                <li><a className="nav-link" href="index_2.html">Home 02</a></li>
                                                <li><a className="nav-link" href="index_3.html">Home 03</a></li>
                                            </ul>
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
                                        <li><a className="nav-link" href="allcourse.html">Courses <span className="ti-angle-down"></span></a>
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
                        </div> {/* END Col */}
                        
                        <div className="col-lg-4 col-md-3 col-sm-8">
                            <div className="home_lc">
                                <a href="#" className="hlc">
                                    <i className="ti-heart"></i>
                                    <span className="gactive">0</span>
                                </a>
                                <a href="#" className="hlc">
                                    <i className="ti-shopping-cart-full"></i>
                                    <span className="gactive">2</span>
                                </a>
                            </div>
                            <div className="call_to_action">
                                <a className="btn_one" href="login.html">Login</a>
                                <a className="btn_two" href="register.html">Sign Up</a>
                            </div>
                        </div> {/* END Col */}
                    </div> {/* END ROW */}
                </div> {/* END CONTAINER */}
            </div>
            {/* END NAVBAR */}

            
        </>
    );
}

export default Header;
