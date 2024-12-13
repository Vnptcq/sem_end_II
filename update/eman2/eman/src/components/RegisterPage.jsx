import React, { useState, useEffect } from 'react';
import '../assets/bootstrap/css/bootstrap.min.css';
import '../assets/fonts/font-awesome.min.css';
import '../assets/fonts/themify-icons.css';
import '../assets/owlcarousel/css/owl.carousel.css';
import '../assets/owlcarousel/css/owl.theme.css';




const RegisterPage = () => {
  

  return (
    <div>
      {/* Section Top */}
      <section className="section-top">
        <div className="container">
          <div className="col-lg-10 offset-lg-1 text-center">
            <div
              className="section-top-title wow fadeInRight"
              data-wow-duration="1s"
              data-wow-delay="0.3s"
            >
              <h1>Register Page</h1>
              <ul>
                <li><a href="/">Home</a></li>
                <li> / Register</li>
              </ul>
            </div>
          </div>
        </div>
      </section>

      {/* Register Form */}
      <section className="login_register section-padding">
        <div className="container">
          <div className="row">
            <div className="col-lg-6 offset-lg-3 col-xs-12">
              <div className="register">
                <h4 className="login_register_title">Create a new account:</h4>
                <div className="form-group">
                  <label>Username</label>
                  <input type="text" className="form-control" name="username" />
                </div>
                <div className="form-group">
                  <label>Full Name</label>
                  <input type="text" className="form-control" name="fullname" />
                </div>
                <div className="form-group">
                  <label>Email Address</label>
                  <input type="email" className="form-control" name="email" />
                </div>
                <div className="form-group">
                  <label>Password</label>
                  <input type="password" className="form-control" name="password" />
                </div>
                <div className="form-group col-lg-12">
                  <button className="btn_one" type="submit">Signup now</button>
                </div>
                <p>Already have an account? <a href="/login">Login</a></p>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
};

export default RegisterPage;
