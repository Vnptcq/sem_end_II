import React, { useState } from "react";

const Faq = () => {

  return (
    <>

	<section className="section-top">
		<div className="container">
			<div className="col-lg-10 offset-lg-1 text-center">
				<div className="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s"
					data-wow-offset="0">
					<h1>Frequently Asked Questions</h1>
					<ul>
						<li><a href="index-2.html">Home</a></li>
						<li> / FAQ's</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	 

	
	<section className="faq_area section-padding">
		<div className="container">
			<div className="section-title-two">
				<h1>General Information</h1>
			</div>
			<div className="row justify-content-center">
				<div className="col-lg-12 col-sm-12 col-xs-12">
					<div className="accordion" id="accordionExample">
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingOne">
								<button className="accordion-button" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									1. What types of courses do you offer?
								</button>
							</h2>
							<div id="collapseOne" className="accordion-collapse collapse show" aria-labelledby="headingOne"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									We provide in-person English courses at our center and online courses designed for
									all ages: preschool, elementary, middle school, high school, and adults.
								</div>
							</div>
						</div>
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingTwo">
								<button className="accordion-button collapsed" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									2. How can I register for a course?
								</button>
							</h2>
							<div id="collapseTwo" className="accordion-collapse collapse" aria-labelledby="headingTwo"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									You can register by visiting our center in person or by signing up online through
									our website.
								</div>
							</div>
						</div>
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingThree">
								<button className="accordion-button collapsed" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
									3. Where is your center located?
								</button>
							</h2>
							<div id="collapseThree" className="accordion-collapse collapse" aria-labelledby="headingThree"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									Facility 1:<br/>Facility 2:<br/>Directions and a map are available on our website.
								</div>
							</div>
						</div>
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingFour">
								<button className="accordion-button collapsed" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
									4. What’s the difference between in-person and online courses?
								</button>
							</h2>
							<div id="collapseFour" className="accordion-collapse collapse" aria-labelledby="headingFour"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									In-person courses offer a hands-on learning environment with direct interaction with
									teachers, while online courses provide flexibility and convenience for those unable
									to attend in person.
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
			<div className="section-title-two">
				<h1>Payment and Pricing</h1>
			</div>
			<div className="row justify-content-center">
				<div className="col-lg-12 col-sm-12 col-xs-12">
					<div className="accordion" id="accordionExample">
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingOne">
								<button className="accordion-button" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									5. How much do the courses cost?
								</button>
							</h2>
							<div id="collapseOne" className="accordion-collapse collapse show" aria-labelledby="headingOne"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									Course fees vary depending on the type and level of the course. Details are
									available on the course pages or by contacting us.
								</div>
							</div>
						</div>
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingTwo">
								<button className="accordion-button collapsed" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									6. Do you offer installment payment options?
								</button>
							</h2>
							<div id="collapseTwo" className="accordion-collapse collapse" aria-labelledby="headingTwo"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									Yes, installment payments are available for courses longer than three months.
								</div>
							</div>
						</div>
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingThree">
								<button className="accordion-button collapsed" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
									7. Are there any discounts or promotions?
								</button>
							</h2>
							<div id="collapseThree" className="accordion-collapse collapse" aria-labelledby="headingThree"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									Yes, we frequently offer early bird discounts and seasonal promotions. Check our
									homepage or subscribe to our newsletter for updates.
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
			
			<div className="section-title-two">
				<h1>Teachers and Support</h1>
			</div>
			<div className="row justify-content-center">
				<div className="col-lg-12 col-sm-12 col-xs-12">
					<div className="accordion" id="accordionExample">
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingOne">
								<button className="accordion-button" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									8. Who teaches your courses?
								</button>
							</h2>
							<div id="collapseOne" className="accordion-collapse collapse show" aria-labelledby="headingOne"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									Our courses are taught by experienced educators, including native English speakers
									and certified teachers.
								</div>
							</div>
						</div>
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingTwo">
								<button className="accordion-button collapsed" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									9. Can I choose my teacher?
								</button>
							</h2>
							<div id="collapseTwo" className="accordion-collapse collapse" aria-labelledby="headingTwo"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									You can request a specific teacher, subject to their availability. </div>
							</div>
						</div>
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingThree">
								<button className="accordion-button collapsed" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
									10. What should I do if I have questions during the course?
								</button>
							</h2>
							<div id="collapseThree" className="accordion-collapse collapse" aria-labelledby="headingThree"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									You can contact our staff directly at the center or through the contact form on our website for assistance.
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
			<div className="section-title-two">
				<h1>Course Content and Access</h1>
			</div>
			<div className="row justify-content-center">
				<div className="col-lg-12 col-sm-12 col-xs-12">
					<div className="accordion" id="accordionExample">
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingOne">
								<button className="accordion-button" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									11. Do I need special software to join online classes?								</button>
							</h2>
							<div id="collapseOne" className="accordion-collapse collapse show" aria-labelledby="headingOne"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									You only need a device with internet access (computer, tablet, or smartphone) and platforms like Zoom or Google Meet.
								</div>
							</div>
						</div>
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingTwo">
								<button className="accordion-button collapsed" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									12. Can I access course materials after completing the course?								</button>
							</h2>
							<div id="collapseTwo" className="accordion-collapse collapse" aria-labelledby="headingTwo"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									Yes, online course materials remain accessible for 3-6 months after completion.								</div>
							</div>
						</div>
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingThree">
								<button className="accordion-button collapsed" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
									13. Do you offer trial classes?								</button>
							</h2>
							<div id="collapseThree" className="accordion-collapse collapse" aria-labelledby="headingThree"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									Yes, we provide free trial classes for both in-person and online courses.
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
			<div className="section-title-two">
				<h1>Other Questions</h1>
			</div>
			<div className="row justify-content-center">
				<div className="col-lg-12 col-sm-12 col-xs-12">
					<div className="accordion" id="accordionExample">
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingOne">
								<button className="accordion-button" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									14. Will I receive a certificate after completing a course?								</button>
							</h2>
							<div id="collapseOne" className="accordion-collapse collapse show" aria-labelledby="headingOne"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									Yes, students who successfully complete their courses will receive a certificate from our center.
								</div>
							</div>
						</div>
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingTwo">
								<button className="accordion-button collapsed" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									15. What happens if I miss a class?								</button>
							</h2>
							<div id="collapseTwo" className="accordion-collapse collapse" aria-labelledby="headingTwo"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									For in-person courses, you can attend a makeup session if available. For online courses, recorded sessions will be accessible.								</div>
							</div>
						</div>
						<div className="accordion-item">
							<h2 className="accordion-header" id="headingThree">
								<button className="accordion-button collapsed" type="button" data-bs-toggle="collapse"
									data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
									16. How can I contact the center?								</button>
							</h2>
							<div id="collapseThree" className="accordion-collapse collapse" aria-labelledby="headingThree"
								data-bs-parent="#accordionExample">
								<div className="accordion-body">
									You can reach us via our hotline, email, or by visiting the center. Details are on the "Contact Us" page of our website.
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
			
		</div>
	</section>

    </>
  );
};

export default Faq;
