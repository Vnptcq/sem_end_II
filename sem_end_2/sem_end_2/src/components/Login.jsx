// src/components/LoginPage.js
import React, { useState, useEffect } from "react";
import { Link,useNavigate } from "react-router-dom";
import "../assets/bootstrap/css/bootstrap.min.css";
import "../assets/fonts/font-awesome.min.css";
import "../assets/fonts/themify-icons.css";
import "../assets/owlcarousel/css/owl.carousel.css";
import "../assets/owlcarousel/css/owl.theme.css";
import { loginUser } from "../redux/apiRequest";
import { useDispatch } from "react-redux";

const Login = () => {
  const[userName,setUserName] = useState("");
  const[password,setPassword] = useState("");
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const handleLogin = (e) => {
    e.preventDefault();
    const newUser ={
      userName: userName,
      password: password,
    };
    loginUser(newUser,dispatch,navigate);
  }
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
                <h4 className="login_register_title">
                  Already a member? Sign in:
                </h4>
                <form onSubmit={handleLogin} >
                  <div className="form-group">
                    <label>Email</label>
                    <input
                      type="text"
                      id="contact-name"
                      className="form-control requiredField input-label"
                      name="userName"
                      placeholder="Enter your email"
                      onChange={(e)=> setUserName(e.target.value)}
                    />
                  </div>
                  <div className="form-group">
                    <label>Password</label>
                    <input
                      type="password"
                      id="contact-userName"
                      className="form-control requiredField input-label"
                      name="password"
                      placeholder="Enter your password"
                      onChange={(e)=> setPassword(e.target.value)}
                    />
                  </div>
                  <div className="form-group col-lg-12">
                    <button className="btn_one" type="submit" name="submit">
                      Login
                    </button>
                  </div>
                </form>
                <p>
                  Don't have an account? <Link to="/sign_up">Register Now</Link>
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
};

export default Login;
