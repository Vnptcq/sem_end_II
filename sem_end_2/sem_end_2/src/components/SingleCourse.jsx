import instructor from '../assets/images/all-img/ins-details.png'
import course from '../assets/images/all-img/client04.png'
import img1 from '../assets/images/all-img/rc-1.png'
const SingleCourse=()=>{
    return(
        <>
        <section className="section-top">
		<div className="container">
			<div className="col-lg-10 offset-lg-1 text-center">
				<div className="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s"
					data-wow-offset="0">
					<h1>Course Details</h1>
					<ul>
						<li><a href="index-2.html">Home</a></li>
						<li> / Course Details</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	

	
	<section className="our_event section-padding">
		<div className="container">
			<div className="row">
				<div className="col-lg-8 col-sm-8 col-xs-12">
					<div className="single_event_single">
						<img alt="" className="img-fluid" src={img1} />
						<div className="single_event_text_single">
							<h4>Professional Ceramic Moulding for Beginners</h4>
							<span><i className="fa fa-calendar"></i>10 Oct 2023</span>
							<span><i className="fa fa-clock-o"></i>7 days</span>
							<span><i className="fa fa-table"></i><strong>30 Seats Available</strong></span>
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
								has been the industry's standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type specimen book. It has
								survived not only five centuries, but also the leap into electronic typesetting,
								remaining essentially unchanged.</p>
							<p>It has survived not only five centuries, but also the leap into electronic typesetting,
								remaining essentially unchanged. It was popularised in the 1960s with the release of
								Letraset sheets containing Lorem Ipsum passages, and more recently with desktop
								publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
						</div>
					</div>
					<div className="course-details-content section-bg">
						<ul className="nav nav-tabs" role="tablist">
							<li className="nav-item">
								<a href="#instructor" className="nav-link active" data-bs-toggle="tab">instructor</a>
							</li>
							<li>
								<a href="#curriculum" className="nav-link" data-bs-toggle="tab">Curriculum </a>
							</li>
							
							<li className="nav-item">
								<a href="#reviews" className="nav-link" data-bs-toggle="tab">reviews</a>
							</li>
						</ul>
						<div className="tab-content" id="myTabContent">
							<div className="tab-pane fade" role="tabpanel" id="curriculum">
								<div className="overview">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
										incididunt ut
										labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullamco
										laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
										reprehenderit in
										voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
										occaecat cupidatat
										non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
										incididunt ut
										labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullamco
										laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
										reprehenderit in
										voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
										occaecat cupidatat
										non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
									<p>roin et eros varius, ornare turpis ac, dapibus nisi. Morbi luctus arcu non massa
										consequat, et
										tristique velit semper. Curabitur interdum vulputate sagittis. Donec erat massa,
										tincidunt sed
										feugiat id, suscipit in est. Proin laoreet orci quis augue eleifend varius.
										Donec hendrerit ex ut
										lacus blandit euismod. </p>
									<div className="details-buttons-area">
										<a href="#0" className="custom-button theme-one">Enroll Now <i
												className="fa fa-angle-right"></i></a>
										<a href="#0" className="custom-button bg-white">get membership</a>
										<ul className="social-icons">
											<li>
												<a href="#0"><i className="fa fa-facebook"></i></a>
											</li>
											<li>
												<a href="#0"><i className="fa fa-twitter"></i></a>
											</li>
											<li>
												<a href="#0"><i className="fa fa-instagram"></i></a>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div className="tab-pane show fade active" id="instructor">
								<div className="overview text-center">
									<div className="instructor-item">
										<div className="instructor-thumb">
											<a href="#0"><img src={instructor}alt="instructor"/></a>
										</div>
										<div className="instructor-content">
											<h6 className="title"><a href="#0">Manuel Nuer</a></h6>
											<span className="details">TEACHER</span>
										</div>
									</div>
									<p>Sed do eiusmod tempor incididunt ut
										labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullamco
										laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
										reprehenderit in
										voluptate velit esse cillum dolore eu fugiat nulla pariatur..</p>
									<div className="details-buttons-area">
										<ul className="social-icons justify-content-center w-100">
											<li>
												<a href="#0"><i className="fa fa-facebook"></i></a>
											</li>
											<li>
												<a href="#0" className="active"><i className="fa fa-twitter"></i></a>
											</li>
											<li>
												<a href="#0"><i className="fa fa-instagram"></i></a>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div className="tab-pane fade" id="reviews">
								<div className="client-review">
									<div className="review-comments">
										<h6 className="review-title">Reviews (03)</h6>
										<ul className="review-contents">
											<li>
												<div className="thumb">
													<img src={course} alt="course"/>
												</div>
												<div className="cont">
													<h6 className="subtitle">Robot Smith</h6>
													<div className="ratings cl-theme">
														<span><i className="fa fa-star"></i></span>
														<span><i className="fa fa-star"></i></span>
														<span><i className="fa fa-star"></i></span>
														<span><i className="fa fa-star"></i></span>
														<span><i className="fa fa-star"></i></span>
													</div>
													<p>
														Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim
														unde et culpa voluptatibus repellat voluptates aliquid minima
													</p>
												</div>
											</li>
											<li>
												<div className="thumb">
													<img src={course} alt="1"/>
												</div>
												<div className="cont">
													<h6 className="subtitle">Nicolas Anelca</h6>
													<div className="ratings cl-theme">
														<span><i className="fa fa-star"></i></span>
														<span><i className="fa fa-star"></i></span>
														<span><i className="fa fa-star"></i></span>
														<span><i className="fa fa-star"></i></span>
														<span className="cl-theme-light"><i className="fa fa-star"></i></span>
													</div>
													<p>
														Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim
														unde et culpa voluptatibus repellat voluptates aliquid minima
													</p>
												</div>
											</li>
											<li>
												<div className="thumb">
													<img src={course} alt="2"/>
												</div>
												<div className="cont">
													<h6 className="subtitle">Harry Johnshon</h6>
													<div className="ratings cl-theme">
														<span><i className="fa fa-star"></i></span>
														<span><i className="fa fa-star"></i></span>
														<span><i className="fa fa-star"></i></span>
														<span><i className="fa fa-star"></i></span>
														<span><i className="fa fa-star"></i></span>
													</div>
													<p>
														Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim
														unde et culpa voluptatibus repellat voluptates aliquid minima
													</p>
												</div>
											</li>
										</ul>
									</div>
									<div className="review-form">
										<h6 className="review-title">Add a Review</h6>
										<form className="row client-form align-items-center">
											<div className="col-md-4 col-12">
												<input type="text" name="name" placeholder="Full Name"/>
											</div>
											<div className="col-md-4 col-12">
												<input type="text" name="email" placeholder="Email Adress"/>
											</div>
											<div className="col-md-4 col-12">
												<div className="rating">
													<span className="rating-title">Your Rating : </span>
													<ul className="ratings">
														<li>
															<a href="#0" title="Give Me One Star"><i
																	className="fa fa-star"></i></a>
														</li>
														<li>
															<a href="#0" title="Give Me Two Star"><i
																	className="fa fa-star"></i></a>
														</li>
														<li>
															<a href="#0" title="Give Me Three Star"><i
																	className="fa fa-star"></i></a>
														</li>
														<li>
															<a href="#0" title="Give Me Four Star"><i
																	className="fa fa-star"></i></a>
														</li>
														<li>
															<a href="#0" title="Give Me Five Star"><i
																	className="fa fa-star"></i></a>
														</li>
													</ul>
												</div>
											</div>
											<div className="col-md-12 col-12 d-inline-flex">
												<textarea rows="5" placeholder="Type Here Message"></textarea>
											</div>
											<div className="col-12">
												<button type="submit" className="custom-button rounded">Submit
													Review</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-4 col-xs-12">
					<div className="course_features">
						<h3>Course features</h3>
						<ul>
							<li><i className="fa fa-calendar"></i> Course duration <b>10 days</b></li>
							<li><i className="fa fa-user"></i> Total Lectures <b>30</b></li>
							<li><i className="fa fa-user"></i> Total Students <b>1000</b></li>
							<li><i className="fa fa-trophy"></i> Certification <b>YES</b></li>
						</ul>
					</div>
					<div className="event_info_price">
						<h4>Price: 60$</h4>
					</div>
					<div className="event_info_register">
						<a className="btn_one" href="#">Register Today</a>
					</div>
					<div className="related_course">
						<h3>Related Course</h3>
						<div className="single_rc">
							<div className="rc_img">
								<img src={img1} alt="" />
							</div>
							<i className="fa fa-star"></i>
							<i className="fa fa-star"></i>
							<i className="fa fa-star"></i>
							<i className="fa fa-star"></i>
							<i className="fa fa-star"></i>
							<h4><a href="#">UI/UX Design and...</a></h4>
							<span>$42.00</span>
						</div>
						<div className="single_rc">
							<div className="rc_img">
								<img src={img1} alt="" />
							</div>
							<i className="fa fa-star"></i>
							<i className="fa fa-star"></i>
							<i className="fa fa-star"></i>
							<i className="fa fa-star"></i>
							<i className="fa fa-star"></i>
							<h4><a href="#">Greatest Passion In...</a></h4>
							<span>$37.00</span>
						</div>
						<div className="single_rc">
							<div className="rc_img">
								<img src={img1} alt="" />
							</div>
							<i className="fa fa-star"></i>
							<i className="fa fa-star"></i>
							<i className="fa fa-star"></i>
							<i className="fa fa-star"></i>
							<i className="fa fa-star"></i>
							<h4><a href="#">incorporate your art ...</a></h4>
							<span>$21.00</span>
						</div>
					</div>
					<div className="sidebar-post">
						<div className="sidebar_title">
							<h4>CATEGORIES</h4>
						</div>
						<div className="single_category">
							<ul>
								<li><a href="#">Education <sup>11</sup></a></li>
								<li><a href="#">Ai Content <sup>44</sup></a></li>
								<li><a href="#">New Course <sup>33</sup></a></li>
								<li><a href="#">Marketing <sup>14</sup></a></li>
								<li><a href="#">Software <sup>21</sup></a></li>
								<li><a href="#">Design <sup>01</sup></a></li>
							</ul>
						</div>
					</div>
					<div className="sidebar-post">
						<div className="sidebar_title">
							<h4>Follow us</h4>
						</div>
						<div className="single_social">
							<ul>
								<li>
									<div className="social_item b_facebook"><a href="#" title="facebook"><i
												className="fa fa-facebook"></i><span className="item-list">150K Likes</span></a>
									</div>
								</li>
								<li>
									<div className="social_item b_youtube"><a href="#" title="youtube"><i
												className="fa fa-youtube"></i><span className="item-list">90K
												Subscribers</span></a></div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

        </>
    )
}
export default SingleCourse;