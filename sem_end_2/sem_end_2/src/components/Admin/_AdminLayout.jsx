
import { Outlet, Link } from 'react-router-dom';
import logo from'/src/assets/images/all-img/logo.png';
import { useDispatch } from 'react-redux';
import { logout } from '../../redux/authSlice';
import { logoutUser } from '../../redux/userSlide';
import { cartLogout } from '../../redux/cartSlide';

const AdminLayout =()=>{
	const dispatch = useDispatch();
	const handleLogout = () => {
		dispatch(logout());
		dispatch(logoutUser());
		dispatch(cartLogout());
		history.push('/');
		// Điều hướng về trang đăng nhập hoặc trang chủ nếu cần
		// Ví dụ: history.push('/login'); (nếu sử dụng react-router)
	};
    return (
        <>
        	{/* <!-- START LOGO WITH CONTACT --> */}
	{/* <!-- END LOGO WITH CONTACT --> */}

	{/* <!-- START NAVBAR --> */}
	<div id="navigation" className="navbar-light bg-faded site-navigation">
		<div className="container">
			<div className="row">
				<div className="col-lg-2 col-md-3 col-sm-4">
					<div className="site-logo">
						<Link to="/"><img src={logo} alt=""/></Link>
					</div>
				</div>

				<div className="col-lg-6 col-md-9 col-sm-8 ">
					<div className="header_right ">
						<nav id="main-menu" className="ms-auto">
							<ul>
								<li><a className="nav-link" href="index_2.html">Course</a>

								</li>
								
								<li><a className="nav-link" href="allcourse.html">User <span
											className="ti-angle-down"></span></a>
									<ul>
										<li><a className="nav-link" href="allcourse.html">Courses 01</a></li>
										<li><a className="nav-link" href="course2.html">Courses 02</a></li>
										<li><a className="nav-link" href="course3.html">Courses 03</a></li>
										<li><a className="nav-link" href="course-sidebar.html">Course Sidebar</a></li>
										<li><a className="nav-link" href="single_course.html">Course details</a></li>
									</ul>
								</li>
								
							</ul>
						</nav>
						<div id="mobile_menu"></div>
					</div>
				</div>
				<div className="col-lg-4 col-md-3 col-sm-8">
					<div className="call_to_action">
						<button to="logout" className="btn_two" href="register.html" onClick={ handleLogout } >Log out</button>
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
            

            {/* Courses Section */}
            

            {/* Company Links Section */}
            

            {/* Contact Info Section */}
           
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