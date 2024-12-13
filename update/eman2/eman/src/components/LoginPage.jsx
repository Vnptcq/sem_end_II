// src/components/LoginPage.js
import React, { useState, useEffect } from 'react';
import '../assets/bootstrap/css/bootstrap.min.css';
import '../assets/fonts/font-awesome.min.css';
import '../assets/fonts/themify-icons.css';
import '../assets/owlcarousel/css/owl.carousel.css';
import '../assets/owlcarousel/css/owl.theme.css';

const LoginPage = () => {
  return (
    <div>
      {/* SECTION TOP */}
      <section className="section-top">
        <div className="container">
          <div className="col-lg-10 offset-lg-1 text-center">
            <div
              className="section-top-title wow fadeInRight"
              data-wow-duration="1s"
              data-wow-delay="0.3s"
              data-wow-offset="0"
            >
              <h1>Login Page</h1>
              <ul>
                <li>
                  <a href="index-2.html">Home</a>
                </li>
                <li> / Login Page</li>
              </ul>
            </div>
          </div>
        </div>
      </section>

      {/* LOGIN FORM */}
      <section className="login_register section-padding">
        <div className="container">
          <div className="row">
            <div className="col-lg-6 offset-lg-3 col-xs-12">
              <div className="login">
                <h4 className="login_register_title">Already a member? Sign in:</h4>
                <form>
                  <div className="form-group">
                    <label>Username</label>
                    <input
                      type="text"
                      id="contact-name"
                      className="form-control requiredField input-label"
                      name="name"
                    />
                  </div>
                  <div className="form-group">
                    <label>Password</label>
                    <input
                      type="password"
                      id="contact-email"
                      className="form-control requiredField input-label"
                      name="password"
                    />
                  </div>
                  <div className="form-group col-lg-12">
                    <button className="btn_one" type="submit" name="submit">
                      Login
                    </button>
                  </div>
                </form>
                <p>
                  Don't have an account? <a href="register.html">Register Now</a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
};

export default LoginPage;
