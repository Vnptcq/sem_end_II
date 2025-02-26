import { Outlet, Link, useNavigate } from "react-router-dom";
import logo from "../assets/images/all-img/logo.png";
import { useEffect, useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { logout } from "../redux/authSlice";
import { logoutUser } from "../redux/userSlide";
import { cartLogout } from "../redux/cartSlide";
import { getIn } from "formik";
const Guestlayout = () => {
  const user = localStorage.getItem("jwt_token");
  const role = useSelector((state)=>state.user?.profile?.role.roleName);
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const [cartCount,setCartCount]=useState(0);
  const [showModal, setShowModal] = useState(false);
  const handleCartClick = () => {
    const user = localStorage.getItem("jwt_token");
    if (!user) {
      setShowModal(true);
    } else {
      // Redirect to cart or do nothing (Link will handle navigation)
      navigate("cart")
    }
  };

  const closeModal = () => {
    setShowModal(false);
  };

  const handleLogout = () => {
    
    //dispath update state
    navigate("/");
    dispatch(logout());
    dispatch(logoutUser());
    dispatch(cartLogout());
    // Nếu có, xóa token từ localStorage hoặc sessionStorage
    localStorage.removeItem('jwt_token');
    window.location.reload();
    // Điều hướng về trang đăng nhập hoặc trang chủ nếu cần
    // Ví dụ: history.push('/login'); (nếu sử dụng react-router)

    
    


    const loadCartCount = async () => {
      const result = await axios.get(
        "http://localhost:8080/cart/cartCount"
      );
      console.log(result.data);
      setCartCount(result.data);
    };
   
    useEffect(() => {
      loadCartCount();
      loadCourses();
    }, []);

  }
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
                  <ul style={{paddingLeft: '0',margin: '9px'}}>
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
                    </li>
                    <li>
                      <Link
                        to="all_course"
                        className="nav-link"
                        href="allcourse.html"
                      >
                        Courses 
                      </Link>
                      
                        {role === 'User' && <ul>
                          <li>
                          <a className="nav-link" href="course3.html">
                            Your Courses
                          </a>
                        </li>
                        </ul>}
                      
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
                {/* <a href="#" className="hlc">
                  <i className="ti-heart"></i>
                  <span className="gactive">0</span>
                </a> */}

                  <Link to="cart" className="hlc" >
                  <i className="ti-shopping-cart-full"></i>
                  {/* <span className="gactive">2</span> */}
                </Link>

              </div>
              <div className="call_to_action">
                {user ? (
                  <>
                    <div className="call_to_action">
                    <div id="main-menu" style={{display:'inline-block',color:'white' }}>
                      <ul>
                        <li>
                          <Link to="/user/info" className="btn_two" style={{padding:'9px 30px'}}>
                            <i className="fa-solid fa-user"></i>
                          </Link>
                          <ul>
                            <li><Link className="nav-link" to='/user/info'>
                                User Profile
                              </Link>
                            </li>
                            <li><Link className="nav-link" to='/user/info'>
                                My Courses
                              </Link>
                            </li>
                            {role === 'Teacher' && <li><Link className="nav-link" to='/manage/manage_course'>
                                Manage Courses
                              </Link>
                            </li>}
                            {role === 'Admin' && <li><a className="nav-link" href="team-details.html">
                                Dashboard
                              </a>
                            </li>}
                          </ul>
                        </li>
                      </ul>
                    </div>
                      <button to="logout" className="btn_two" href="register.html" onClick={ handleLogout } >Log out</button>
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
                    <a href="#">Kids</a>
                  </li>
                  <li>
                    <a href="#">Teenage</a>
                  </li>
                  <li>
                    <a href="#">Adult</a>
                  </li>
                  <li>
                    <a href="#">IETLS</a>
                  </li>
                  <li>
                    <a href="#">TOEIC</a>
                  </li>
                </ul>
              </div>
            </div>

            {/* Company Links Section */}
            <div className="col-lg-3 col-sm-6 col-xs-12">
              <div className="single_footer">
                <h4>Quick Link</h4>
                <ul>
                  <li>
                    <a href="#">About us</a>
                  </li>
                  <li>
                    <a href="#">QA's</a>
                  </li>
                  <li>
                    <a href="#">Event</a>
                  </li>
                  <li>
                    <a href="#">Blog</a>
                  </li>
                  <li>
                    <a href="#">Courses</a>
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
                  <p>088 457 845 695</p>
                </div>
                <div className="sf_contact">
                  <span className="ti-email"></span>
                  <h3>Email</h3>
                  <p>victory_center@email.com</p>
                </div>
                <div className="sf_contact">
                  <span className="ti-map"></span>
                  <h3>Address</h3>
                  <p>HaNoi</p>
                </div>
              </div>
            </div>
          </div>

          {/* Footer Bottom Section */}
          <div className="row fc">
            <div className="col-lg-6 col-sm-6 col-xs-12">
              <div className="footer_copyright">
                <p>&copy; 2024. All Rights Reserved.</p>
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
