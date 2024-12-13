
import e1 from'../assets/images/icon/ct1.svg'
import c1 from '../assets/images/all-img/c1.png'
import about2 from '../assets/images/all-img/about2.png'
import ep1 from '../assets/images/all-img/clients/1.png'
import ep2  from '../assets/images/all-img/about5.png'
import ep3 from '../assets/images/blog/1.png'

const Index2 =()=>{
    return(
        <>
	
	<section id="home" className="home_bg2"
		style={{backgroundImage: 'url(assets/images/banner/home2.png)',  backgroundSize:'cover', backgroundPosition:'center center' }}>
		<div className="container">
			<div className="row">
				<div className="col-lg-12 col-sm-12 col-xs-12 text-center">
					<div className="home_content hc_pt">
						<h1>Get smart <span><u>opportunity for</u></span> your best future</h1>
						<p>It is a long established fact that reader will be distracted readable content of a page when.
						</p>
					</div>
					<div className="home_sb">
						<form action="#" className="banner_subs">
							<input type="text" className="form-control home_si" placeholder="Search your course here"
								required="required"/>
							<button type="button" className="subscribe__btn">Search <i
									className="fa fa-paper-plane-o"></i></button>
						</form>
					</div>
					<div className="home_tag">
						<span>Popular Topic:</span>
						<a href="#">Design, </a>
						<a href="#">Development, </a>
						<a href="#">Graphics, </a>
						<a href="#">Marketing </a>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section className="tp_feature">
		<div className="container-fluid">
			<div className="row">
				<div className="col-lg-4 col-sm-4 col-xs-12 no-padding wow fadeInUp" data-wow-duration="1s"
					data-wow-delay="0.2s" data-wow-offset="0">
					<div className="single_tp">
						<h3>Quality Education</h3>
						<p>Lorem ipsum dolor sit amet, consectetur notted adipisicing elit sed do eiusmod tempor
							incididunt ut labore. </p>
						<a href="#" className="cta"><span>Explore</span>
							<svg width="13px" height="10px" viewBox="0 0 13 10">
								<path d="M1,5 L11,5"></path>
								<polyline points="8 1 12 5 8 9"></polyline>
							</svg>
						</a>
					</div>
				</div>
				<div className="col-lg-4 col-sm-4 col-xs-12 no-padding wow fadeInUp" data-wow-duration="1s"
					data-wow-delay="0.3s" data-wow-offset="0">
					<div className="single_tp">
						<h3>Experienced Teachers</h3>
						<p>Lorem ipsum dolor sit amet, consectetur notted adipisicing elit sed do eiusmod tempor
							incididunt ut labore.</p>
						<a href="#" className="cta"><span>Explore</span>
							<svg width="13px" height="10px" viewBox="0 0 13 10">
								<path d="M1,5 L11,5"></path>
								<polyline points="8 1 12 5 8 9"></polyline>
							</svg>
						</a>
					</div>
				</div>
				<div className="col-lg-4 col-sm-4 col-xs-12 no-padding wow fadeInUp" data-wow-duration="1s"
					data-wow-delay="0.4s" data-wow-offset="0">
					<div className="single_tp">
						<h3>Life Time Support</h3>
						<p>Lorem ipsum dolor sit amet, consectetur notted adipisicing elit sed do eiusmod tempor
							incididunt ut labore.</p>
						<a href="#" className="cta"><span>Explore</span>
							<svg width="13px" height="10px" viewBox="0 0 13 10">
								<path d="M1,5 L11,5"></path>
								<polyline points="8 1 12 5 8 9"></polyline>
							</svg>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	

	
	<section className="topic_content_p2 section-padding">
		<div className="container">
			<div className="section-title">
				<h2>Start Learning </h2>
				<p>Popular <span><u>Topics To Learn</u></span> From Today.</p>
			</div>
			<div className="row">
				<div className="col-lg-4 col-sm-6 col-xs-12">
					<div className="single_tca">
						<img src={e1} alt="" />
						<h2><a href="#">UI/UX Design</a></h2>
						<span>71 Courses</span>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12">
					<div className="single_tca">
						<img src={e1} alt="" />
						<h2><a href="#">Digital Program</a></h2>
						<span>59 Courses</span>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12">
					<div className="single_tca">
						<img src={e1} alt="" />
						<h2><a href="#">Finance</a></h2>
						<span>68 Courses</span>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12">
					<div className="single_tca">
						<img src={e1} alt="" />
						<h2><a href="#">Modern Physics</a></h2>
						<span>83 Courses</span>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12">
					<div className="single_tca">
						<img src={e1} alt="" />
						<h2><a href="#">Music Production</a></h2>
						<span>37 Courses</span>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12">
					<div className="single_tca">
						<img src={e1} alt="" />
						<h2><a href="#">Data Science</a></h2>
						<span>51 Courses</span>
					</div>
				</div>
				<div className="col-lg-12 text-center">
					<div className="cc_btn">
						<a className="btn_one" href="allcourse.html">View All category</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	

	
	<section className="ab_one section-padding">
		<div className="container">
			<div className="row">
				<div className="col-lg-6 col-sm-12 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s"
					data-wow-offset="0">
					<div className="ab_img">
						<img src={about2} className="img-fluid" alt="image"/>
					</div>
				</div>
				<div className="col-lg-6 col-sm-12 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="ab_content">
						<h2>Learn new skills to go <u><span>ahead for your </span></u> career.</h2>
						<p>Lorem ipsum dolor sit amet, consectetur notted adipisicing elit sed do eiusmod tempor
							incididunt ut labore et simply. From blogs to emails to ad copies, auto-generate catchy,
							original, and high-converting copies in popular tones languages.From blogs to emails to ad
							copies, auto-generate catchy, original and high-converting copies.</p>
						<p><strong>Auto-generate catchy original and high-converting copies in popular tones languages.
								From blogs to emails to ad copies auto-generate catchy</strong></p>
						<a className="btn_one" href="about.html">Read More us</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div className="bc_bg_two section-padding">
		<div className="container">
			<div className="section-title">
				<h2>Popular Courses</h2>
				<p>Choose Our <span><u>Top Courses</u></span></p>
			</div>
			<div className="row">
				<div className="col-lg-6 col-sm-12 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="course-slide2">
						<div className="course-img2">
							<img src={c1} alt=""/>
							<div className="course-date2">
								<span className="month2">$49</span>
							</div>
						</div>
						<div className="course-content2"><a className="c_btn2" href="single_course.html">Arts & Design</a>
							<h3><a href="single_course.html">Basic Fundamentals of Interior & Graphics Design</a></h3>
							<div className="co_list">
								<span><i className="fa fa-calendar"></i>3 Lessons</span>
								<span><i className="fa fa-clock-o"></i>3h 45m</span>
								<span><i className="fa fa-star"></i>4.9</span>
								<span><i className="fa fa-table"></i><strong>30 Seats Available</strong></span>
							</div>
						</div>
					</div>
				</div>
				<div className="col-lg-6 col-sm-12 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="course-slide2">
						<div className="course-img2">
							<img src={c1} alt=""/>
							<div className="course-date2">
								<span className="month2">$39</span>
							</div>
						</div>
						<div className="course-content2"><a className="c_btn2" href="single_course.html">Social</a>
							<h3><a href="single_course.html">Increasing Engagement with Instagram & Facebook</a></h3>
							<div className="co_list">
								<span><i className="fa fa-calendar"></i>3 Lessons</span>
								<span><i className="fa fa-clock-o"></i>3h 45m</span>
								<span><i className="fa fa-star"></i>4.9</span>
								<span><i className="fa fa-table"></i><strong>30 Seats Available</strong></span>
							</div>
						</div>
					</div>
				</div>
				<div className="col-lg-6 col-sm-12 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="course-slide2">
						<div className="course-img2">
							<img src={c1} alt=""/>
							<div className="course-date2">
								<span className="month2">$29</span>
							</div>
						</div>
						<div className="course-content2"><a className="c_btn2" href="single_course.html">Design</a>
							<h3><a href="single_course.html">Introduction to Color Theory & Basic UI/UX</a></h3>
							<div className="co_list">
								<span><i className="fa fa-calendar"></i>3 Lessons</span>
								<span><i className="fa fa-clock-o"></i>3h 45m</span>
								<span><i className="fa fa-star"></i>4.9</span>
								<span><i className="fa fa-table"></i><strong>30 Seats Available</strong></span>
							</div>
						</div>
					</div>
				</div>
				<div className="col-lg-6 col-sm-12 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="course-slide2">
						<div className="course-img2">
							<img src={c1}alt=""/>
							<div className="course-date2">
								<span className="month2">$59</span>
							</div>
						</div>
						<div className="course-content2"><a className="c_btn2" href="single_course.html">Technology</a>
							<h3><a href="single_course.html">Financial Security Thinking and Principles Theory</a></h3>
							<div className="co_list">
								<span><i className="fa fa-calendar"></i>3 Lessons</span>
								<span><i className="fa fa-clock-o"></i>3h 45m</span>
								<span><i className="fa fa-star"></i>4.9</span>
								<span><i className="fa fa-table"></i><strong>30 Seats Available</strong></span>
							</div>
						</div>
					</div>
				</div>
				<div className="col-lg-6 col-sm-12 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="course-slide2">
						<div className="course-img2">
							<img src={c1}alt=""/>
							<div className="course-date2">
								<span className="month2">$69</span>
							</div>
						</div>
						<div className="course-content2"><a className="c_btn2" href="single_course.html">Data Science</a>
							<h3><a href="single_course.html">Logo Design: From Concept to Presentation</a></h3>
							<div className="co_list">
								<span><i className="fa fa-calendar"></i>3 Lessons</span>
								<span><i className="fa fa-clock-o"></i>3h 45m</span>
								<span><i className="fa fa-star"></i>4.9</span>
								<span><i className="fa fa-table"></i><strong>30 Seats Available</strong></span>
							</div>
						</div>
					</div>
				</div>
				<div className="col-lg-6 col-sm-12 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="course-slide2">
						<div className="course-img2">
							<img src={c1}alt=""/>
							<div className="course-date2">
								<span className="month2">$99</span>
							</div>
						</div>
						<div className="course-content2"><a className="c_btn2" href="single_course.html">Development</a>
							<h3><a href="single_course.html">Professional Ceramic Moulding for Beginners</a></h3>
							<div className="co_list">
								<span><i className="fa fa-calendar"></i>3 Lessons</span>
								<span><i className="fa fa-clock-o"></i>3h 45m</span>
								<span><i className="fa fa-star"></i>4.9</span>
								<span><i className="fa fa-table"></i><strong>30 Seats Available</strong></span>
							</div>
						</div>
					</div>
				</div>
				<div className="col-lg-12 text-center">
					<div className="cc_btn">
						<a className="btn_one" href="allcourse.html">View All Course</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	

	
	<section id="counts" className="counts section-padding">
		<div className="container" data-aos="fade-up">
			<div className="section-title">
				<h2>Some Fun Fact</h2>
				<p>Our Great <span><u>Achievement</u></span></p>
			</div>
			<div className="row gy-4">
				<div className="col-lg-3 col-md-6">
					<div className="count-box">
						<i className="ti-face-smile"></i>
						<div>
							<span data-purecounter-start="0" data-purecounter-end="8232" data-purecounter-duration="1"
								className="purecounter"></span>
							<p>Enrolled Students</p>
						</div>
					</div>
				</div>
				<div className="col-lg-3 col-md-6">
					<div className="count-box">
						<i className="ti-files" style={{color: '#ee6c20'}}></i>
						<div>
							<span data-purecounter-start="0" data-purecounter-end="521" data-purecounter-duration="1"
								className="purecounter"></span>
							<p>Academic Programs</p>
						</div>
					</div>
				</div>
				<div className="col-lg-3 col-md-6">
					<div className="count-box">
						<i className="ti-headphone-alt" style={{color: '#15be56'}}></i>
						<div>
							<span data-purecounter-start="0" data-purecounter-end="163" data-purecounter-duration="1"
								className="purecounter"></span>
							<p>Winning Award</p>
						</div>
					</div>
				</div>
				<div className="col-lg-3 col-md-6">
					<div className="count-box">
						<i className="ti-user" style={{color: '#bb0852'}}></i>
						<div>
							<span data-purecounter-start="0" data-purecounter-end="93" data-purecounter-duration="1"
								className="purecounter"></span>
							<p>Certified Students</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	

	
	<section className="vid_area section-padding"
		style={{backgroundImage: 'url(assets/images/banner/video.jpg)',  backgroundSize:'cover', backgroundPosition: 'center center',backgroundAttachment:'fixed'}}>
		<div className="container">
			<div className="row">
				<div className="col-lg-12 vp_top wow fadeInUDown" data-wow-duration="1s" data-wow-delay="0.2s"
					data-wow-offset="0">
					<div className="video-area">
						<a href="https://www.youtube.com/watch?v=RXv_uIN6e-Y" className="magnific_popup video-button"><i
								className="fa fa-play"></i></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	

	
	<div className="partner-logo section-padding">
		<div className="container">
			<div className="row">
				<div className="col-lg-12 text-center">
					<div className="partner_title">
						<h3>Trusted Company Arround The World! </h3>
					</div>
					<div className="partner">
						<a href="#"><img src={ep1} alt="image"/></a>
						<a href="#"><img src={ep1} alt="image"/></a>
						<a href="#"><img src={ep1} alt="image"/></a>
						<a href="#"><img src={ep1} alt="image"/></a>
						<a href="#"><img src={ep1} alt="image"/></a>
						<a href="#"><img src={ep1} alt="image"/></a>
						<a href="#"><img src={ep1} alt="image"/></a>
						<a href="#"><img src={ep1} alt="image"/></a>
						<a href="#"><img src={ep1} alt="image"/></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	

	
	<section className="course_promo section-padding">
		<div className="container">
			<div className="row">
				<div className="col-lg-6 col-sm-12 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="cp_content">
						<h4>Best Online Learning Platform</h4>
						<h2>Grow Your Skill, Define Your <span><u>Bright Future</u></span> For You</h2>
						<p>From blogs to emails to ad copies, auto-generate catchy, original, and high-converting copies
							in popular tones languages.</p>
						<ul>
							<li><span className="ti-check"></span>Learn At Your Own Multiple Courses </li>
							<li><span className="ti-check"></span>We Provide Study Materials </li>
							<li><span className="ti-check"></span>Friendly Environment & Expert Teacher</li>
						</ul>
					</div>
					<div className="cp_btn">
						<a href="#" className="cta"><span>Explore Our Courses</span>
							<svg width="13px" height="10px" viewBox="0 0 13 10">
								<path d="M1,5 L11,5"></path>
								<polyline points="8 1 12 5 8 9"></polyline>
							</svg>
						</a>
					</div>
				</div>
				<div className="col-lg-6 col-sm-12 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s"
					data-wow-offset="0">
					<div className="cp_img">
						<img src="ep2" className="img-fluid" alt="image"/>
					</div>
				</div>
			</div>
		</div>
	</section>
	

	
	<section id="pricing" className="price_area section-padding">
		<div className="container">
			<div className="section-title">
				<h2>Pricing Plan</h2>
				<p>Take A Look At The <span><u>pricing plan</u></span></p>
			</div>
			<div className="row">
				<div className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="pricing_design">
						<div className="single-pricing">
							<div className="price-head">
								<h2>Free</h2>
								<h1>$0</h1>
								<span>/Monthly</span>
								<span className="upgrade_price">Upgrade as you need</span>
							</div>
							<ul>
								<li><span className="ti-notepad"></span> Learn at your own pace</li>
								<li><span className="ti-file"></span> Learn at your own pace</li>
								<li><span className="ti-light-bulb"></span> Learn at your own pace</li>
								<li><span className="ti-star"></span> Learn at your own pace</li>
								<li><span className="ti-image"></span> Learn at your own pace</li>
								<li><span className="ti-flag"></span> Learn at your own pace</li>
							</ul>
							<div className="pricing-price">

							</div>
							<a href="#" className="price_btn">Start Now</a>
						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s"
					data-wow-offset="0">
					<div className="pricing_design">
						<div className="single-pricing">
							<div className="price-head">
								<h2>Saver plan</h2>
								<h1 className="price">$29</h1>
								<span>/Monthly</span>
								<span className="upgrade_price">$348 Per Year</span>
							</div>
							<ul>
								<li><span className="ti-notepad"></span> Learn at your own pace</li>
								<li><span className="ti-file"></span> Learn at your own pace</li>
								<li><span className="ti-light-bulb"></span> Learn at your own pace</li>
								<li><span className="ti-star"></span> Learn at your own pace</li>
								<li><span className="ti-image"></span> Learn at your own pace</li>
								<li><span className="ti-flag"></span> Learn at your own pace</li>
							</ul>
							<div className="pricing-price">

							</div>
							<a href="#" className="price_btn">Subscribe Now</a>
						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s"
					data-wow-offset="0">
					<div className="pricing_design">
						<div className="single-pricing">
							<div className="price-head">
								<h2>Unlimited plan</h2>
								<h1 className="price">$49</h1>
								<span>/Monthly</span>
								<span className="upgrade_price">$588 Per Year</span>
							</div>
							<ul>
								<li><span className="ti-notepad"></span> Learn at your own pace</li>
								<li><span className="ti-file"></span> Learn at your own pace</li>
								<li><span className="ti-light-bulb"></span> Learn at your own pace</li>
								<li><span className="ti-star"></span> Learn at your own pace</li>
								<li><span className="ti-image"></span> Learn at your own pace</li>
								<li><span className="ti-flag"></span> Learn at your own pace</li>
							</ul>
							<div className="pricing-price">

							</div>
							<a href="#" className="price_btn">Subscribe Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	

	
	<section className="newsletter_area section-padding">
		<div className="container">
			<div className="row text-center">
				<div className="col-lg-6 offset-lg-3 col-sm-12 col-xs-12">
					<div className="subs_form">
						<h3>Subscripbe to our newsletter, We don't make any spam.</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elitsed eiusmod tempor enim minim</p>
						<form action="#" className="home_subs">
							<input type="text" className="form-control subscribe__input"
								placeholder="Enter your Email Address" required="required"/>
							<button type="button" className="subscribe__btn"><i className="fa fa-paper-plane-o"></i></button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	

	
	<section id="blog" className="blog_area section-padding">
		<div className="container">
			<div className="section-title">
				<h2>Blog & Airticle</h2>
				<p>Take A Look At The <span><u>Latest Articles</u></span></p>
			</div>
			<div className="row">
				<div className="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="single_blog">
						<img src={ep3} className="img-fluid" alt="image" />
						<div className="content_box">
							<span>August 25, 2023 | <a href="blog_single.html">Design</a></span>
							<h2><a href="blog_single.html">Professional Mobile Painting and Sculpting</a></h2>
							<a href="#" className="cta"><span>READ MORE</span>
								<svg width="13px" height="10px" viewBox="0 0 13 10">
									<path d="M1,5 L11,5"></path>
									<polyline points="8 1 12 5 8 9"></polyline>
								</svg>
							</a>
						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="single_blog">
						<img src={ep2} className="img-fluid" alt="image" />
						<div className="content_box">
							<span>August 26, 2023 | <a href="blog_single.html">Education</a></span>
							<h2><a href="blog_single.html">Professional Ceramic Moulding for Beginner</a></h2>
							<a href="#" className="cta"><span>READ MORE</span>
								<svg width="13px" height="10px" viewBox="0 0 13 10">
									<path d="M1,5 L11,5"></path>
									<polyline points="8 1 12 5 8 9"></polyline>
								</svg>
							</a>
						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s"
					data-wow-offset="0">
					<div className="single_blog">
						<div className="content_box">
							<span>August 28, 2023 | <a href="blog_single.html">Programing</a></span>
							<h2><a href="blog_single.html">Education Is About Create Leaders For Tomorrow </a></h2>
							<a href="#" className="cta"><span>READ MORE</span>
								<svg width="13px" height="10px" viewBox="0 0 13 10">
									<path d="M1,5 L11,5"></path>
									<polyline points="8 1 12 5 8 9"></polyline>
								</svg>
							</a>
						</div>
					</div>
					<div className="single_blog">
						<div className="content_box">
							<span>August 28, 2023 | <a href="blog_single.html">Programing</a></span>
							<h2><a href="blog_single.html">Education Is About Create Leaders For Tomorrow </a></h2>
							<a href="#" className="cta"><span>READ MORE</span>
								<svg width="13px" height="10px" viewBox="0 0 13 10">
									<path d="M1,5 L11,5"></path>
									<polyline points="8 1 12 5 8 9"></polyline>
								</svg>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
        </>
    )
}
export default Index2;