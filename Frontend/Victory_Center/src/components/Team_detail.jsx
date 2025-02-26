import React from "react";
import c1 from '../assets/images/all-img/c1.png';
import c2 from '../assets/images/all-img/c2.png';
import c3 from '../assets/images/all-img/c3.png';
import c4 from '../assets/images/all-img/c4.png';
import c5 from '../assets/images/all-img/c5.png';
import c6 from '../assets/images/all-img/c6.png';
import i1 from '../assets/images/all-img/team-details.png';
const Team_detail = () => {
  return (
    <>
	<section className="section-top">
		<div className="container">
			<div className="col-lg-10 offset-lg-1 text-center">
				<div className="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s"
					data-wow-offset="0">
					<h1>Instructor Details</h1>
					<ul>
						<li><a href="index-2.html">Home</a></li>
						<li> / Team Details</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	

	
	<section className="template_agent section-padding">
		<div className="container">
			<div className="row">
				<div className="col-lg-12 col-sm-12 col-xs-12">
					<div className="single_agent">
						<div className="single_agent_image">
							<img src={i1} className="img-fluid" alt="" />
						</div>
						<div className="single_agent_content">
							<h4>Bondo Kader Khan</h4>
							<h5>Digital Marketer</h5>
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
								has been the industry's standard dummy text ever type book.</p>
							<ul>
								<li><i className="fa fa-envelope-o"></i>yourmail@gmail.com</li>
								<li><i className="fa fa-phone"></i>(+123) 123 123 123</li>
								<li><i className="fa fa-plane"></i>www.yourdomainname.com</li>
								<li><i className="fa fa-skype"></i>skype.address</li>
							</ul>
						</div>
						<div className="agent_social">
							<ul className="list-inline">
								<li><a href="#" className="top_f_facebook"><img src="assets/images/icon/fb.svg"
											alt="" /></a></li>
								<li><a href="#" className="top_f_facebook"><img src="assets/images/icon/tw.svg"
											alt="" /></a></li>
								<li><a href="#" className="top_f_facebook"><img src="assets/images/icon/pn.svg"
											alt="" /></a></li>
								<li><a href="#" className="top_f_facebook"><img src="assets/images/icon/ins.svg"
											alt="" /></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	

	
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
	


	<div className="best-cpurse section-padding">
		<div className="container">
			<div className="section-title">
				<h2>Popular Courses</h2>
				<p>Choose Our <span><u>Top Courses</u></span></p>
			</div>
			<div className="row">
				<div className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="course-slide">
						<div className="course-img">
							<img src={c1} alt=""/>
							<div className="course-date">
								<span className="month">$49</span>
							</div>
						</div>
						<div className="course-content"><a className="c_btn" href="single_course.html">Arts & Design</a>
							<h3><a href="single_course.html">Basic Fundamentals of Interior & Graphics Design</a></h3>
							<span><i className="fa fa-calendar"></i>3 Lessons</span>
							<span><i className="fa fa-clock-o"></i>3h 45m</span>
							<span><i className="fa fa-star"></i>4.9</span>
							<span><i className="fa fa-table"></i><strong>30 Seats Available</strong></span>

						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="course-slide">
						<div className="course-img">
							<img src={c2} alt=""/>
							<div className="course-date">
								<span className="month">$39</span>
							</div>
						</div>
						<div className="course-content"><a className="c_btn" href="single_course.html">Social</a>
							<h3><a href="single_course.html">Increasing Engagement with Instagram & Facebook</a></h3>
							<span><i className="fa fa-calendar"></i>5 Lessons</span>
							<span><i className="fa fa-clock-o"></i>4h 15m</span>
							<span><i className="fa fa-star"></i>4.7</span>
							<span><i className="fa fa-table"></i><strong>21 Seats Available</strong></span>

						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="course-slide">
						<div className="course-img">
							<img src={c3} alt=""/>
							<div className="course-date">
								<span className="month">$29</span>
							</div>
						</div>
						<div className="course-content"><a className="c_btn" href="single_course.html">Design</a>
							<h3><a href="single_course.html">Introduction to Color Theory & Basic UI/UX</a></h3>
							<span><i className="fa fa-calendar"></i>4 Lessons</span>
							<span><i className="fa fa-clock-o"></i>6h 25m</span>
							<span><i className="fa fa-star"></i>4.8</span>
							<span><i className="fa fa-table"></i><strong>33 Seats Available</strong></span>

						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="course-slide">
						<div className="course-img">
							<img src={c4} alt=""/>
							<div className="course-date">
								<span className="month">$59</span>
							</div>
						</div>
						<div className="course-content"><a className="c_btn" href="single_course.html">Technology</a>
							<h3><a href="single_course.html">Financial Security Thinking and Principles Theory</a></h3>
							<span><i className="fa fa-calendar"></i>7 Lessons</span>
							<span><i className="fa fa-clock-o"></i>7h 45m</span>
							<span><i className="fa fa-star"></i>4.7</span>
							<span><i className="fa fa-table"></i><strong>11 Seats Available</strong></span>

						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="course-slide">
						<div className="course-img">
							<img src={c5} alt=""/>
							<div className="course-date">
								<span className="month">$69</span>
							</div>
						</div>
						<div className="course-content"><a className="c_btn" href="single_course.html">Data Science</a>
							<h3><a href="single_course.html">Logo Design: From Concept to Presentation</a></h3>
							<span><i className="fa fa-calendar"></i>5 Lessons</span>
							<span><i className="fa fa-clock-o"></i>4h 55m</span>
							<span><i className="fa fa-star"></i>4.9</span>
							<span><i className="fa fa-table"></i><strong>41 Seats Available</strong></span>

						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="course-slide">
						<div className="course-img">
							<img src={c6} alt=""/>
							<div className="course-date">
								<span className="month">$99</span>
							</div>
						</div>
						<div className="course-content"><a className="c_btn" href="single_course.html">Development</a>
							<h3><a href="single_course.html">Professional Ceramic Moulding for Beginners</a></h3>
							<span><i className="fa fa-calendar"></i>3 Lessons</span>
							<span><i className="fa fa-clock-o"></i>3h 10m</span>
							<span><i className="fa fa-star"></i>4.9</span>
							<span><i className="fa fa-table"></i><strong>37 Seats Available</strong></span>

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
    </>
  );
};

export default Team_detail;
