import React from "react";
import anh from '../assets/images/all-img/404.svg';
const Error = () => {
  return (
    <>
	<section class="section-top">
		<div class="container">
			<div class="col-lg-10 offset-lg-1 text-center">
				<div class="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s"
					data-wow-offset="0">
					<h1>Page Not Found</h1>
					<ul>
						<li><a href="index-2.html">Home</a></li>
						<li> / 404</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	
	<section class="zero_area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 col-xs-12 text-center">
					<div class="error_page">
						<img src={anh} class="img-fluid" alt="404 error" />
						<h2>Oops! Page not found</h2>
						<p>Hmm. We’re having trouble finding that site. Try again later or Check your network
							connection.</p>
						<div class="home_btn">
							<a href="index-2.html" class="btn_one">Back to Home</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
    </>
  );
};

export default Error;
