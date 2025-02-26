import React from "react";
import { Link } from "react-router-dom";
import Team5 from "../assets/images/all-img/team5.png";
import Team6 from "../assets/images/all-img/team6.png";
import Team7 from "../assets/images/all-img/team7.png";
import Team9 from "../assets/images/all-img/team9.png";
import Team10 from "../assets/images/all-img/team10.png";
const Team = () => {
  return (
    <>
      <section className="section-top">
        <div className="container">
          <div className="col-lg-10 offset-lg-1 text-center">
            <div
              className="section-top-title wow fadeInRight"
              data-wow-duration="1s"
              data-wow-delay="0.3s"
              data-wow-offset="0"
            >
              <h1>Team Instructor</h1>
              <ul>
                <li>
                  <a href="index-2.html">Home</a>
                </li>
                <li> / Team Page</li>
              </ul>
            </div>
          </div>
        </div>
      </section>

      <section className="team_member section-padding">
        <div className="container">
          <div className="section-title">
            <h2>Our Instructor</h2>
            <p>
              Our Expert{" "}
              <span>
                <u>Instructors</u>
              </span>
            </p>
          </div>
          <div className="row text-center">
            <div
              className="col-md-3 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.1s"
              data-wow-offset="0"
            >
              <div className="our-team">
                <Link to="/intructor_detail" className="team-link">
                  <div className="team_img">
                    <img src={Team5} alt="team-image" />
                    <ul className="social">
                      <li>
                        <a href="#">
                          <i className="fa fa-facebook"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-twitter"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-linkedin"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-instagram"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                  <div className="team-content">
                    <h3 className="title">Stephen Cronin</h3>
                    <span className="post">Designer</span>
                    <div className="sth_det2">
                      <span className="ti-file">
                        {" "}
                        <u>5 Course</u>
                      </span>
                      <span className="ti-user">
                        {" "}
                        <u>12 Student</u>
                      </span>
                    </div>
                  </div>
                </Link>
              </div>
            </div>
            <div
              className="col-md-3 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.2s"
              data-wow-offset="0"
            >
              <div className="our-team">
                <a href="/team-details.html" className="team-link">
                  <div className="team_img">
                    <img src={Team6} alt="team-image" />
                    <ul className="social">
                      <li>
                        <a href="#">
                          <i className="fa fa-facebook"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-twitter"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-linkedin"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-instagram"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                  <div className="team-content">
                    <h3 className="title">Rachel Park</h3>
                    <span className="post">Developer</span>
                    <div className="sth_det2">
                      <span className="ti-file">
                        {" "}
                        <u>19 Course</u>
                      </span>
                      <span className="ti-user">
                        {" "}
                        <u>41 Student</u>
                      </span>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <div
              className="col-md-3 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.3s"
              data-wow-offset="0"
            >
              <div className="our-team">
                <a href="/team-details.html" className="team-link">
                  <div className="team_img">
                    <img src={Team7} alt="team-image" />
                    <ul className="social">
                      <li>
                        <a href="#">
                          <i className="fa fa-facebook"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-twitter"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-linkedin"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-instagram"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                  <div className="team-content">
                    <h3 className="title">Dan Billson</h3>
                    <span className="post">Marketer</span>
                    <div className="sth_det2">
                      <span className="ti-file">
                        {" "}
                        <u>14 Course</u>
                      </span>
                      <span className="ti-user">
                        {" "}
                        <u>33 Student</u>
                      </span>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <div
              className="col-md-3 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.4s"
              data-wow-offset="0"
            >
              <div className="our-team">
                <a href="/team-details.html" className="team-link">
                  <div className="team_img">
                    <img src={Team5} alt="team-image" />
                    <ul className="social">
                      <li>
                        <a href="#">
                          <i className="fa fa-facebook"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-twitter"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-linkedin"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-instagram"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                  <div className="team-content">
                    <h3 className="title">Stephen Cronin</h3>
                    <span className="post">Designer</span>
                    <div className="sth_det2">
                      <span className="ti-file">
                        {" "}
                        <u>5 Course</u>
                      </span>
                      <span className="ti-user">
                        {" "}
                        <u>12 Student</u>
                      </span>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <div className="col-md-3 col-sm-6 col-xs-12"></div>
            <div
              className="col-md-3 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.5s"
              data-wow-offset="0"
            >
              <div className="our-team">
                <a href="/team-details.html" className="team-link">
                  <div className="team_img">
                    <img src={Team9} alt="team-image" />
                    <ul className="social">
                      <li>
                        <a href="#">
                          <i className="fa fa-facebook"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-twitter"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-linkedin"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-instagram"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                  <div className="team-content">
                    <h3 className="title">John Stuart</h3>
                    <span className="post">Graphics Expert</span>
                    <div className="sth_det2">
                      <span className="ti-file">
                        {" "}
                        <u>15 Course</u>
                      </span>
                      <span className="ti-user">
                        {" "}
                        <u>32 Student</u>
                      </span>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <div
              className="col-md-3 col-sm-6 col-xs-12 wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.6s"
              data-wow-offset="0"
            >
              <div className="our-team">
                <a href="/team-details.html" className="team-link">
                  <div className="team_img">
                    <img src={Team10} alt="team-image" />
                    <ul className="social">
                      <li>
                        <a href="#">
                          <i className="fa fa-facebook"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-twitter"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-linkedin"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i className="fa fa-instagram"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                  <div className="team-content">
                    <h3 className="title">Maikel Clark</h3>
                    <span className="post">Animator</span>
                    <div className="sth_det2">
                      <span className="ti-file">
                        {" "}
                        <u>18 Course</u>
                      </span>
                      <span className="ti-user">
                        {" "}
                        <u>72 Student</u>
                      </span>
                    </div>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
      </section>
    </>
  );
};

export default Team;
