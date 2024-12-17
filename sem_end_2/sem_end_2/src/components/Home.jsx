import { useEffect, useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import homeimage from "../assets/images/all-img/home-image.png";
import ab1 from "../assets/images/all-img/about1.png";
import client from "../assets/images/all-img/clients/1.png";
import c1 from "../assets/images/all-img/c1.png";
import c2 from "../assets/images/all-img/c2.png";
import c3 from "../assets/images/all-img/c3.png";
import c4 from "../assets/images/all-img/c4.png";
import c5 from "../assets/images/all-img/c5.png";
import c6 from "../assets/images/all-img/c6.png";
import promo from "../assets/images/all-img/promo.png";
import e1 from "../assets/images/event/e1.png";
import e2 from "../assets/images/event/e2.png";
import t1 from "../assets/images/all-img/t1.png";
import t2 from "../assets/images/all-img/t2.png";
import t3 from "../assets/images/all-img/t3.png";
import t4 from "../assets/images/all-img/t4.png";
import team1 from "../assets/images/all-img/team1.jpg";
import team2 from "../assets/images/all-img/team2.jpg";
import team3 from "../assets/images/all-img/team3.jpg";
import team4 from "../assets/images/all-img/team4.jpg";
import ct1 from "../assets/images/icon/ct1.svg";
import ct2 from "../assets/images/icon/ct2.svg";
import ct3 from "../assets/images/icon/ct3.svg";
import ct4 from "../assets/images/icon/ct4.svg";
import ct5 from "../assets/images/icon/ct5.svg";
import ct6 from "../assets/images/icon/ct6.svg";
import hai from "../assets/images/blog/2.png";
import ba from "../assets/images/blog/3.png";
import { getUser } from "../redux/apiRequest";
import axios from "axios";
const Home = () => {
  const dispatch = useDispatch();
    const TOKEN = useSelector((state)=>state.auth.login.token); // Get the token
    const fetchUser = () => {
        if (TOKEN) {
            getUser(TOKEN, dispatch); // Call getUser with the token
        } else {
            console.error("No token found");
        }
  };
  useEffect(()=>{
    fetchUser();
    window.scrollTo(0, 0);
  },[])
  const[courses,setCourses]=useState([]);
	
	const loadCourses = async ()=>{
		const result = await axios.get("http://localhost:8080/api/courses?size=12&page=0");
		console.log(result.data);
		setCourses(result.data.content);
	};
	useEffect(()=>{
		loadCourses();
	},[])
  const user = useSelector((state) => state.user.profile);
  return (
    <>
      <section
        id="home"
        className="home_bg"
        style={{
          backgroundImage: "url(assets/images/banner/home.png)",
          backgroundSize: "cover",
          backgroundPosition: "center center",
        }}
      >
        <div className="container">
          <div className="row">
            {user? (
              <>
                <div className="col-lg-6 col-sm-6 col-xs-12">
                  <div className="home_content">
                    <h1>
                      Welcome <br />{user.role.roleName}<span style={{textTransform:'uppercase'}}> {user.username}</span>
                    </h1>
                    <p>
                      There are no limits for those who keep striving to learn.
                      With every small step forward, you're getting closer to
                      your goal
                    </p>
                  </div>
                  <div className="home_btn">
                    <a href="#" className="cta">
                      <span>Your courses</span>
                      <svg width="13px" height="10px" viewBox="0 0 13 10">
                        <path d="M1,5 L11,5"></path>
                        <polyline points="8 1 12 5 8 9"></polyline>
                      </svg>
                    </a>
                  </div>
                </div>
              </>
            ) : (
              <>
                <div className="col-lg-6 col-sm-6 col-xs-12">
                  <div className="home_content">
                    <h1>
                      Better <span>Learning Future</span> Starts With Penn
                    </h1>
                    <p>
                      It is a long established fact that reader will be
                      distracted readable content of a page when.
                    </p>
                  </div>
                  <div className="home_btn">
                    <a href="#" className="cta">
                      <span>Explore Courses</span>
                      <svg width="13px" height="10px" viewBox="0 0 13 10">
                        <path d="M1,5 L11,5"></path>
                        <polyline points="8 1 12 5 8 9"></polyline>
                      </svg>
                    </a>
                  </div>
                </div>
              </>
            )}

            <div className="col-lg-6 col-sm-6 col-xs-12">
              <div className="home_me_img">
                <img src={homeimage} className="img-fluid" alt="" />
              </div>
            </div>
          </div>
        </div>
      </section>

      <section className="tp_feature">
        <div className="container-fluid">
          <div className="row">
            <div
              className="col-lg-4 col-sm-4 col-xs-12 no-padding wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.2s"
              data-wow-offset="0"
            >
              <div className="single_tp">
                <h3>Quality Education</h3>
                <p>
                  Lorem ipsum dolor sit amet, consectetur notted adipisicing
                  elit sed do eiusmod tempor incididunt ut labore.
                </p>
                <a href="#" className="cta">
                  <span>Explore</span>
                  <svg width="13px" height="10px" viewBox="0 0 13 10">
                    <path d="M1,5 L11,5"></path>
                    <polyline points="8 1 12 5 8 9"></polyline>
                  </svg>
                </a>
              </div>
            </div>
            <div
              className="col-lg-4 col-sm-4 col-xs-12 no-padding wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.3s"
              data-wow-offset="0"
            >
              <div className="single_tp">
                <h3>Experienced Teachers</h3>
                <p>
                  Lorem ipsum dolor sit amet, consectetur notted adipisicing
                  elit sed do eiusmod tempor incididunt ut labore.
                </p>
                <a href="#" className="cta">
                  <span>Explore</span>
                  <svg width="13px" height="10px" viewBox="0 0 13 10">
                    <path d="M1,5 L11,5"></path>
                    <polyline points="8 1 12 5 8 9"></polyline>
                  </svg>
                </a>
              </div>
            </div>
            <div
              className="col-lg-4 col-sm-4 col-xs-12 no-padding wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.4s"
              data-wow-offset="0"
            >
              <div className="single_tp">
                <h3>Delicious Food</h3>
                <p>
                  Lorem ipsum dolor sit amet, consectetur notted adipisicing
                  elit sed do eiusmod tempor incididunt ut labore.
                </p>
                <a href="#" className="cta">
                  <span>Explore</span>
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
      <section className="ab_one section-padding">
        <div className="container">
          <div className="row">
            <div
              className="col-lg-6 col-sm-12 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.2s"
              data-wow-offset="0"
            >
              <div className="ab_img">
                <img src={ab1} className="img-fluid" alt="image" />
              </div>
            </div>
            <div
              className="col-lg-6 col-sm-12 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.1s"
              data-wow-offset="0"
            >
              <div className="ab_content">
                <h2>
                  Learn new skills to go{" "}
                  <u>
                    <span>ahead for your </span>
                  </u>{" "}
                  career.
                </h2>
                <p>
                  Lorem ipsum dolor sit amet, consectetur notted adipisicing
                  elit sed do eiusmod tempor incididunt ut labore et simply.
                </p>
              </div>
              <div className="abmv">
                <span className="ti-medall"></span>
                <h4>Our Mission</h4>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipiscing elit sed do
                  eiusmod tempor ut labore.
                </p>
              </div>
              <div className="abmv">
                <span className="ti-wand"></span>
                <h4>Our Vision</h4>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipiscing elit sed do
                  eiusmod tempor ut labore.
                </p>
              </div>
              <a className="btn_one" href="about.html">
                Discover More
              </a>
            </div>
          </div>
        </div>
      </section>

      {/* <section id="counts" className="counts section-padding">
        <div className="container" data-aos="fade-up">
          <div className="section-title">
            <h2>Some Fun Fact</h2>
            <p>
              Our Great{" "}
              <span>
                <u>Achievement</u>
              </span>
            </p>
          </div>
          <div className="row gy-4">
            <div className="col-lg-3 col-md-6">
              <div className="count-box">
                <i className="ti-face-smile"></i>
                <div>
                  <span
                    data-purecounter-start="0"
                    data-purecounter-end="8232"
                    data-purecounter-duration="1"
                    className="purecounter"
                  ></span>

                  <p>Enrolled Students</p>
                </div>
              </div>
            </div>
            <div className="col-lg-3 col-md-6">
              <div className="count-box">
                <i className="ti-files" style={{ color: "#ee6c20" }}></i>
                <div>
                  <span
                    data-purecounter-start="0"
                    data-purecounter-end="521"
                    data-purecounter-duration="1"
                    className="purecounter"
                  ></span>
                  <p>Academic Programs</p>
                </div>
              </div>
            </div>
            <div className="col-lg-3 col-md-6">
              <div className="count-box">
                <i
                  className="ti-headphone-alt"
                  style={{ color: "#15be56" }}
                ></i>
                <div>
                  <span
                    data-purecounter-start="0"
                    data-purecounter-end="163"
                    data-purecounter-duration="1"
                    className="purecounter"
                  ></span>
                  <p>Winning Award</p>
                </div>
              </div>
            </div>
            <div className="col-lg-3 col-md-6">
              <div className="count-box">
                <i className="ti-user" style={{ color: "#bb0852" }}></i>
                <div>
                  <span
                    data-purecounter-start="0"
                    data-purecounter-end="93"
                    data-purecounter-duration="1"
                    className="purecounter"
                  ></span>
                  <p>Certified Students</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section> */}

      {/* <div className="partner-logo section-padding">
        <div className="container">
          <div className="row">
            <div className="col-lg-12 text-center">
              <div className="partner_title">
                <h3>Trusted Company Arround The World! </h3>
              </div>
              <div className="partner">
                <a href="#">
                  <img src={client} alt="image" />
                </a>
                <a href="#">
                  <img src={client} alt="image" />
                </a>
                <a href="#">
                  <img src={client} alt="image" />
                </a>
                <a href="#">
                  <img src={client} alt="image" />
                </a>
                <a href="#">
                  <img src={client} alt="image" />
                </a>
                <a href="#">
                  <img src={client} alt="image" />
                </a>
                <a href="#">
                  <img src={client} alt="image" />
                </a>
                <a href="#">
                  <img src={client} alt="image" />
                </a>
                <a href="#">
                  <img src={client} alt="image" />
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <section className="marketing_content_area section-padding">
        <div className="container">
          <div className="section-title">
            <h2>Why Choose Penn</h2>
            <p>
              Find the{" "}
              <span>
                <u>best features</u>
              </span>{" "}
              of Penn.
            </p>
          </div>
          <div className="row">
            <div
              className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.1s"
              data-wow-offset="0"
            >
              <div className="single_feature_one">
                <div className="sf_top">
                  <span className="ti-book ss_one"></span>
                  <h2>
                    <a href="single-service.html" target="_blank">
                      Learn More Anywhere
                    </a>
                  </h2>
                </div>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipiscing elit sed do
                  eiusmod tempor ut labore.
                </p>
              </div>
            </div>
            <div
              className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.2s"
              data-wow-offset="0"
            >
              <div className="single_feature_one">
                <div className="sf_top">
                  <span className="ti-heart ss_two"></span>
                  <h2>
                    <a href="single-service.html" target="_blank">
                      Expert <br />
                      Instructor
                    </a>
                  </h2>
                </div>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipiscing elit sed do
                  eiusmod tempor ut labore.
                </p>
              </div>
            </div>
            <div
              className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.3s"
              data-wow-offset="0"
            >
              <div className="single_feature_one">
                <div className="sf_top">
                  <span className="ti-user ss_three"></span>
                  <h2>
                    <a href="single-service.html" target="_blank">
                      Team <br />
                      Management
                    </a>
                  </h2>
                </div>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipiscing elit sed do
                  eiusmod tempor ut labore.
                </p>
              </div>
            </div>
            <div
              className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.4s"
              data-wow-offset="0"
            >
              <div className="single_feature_one">
                <div className="sf_top">
                  <span className="ti-eye ss_four"></span>
                  <h2>
                    <a href="single-service.html" target="_blank">
                      Course <br /> Planing
                    </a>
                  </h2>
                </div>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipiscing elit sed do
                  eiusmod tempor ut labore.
                </p>
              </div>
            </div>
            <div
              className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.5s"
              data-wow-offset="0"
            >
              <div className="single_feature_one">
                <div className="sf_top">
                  <span className="ti-light-bulb ss_five"></span>
                  <h2>
                    <a href="single-service.html" target="_blank">
                      Teacher Monitoring
                    </a>
                  </h2>
                </div>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipiscing elit sed do
                  eiusmod tempor ut labore.
                </p>
              </div>
            </div>
            <div
              className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.6s"
              data-wow-offset="0"
            >
              <div className="single_feature_one">
                <div className="sf_top">
                  <span className="ti-email ss_six"></span>
                  <h2>
                    <a href="single-service.html" target="_blank">
                      24/7 Strong Support
                    </a>
                  </h2>
                </div>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipiscing elit sed do
                  eiusmod tempor ut labore.
                </p>
              </div>
            </div>
          </div>
        </div>
      </section> */}

      <div className="best-cpurse section-padding">
        <div className="container">
          <div className="section-title">
            <h2>Popular Courses</h2>
            <p>
              Choose Our{" "}
              <span>
                <u>Top Courses</u>
              </span>
            </p>
          </div>
          <div className="row">
            <div
              className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.1s"
              data-wow-offset="0"
            >
              <div className="course-slide">
                <div className="course-img">
                  <img src={c1} alt="" />
                  <div className="course-date">
                    <span className="month">$49</span>
                  </div>
                </div>
                <div className="course-content">
                  <a className="c_btn" href="single_course.html">
                    Arts & Design
                  </a>
                  <h3>
                    <a href="single_course.html">
                      Basic Fundamentals of Interior & Graphics Design
                    </a>
                  </h3>
                  <span>
                    <i className="fa fa-calendar"></i>3 Lessons
                  </span>
                  <span>
                    <i className="fa fa-clock-o"></i>3h 45m
                  </span>
                  <span>
                    <i className="fa fa-star"></i>4.9
                  </span>
                  <span>
                    <i className="fa fa-table"></i>
                    <strong>30 Seats Available</strong>
                  </span>
                </div>
              </div>
            </div>
            <div
              className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.1s"
              data-wow-offset="0"
            >
              <div className="course-slide">
                <div className="course-img">
                  <img src={c2} alt="" />
                  <div className="course-date">
                    <span className="month">$39</span>
                  </div>
                </div>
                <div className="course-content">
                  <a className="c_btn" href="single_course.html">
                    Social
                  </a>
                  <h3>
                    <a href="single_course.html">
                      Increasing Engagement with Instagram & Facebook
                    </a>
                  </h3>
                  <span>
                    <i className="fa fa-calendar"></i>5 Lessons
                  </span>
                  <span>
                    <i className="fa fa-clock-o"></i>4h 15m
                  </span>
                  <span>
                    <i className="fa fa-star"></i>4.7
                  </span>
                  <span>
                    <i className="fa fa-table"></i>
                    <strong>21 Seats Available</strong>
                  </span>
                </div>
              </div>
            </div>
            <div
              className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.1s"
              data-wow-offset="0"
            >
              <div className="course-slide">
                <div className="course-img">
                  <img src={c3} alt="" />
                  <div className="course-date">
                    <span className="month">$29</span>
                  </div>
                </div>
                <div className="course-content">
                  <a className="c_btn" href="single_course.html">
                    Design
                  </a>
                  <h3>
                    <a href="single_course.html">
                      Introduction to Color Theory & Basic UI/UX
                    </a>
                  </h3>
                  <span>
                    <i className="fa fa-calendar"></i>4 Lessons
                  </span>
                  <span>
                    <i className="fa fa-clock-o"></i>6h 25m
                  </span>
                  <span>
                    <i className="fa fa-star"></i>4.8
                  </span>
                  <span>
                    <i className="fa fa-table"></i>
                    <strong>33 Seats Available</strong>
                  </span>
                </div>
              </div>
            </div>
            <div
              className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.1s"
              data-wow-offset="0"
            >
              <div className="course-slide">
                <div className="course-img">
                  <img src={c4} alt="" />
                  <div className="course-date">
                    <span className="month">$59</span>
                  </div>
                </div>
                <div className="course-content">
                  <a className="c_btn" href="single_course.html">
                    Technology
                  </a>
                  <h3>
                    <a href="single_course.html">
                      Financial Security Thinking and Principles Theory
                    </a>
                  </h3>
                  <span>
                    <i className="fa fa-calendar"></i>7 Lessons
                  </span>
                  <span>
                    <i className="fa fa-clock-o"></i>7h 45m
                  </span>
                  <span>
                    <i className="fa fa-star"></i>4.7
                  </span>
                  <span>
                    <i className="fa fa-table"></i>
                    <strong>11 Seats Available</strong>
                  </span>
                </div>
              </div>
            </div>
            <div
              className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.1s"
              data-wow-offset="0"
            >
              <div className="course-slide">
                <div className="course-img">
                  <img src={c5} alt="" />
                  <div className="course-date">
                    <span className="month">$69</span>
                  </div>
                </div>
                <div className="course-content">
                  <a className="c_btn" href="single_course.html">
                    Data Science
                  </a>
                  <h3>
                    <a href="single_course.html">
                      Logo Design: From Concept to Presentation
                    </a>
                  </h3>
                  <span>
                    <i className="fa fa-calendar"></i>5 Lessons
                  </span>
                  <span>
                    <i className="fa fa-clock-o"></i>4h 55m
                  </span>
                  <span>
                    <i className="fa fa-star"></i>4.9
                  </span>
                  <span>
                    <i className="fa fa-table"></i>
                    <strong>41 Seats Available</strong>
                  </span>
                </div>
              </div>
            </div>
            <div
              className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.1s"
              data-wow-offset="0"
            >
              <div className="course-slide">
                <div className="course-img">
                  <img src={c6} alt="" />
                  <div className="course-date">
                    <span className="month">$99</span>
                  </div>
                </div>
                <div className="course-content">
                  <a className="c_btn" href="single_course.html">
                    Development
                  </a>
                  <h3>
                    <a href="single_course.html">
                      Professional Ceramic Moulding for Beginners
                    </a>
                  </h3>
                  <span>
                    <i className="fa fa-calendar"></i>3 Lessons
                  </span>
                  <span>
                    <i className="fa fa-clock-o"></i>3h 10m
                  </span>
                  <span>
                    <i className="fa fa-star"></i>4.9
                  </span>
                  <span>
                    <i className="fa fa-table"></i>
                    <strong>37 Seats Available</strong>
                  </span>
                </div>
              </div>
            </div>
            <div className="col-lg-12 text-center">
              <div className="cc_btn">
                <a className="btn_one" href="allcourse.html">
                  View All Course
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* <section className="course_promo section-padding">
        <div className="container">
          <div className="row">
            <div
              className="col-lg-6 col-sm-12 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.1s"
              data-wow-offset="0"
            >
              <div className="cp_content">
                <h4>Best Online Learning Platform</h4>
                <h2>
                  One Platfrom & Many{" "}
                  <span>
                    <u>Courses</u>
                  </span>{" "}
                  For You
                </h2>
                <p>
                  From blogs to emails to ad copies, auto-generate catchy,
                  original, and high-converting copies in popular tones
                  languages.
                </p>
                <ul>
                  <li>
                    <span className="ti-check"></span>9/10 Average Satisfaction
                    Rate
                  </li>
                  <li>
                    <span className="ti-check"></span>96% Completitation Rate
                  </li>
                  <li>
                    <span className="ti-check"></span>Friendly Environment &
                    Expert Teacher
                  </li>
                </ul>
              </div>
              <div className="cp_btn">
                <a href="#" className="cta">
                  <span>Explore Our Courses</span>
                  <svg width="13px" height="10px" viewBox="0 0 13 10">
                    <path d="M1,5 L11,5"></path>
                    <polyline points="8 1 12 5 8 9"></polyline>
                  </svg>
                </a>
              </div>
            </div>
            <div
              className="col-lg-6 col-sm-12 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.2s"
              data-wow-offset="0"
            >
              <div className="cp_img">
                <img src={promo} className="img-fluid" alt="image" />
              </div>
            </div>
          </div>
        </div>
      </section> */}

      <section className="newsletter_area section-padding">
        <div className="container">
          <div className="row text-center">
            <div className="col-lg-6 offset-lg-3 col-sm-12 col-xs-12">
              <div className="subs_form">
                <h3>Subscripbe to our newsletter, We don't make any spam.</h3>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipisicing elitsed
                  eiusmod tempor enim minim
                </p>
                <form action="#" className="home_subs">
                  <input
                    type="text"
                    className="subscribe__input"
                    placeholder="Enter your Email Address"
                  />
                  <button type="button" className="subscribe__btn">
                    <i className="fa fa-paper-plane-o"></i>
                  </button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section className="topic_content_area section-padding">
        <div className="container">
          <div className="section-title">
            <h2>Start Learning </h2>
            <p>
              Popular{" "}
              <span>
                <u>Topics To Learn</u>
              </span>{" "}
              From Today.
            </p>
          </div>
          <div className="row">
            <div className="col-lg-4 col-sm-6 col-xs-12">
              <div className="single_tca">
                <img src={ct1} alt="" />
                <h2>
                  <a href="#">UI/UX Design</a>
                </h2>
                <span>71 Courses</span>
              </div>
            </div>
            <div className="col-lg-4 col-sm-6 col-xs-12">
              <div className="single_tca">
                <img src={ct2} alt="" />
                <h2>
                  <a href="#">Digital Program</a>
                </h2>
                <span>59 Courses</span>
              </div>
            </div>
            <div className="col-lg-4 col-sm-6 col-xs-12">
              <div className="single_tca">
                <img src={ct3} alt="" />
                <h2>
                  <a href="#">Finance</a>
                </h2>
                <span>68 Courses</span>
              </div>
            </div>
            <div className="col-lg-4 col-sm-6 col-xs-12">
              <div className="single_tca">
                <img src={ct4} alt="" />
                <h2>
                  <a href="#">Modern Physics</a>
                </h2>
                <span>83 Courses</span>
              </div>
            </div>
            <div className="col-lg-4 col-sm-6 col-xs-12">
              <div className="single_tca">
                <img src={ct5} alt="" />
                <h2>
                  <a href="#">Music Production</a>
                </h2>
                <span>37 Courses</span>
              </div>
            </div>
            <div className="col-lg-4 col-sm-6 col-xs-12">
              <div className="single_tca">
                <img src={ct6} alt="" />
                <h2>
                  <a href="#">Data Science</a>
                </h2>
                <span>51 Courses</span>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section className="our-event section-padding">
        <div className="container">
          <div className="section-title">
            <h2>Upcoming Events</h2>
            <p>
              Join With Us{" "}
              <span>
                <u>Our Events</u>
              </span>
            </p>
          </div>
          <div className="row">
            <div className="col-lg-4 col-sm-6 col-xs-12">
              <div className="event-slide">
                <div className="event-img">
                  <img src={e1} alt="" />
                  <div className="event-date">
                    <span className="date">20</span>
                    <span className="month">Oct</span>
                  </div>
                </div>
                <div className="event-content">
                  <h3>
                    <a href="event.html">
                      Electrical Engineering of Batparder new event
                    </a>
                  </h3>
                  <span>
                    <i className="fa fa-clock-o"></i>10.00AM - 12.00PM
                  </span>
                  <span>
                    <i className="fa fa-table"></i>
                    <strong>At Penn School</strong>
                  </span>
                  <p>
                    Lorem ipsum dolor sit amet magna consectetur adipisicing
                    elit.
                  </p>
                </div>
              </div>
            </div>
            <div className="col-lg-4 col-sm-6 col-xs-12">
              <div className="event-slide">
                <div className="event-img">
                  <img src={e2} alt="" />
                  <div className="event-date">
                    <span className="date">22</span>
                    <span className="month">Oct</span>
                  </div>
                </div>
                <div className="event-content">
                  <h3>
                    <a href="event.html">
                      Architecture Design of International Art Fair 2023
                    </a>
                  </h3>
                  <span>
                    <i className="fa fa-clock-o"></i>10.00AM - 12.00PM
                  </span>
                  <span>
                    <i className="fa fa-table"></i>
                    <strong>At Penn School</strong>
                  </span>
                  <p>
                    Lorem ipsum dolor sit amet magna consectetur adipisicing
                    elit.
                  </p>
                </div>
              </div>
            </div>
            <div className="col-lg-4 col-sm-6 col-xs-12">
              <div className="event-slide es">
                <div className="ed_mb">
                  <span className="date">26</span>
                  <span className="month">Oct</span>
                </div>
                <div className="event-content ec_pd">
                  <h3>
                    <a href="event.html">Chiter astana event</a>
                  </h3>
                  <span>
                    <i className="fa fa-clock-o"></i>10.00AM - 12.00PM
                  </span>
                  <span>
                    <i className="fa fa-table"></i>
                    <strong>At Penn School</strong>
                  </span>
                  <p>
                    Lorem ipsum dolor sit amet magna consectetur adipisicing
                    elit.
                  </p>
                </div>
              </div>
              <div className="event-slide es">
                <div className="ed_mb">
                  <span className="date">29</span>
                  <span className="month">Oct</span>
                </div>
                <div className="event-content ec_pd">
                  <h3>
                    <a href="event.html">Dasel Bhai Program</a>
                  </h3>
                  <span>
                    <i className="fa fa-clock-o"></i>10.00AM - 12.00PM
                  </span>
                  <span>
                    <i className="fa fa-table"></i>
                    <strong>At Penn School</strong>
                  </span>
                  <p>
                    Lorem ipsum dolor sit amet magna consectetur adipisicing
                    elit.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section className="testi_home_area section-padding">
        <div className="container">
          <div className="section-title">
            <h2>Testimonial</h2>
            <p>
              What Says{" "}
              <span>
                <u>Our Students</u>
              </span>
            </p>
          </div>
          <div className="row">
            <div className="col-lg-12">
              <div id="testimonial-slider" className="owl-carousel">
                <div className="testimonial">
                  <div className="testimonial_content">
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <p>
                      Lorem ipsum dolor sit amet, consetetur sadipscing elitr
                      sed diam nonumy eirmod tempor.
                    </p>
                  </div>
                  <div className="testi_pic_title tpt_one">
                    <div className="pic">
                      <img src={t1} alt="" />
                    </div>
                    <h4>James Clayton</h4>
                    <small className="post">- Design Expert</small>
                  </div>
                </div>
                <div className="testimonial">
                  <div className="testimonial_content">
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <p>
                      Lorem ipsum dolor sit amet, consetetur sadipscing elitr
                      sed diam nonumy eirmod tempor.
                    </p>
                  </div>
                  <div className="testi_pic_title tpt_two">
                    <div className="pic">
                      <img src={t2} alt="" />
                    </div>
                    <h4>James Simmons</h4>
                    <small className="post">- Marketing Expert</small>
                  </div>
                </div>
                <div className="testimonial">
                  <div className="testimonial_content">
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <p>
                      Lorem ipsum dolor sit amet, consetetur sadipscing elitr
                      sed diam nonumy eirmod tempor.
                    </p>
                  </div>
                  <div className="testi_pic_title tpt_three">
                    <div className="pic">
                      <img src={t3} alt="" />
                    </div>
                    <h4>Alex feroundo</h4>
                    <small className="post">- Founder</small>
                  </div>
                </div>
                <div className="testimonial">
                  <div className="testimonial_content">
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <p>
                      Lorem ipsum dolor sit amet, consetetur sadipscing elitr
                      sed diam nonumy eirmod tempor.
                    </p>
                  </div>
                  <div className="testi_pic_title tpt_one">
                    <div className="pic">
                      <img src={t4} alt="" />
                    </div>
                    <h4>Kallu Mastan</h4>
                    <small className="post">- Mastan group</small>
                  </div>
                </div>
                <div className="testimonial">
                  <div className="testimonial_content">
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <i className="fa fa-star"></i>
                    <p>
                      Lorem ipsum dolor sit amet, consetetur sadipscing elitr
                      sed diam nonumy eirmod tempor.
                    </p>
                  </div>
                  <div className="testi_pic_title tpt_two">
                    <div className="pic">
                      <img src={t1} alt="" />
                    </div>
                    <h4>Devid max</h4>
                    <small className="post">- Max iNC</small>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section className="team_home_area section-padding">
        <div className="container">
          <div className="section-title">
            <h2>Team Member</h2>
            <p>
              Our Expert{" "}
              <span>
                <u>Instructors</u>
              </span>
            </p>
          </div>
          <div className="row">
            <div
              className="col-lg-3 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.1s"
              data-wow-offset="0"
            >
              <div className="single-team-home">
                <div className="img">
                  <img src={team1} className="img-fluid" alt="" />
                </div>
                <div className="team-content-home">
                  <h3>Marina Mojo</h3>
                  <p>Developer</p>
                  <div className="sth_det">
                    <span className="ti-file">
                      {" "}
                      <u>5 Course</u>
                    </span>
                    <span className="ti-user">
                      {" "}
                      <u>12 Student</u>
                    </span>
                  </div>
                  <ul className="social-home">
                    <li>
                      <a href="#" className="facebook-home">
                        <i className="fa fa-facebook"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#" className="twitter-home">
                        <i className="fa fa-twitter"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#" className="instagram-home">
                        <i className="fa fa-instagram"></i>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div
              className="col-lg-3 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.2s"
              data-wow-offset="0"
            >
              <div className="single-team-home">
                <div className="img">
                  <img src={team2} className="img-fluid" alt="" />
                </div>
                <div className="team-content-home">
                  <h3>Ayoub Fennouni</h3>
                  <p>Logo Expert</p>
                  <div className="sth_det">
                    <span className="ti-file">
                      {" "}
                      <u>5 Course</u>
                    </span>
                    <span className="ti-user">
                      {" "}
                      <u>7 Student</u>
                    </span>
                  </div>
                  <ul className="social-home">
                    <li>
                      <a href="#" className="facebook-home">
                        <i className="fa fa-facebook"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#" className="twitter-home">
                        <i className="fa fa-twitter"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#" className="instagram-home">
                        <i className="fa fa-instagram"></i>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div
              className="col-lg-3 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.3s"
              data-wow-offset="0"
            >
              <div className="single-team-home">
                <div className="img">
                  <img src={team3} className="img-fluid" alt="" />
                </div>
                <div className="team-content-home">
                  <h3>Mark Linomi</h3>
                  <p>Marketer</p>
                  <div className="sth_det">
                    <span className="ti-file">
                      {" "}
                      <u>9 Course</u>
                    </span>
                    <span className="ti-user">
                      {" "}
                      <u>17 Student</u>
                    </span>
                  </div>
                  <ul className="social-home">
                    <li>
                      <a href="#" className="facebook-home">
                        <i className="fa fa-facebook"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#" className="twitter-home">
                        <i className="fa fa-twitter"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#" className="instagram-home">
                        <i className="fa fa-instagram"></i>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div
              className="col-lg-3 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.4s"
              data-wow-offset="0"
            >
              <div className="single-team-home">
                <div className="img">
                  <img src={team4} className="img-fluid" alt="" />
                </div>
                <div className="team-content-home">
                  <h3>Amira Yerden</h3>
                  <p>UI/UX Designer</p>
                  <div className="sth_det">
                    <span className="ti-file">
                      {" "}
                      <u>15 Course</u>
                    </span>
                    <span className="ti-user">
                      {" "}
                      <u>31 Student</u>
                    </span>
                  </div>
                  <ul className="social-home">
                    <li>
                      <a href="#" className="facebook-home">
                        <i className="fa fa-facebook"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#" className="twitter-home">
                        <i className="fa fa-twitter"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#" className="instagram-home">
                        <i className="fa fa-instagram"></i>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section id="blog" className="blog_area section-padding">
        <div className="container">
          <div className="section-title">
            <h2>News</h2>
            <p>
              Our Latest{" "}
              <span>
                <u>Blogs</u>
              </span>
            </p>
          </div>
          <div className="row">
            <div
              className="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.1s"
              data-wow-offset="0"
            >
              <div className="single_blog">
                <div className="content_box">
                  <span>
                    August 25, 2023 | <a href="blog_single.html">Design</a>
                  </span>
                  <h2>
                    <a href="blog_single.html">
                      Professional Mobile Painting and Sculpting
                    </a>
                  </h2>
                  <a href="#" className="cta">
                    <span>READ MORE</span>
                    <svg width="13px" height="10px" viewBox="0 0 13 10">
                      <path d="M1,5 L11,5"></path>
                      <polyline points="8 1 12 5 8 9"></polyline>
                    </svg>
                  </a>
                </div>
              </div>
              <div className="single_blog">
                <div className="content_box">
                  <span>
                    August 25, 2023 | <a href="blog_single.html">Design</a>
                  </span>
                  <h2>
                    <a href="blog_single.html">
                      Professional Mobile Painting and Sculpting
                    </a>
                  </h2>
                  <a href="#" className="cta">
                    <span>READ MORE</span>
                    <svg width="13px" height="10px" viewBox="0 0 13 10">
                      <path d="M1,5 L11,5"></path>
                      <polyline points="8 1 12 5 8 9"></polyline>
                    </svg>
                  </a>
                </div>
              </div>
            </div>
            <div
              className="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.1s"
              data-wow-offset="0"
            >
              <div className="single_blog">
                <img src={hai} className="img-fluid" alt="image" />
                <div className="content_box">
                  <span>
                    August 26, 2023 | <a href="blog_single.html">Education</a>
                  </span>
                  <h2>
                    <a href="blog_single.html">
                      Professional Ceramic Moulding for Beginner
                    </a>
                  </h2>
                  <a href="#" className="cta">
                    <span>READ MORE</span>
                    <svg width="13px" height="10px" viewBox="0 0 13 10">
                      <path d="M1,5 L11,5"></path>
                      <polyline points="8 1 12 5 8 9"></polyline>
                    </svg>
                  </a>
                </div>
              </div>
            </div>
            <div
              className="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.3s"
              data-wow-offset="0"
            >
              <div className="single_blog">
                <img src={ba} className="img-fluid" alt="image" />
                <div className="content_box">
                  <span>
                    August 28, 2023 | <a href="blog_single.html">Programing</a>
                  </span>
                  <h2>
                    <a href="blog_single.html">
                      Education Is About Create Leaders For Tomorrow{" "}
                    </a>
                  </h2>
                  <a href="#" className="cta">
                    <span>READ MORE</span>
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
  );
};

export default Home;
