import React from 'react';
import '../assets/bootstrap/css/bootstrap.min.css'; // Import từ thư mục assets
import '../assets/fonts/font-awesome.min.css'; // Import từ thư mục assets
import '../assets/fonts/themify-icons.css'; // Import từ thư mục assets
import '../assets/owlcarousel/css/owl.carousel.css'; // Import từ thư mục assets
import '../assets/owlcarousel/css/owl.theme.css'; // Import từ thư mục assets
import logo from '../assets/images/all-img/logo.png';



const Footer = () => {
    return (
        <>
            {/* START FOOTER */}
            <div className="footer section-padding">
                <div className="container">
                    <div className="row">
                        <div className="col-lg-3 col-sm-6 col-xs-12">
                            <div className="single_footer">
                                <a href="index-2.html"><img src={logo} alt="Logo" /></a>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vitae risus nec dui venenatis dignissim.</p>
                            </div>
                            <div className="foot_social">
                                <ul>
                                    <li><a href="#">TW</a></li>
                                    <li><a href="#">FB</a></li>
                                    <li><a href="#">INS</a></li>
                                    <li><a href="#">YT</a></li>
                                </ul>
                            </div>
                        </div>{/* END COL */}
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
                        </div>{/* END COL */}
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
                        </div>{/* END COL */}
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
                                    <p>example#yourmail.com</p>
                                </div>
                                <div className="sf_contact">
                                    <span className="ti-map"></span>
                                    <h3>Office Address</h3>
                                    <p>California, USA</p>
                                </div>
                            </div>
                        </div>{/* END COL */}
                    </div>{/* END ROW */}
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
                        </div>{/* END COL */}
                    </div>
                </div>{/* END CONTAINER */}
            </div>
            {/* END FOOTER */}
        </>
    );
};

export default Footer;
