import "./App.css";
import { BrowserRouter as Router, Routes, Route, useLocation } from "react-router-dom";
import React, { useState, useEffect } from 'react';
import Image from "./components/Image";
import Guestlayout from "./components/_GuestLayout";
import Home from "./components/Home/Home";
import Userlayout from "./components/Admin/_AdminLayout";
import Faq from "./components/Faq";
import Team from "./components/Team";
import Contact from "./components/Contact";
import Login from "./components/Login";
import SignUp from "./components/SignUp";
import AllCourse from "./components/AllCourse";
import SingleCourse from "./components/SingleCourse";
import Event from "./components/Event";
import SingleEvent from "./components/SingleEvent";
import Blog from "./components/Blog";
import SingleBlog from "./components/SingleBlog";
import Error404 from "./components/Error404";
import Cart from "./components/Cart";
import Checkout from "./components/Checkout";
import Team_detail from "./components/Team_detail";
import AdminLayout from "./components/Admin/_AdminLayout";
import CourseVideo from "./components/CourseVideo";
import ManageCourse from "./components/Admin/manage_courses/ManageCourse";
import CreateCourse from "./components/Admin/manage_courses/CreateCourse";
import UpdateCourse from "./components/Admin/manage_courses/UpdateCourse";
import UserProfile from "./components/UserProfile";
import './assets/css/Popup.css';

function AppWrapper() {
  const [showPopUp, setShowPopUp] = useState(false);
  const [popUpContent, setPopUpContent] = useState({});
  const token = localStorage.getItem("jwt_token");

  const location = useLocation(); // Moved inside the Router context

  useEffect(() => {
    if (location.pathname === '/cart' && !token) {
      setPopUpContent({ title: 'Cart Page', message: 'You should login to store your data', button: 'Login' });
      setShowPopUp(true);
    } else {
      setShowPopUp(false);
    }
  }, [location, token]);


  return (
    <>
    {showPopUp && (
      <div className="popup-overlay">
      <div className="popup-content">
      <div className="popup">
        <h3>{popUpContent.title}</h3>
        <p>{popUpContent.message}</p>
        <button onClick={() => {setShowPopUp(false);
        if(location.pathname === '/cart') {
          window.location.href = '/login';
        }
         }}>{popUpContent.button}</button>
      </div>
      </div>
    </div>
    )}
      <Routes>
        <Route path="/" element={<Guestlayout />}>
          <Route index element={<Home />} />
          <Route path="image" element={<Image />} />
          <Route path="faq" element={<Faq />} />
          <Route path="intructors" element={<Team />} />
          <Route path="intructor_detail" element={<Team_detail />} />
          <Route path="contact" element={<Contact />} />
          <Route path="login" element={<Login />} />
          <Route path="sign_up" element={<SignUp />} />
          <Route path="all_course" element={<AllCourse />} />
          <Route path="/course/:courseId" element={<SingleCourse />} />
          <Route path="/video_course/:courseId" element={<CourseVideo />} />
          <Route path="cart" element={<Cart />} />
          <Route path="check_out" element={<Checkout />} />
          <Route path="event" element={<Event />} />
          <Route path="single_event" element={<SingleEvent />} />
          <Route path="blog" element={<Blog />} />
          <Route path="single_blog" element={<SingleBlog />} />
        </Route>
        <Route path="/user" element={<Guestlayout />}>
          <Route path="info"element={<UserProfile />} />
          <Route path="faq" element={<Faq />} />
          <Route path="intructors" element={<Team />} />
          <Route path="intructor_detail" element={<Team_detail />} />
          <Route path="contact" element={<Contact />} />
          <Route path="login" element={<Login />} />
          <Route path="sign_up" element={<SignUp />} />
          <Route path="all_course" element={<AllCourse />} />
          <Route path="single_course" element={<SingleCourse />} />
          <Route path="cart" element={<Cart />} />
          <Route path="check_out" element={<Checkout />} />
          <Route path="event" element={<Event />} />
          <Route path="single_event" element={<SingleEvent />} />
          <Route path="blog" element={<Blog />} />
          <Route path="single_blog" element={<SingleBlog />} />
          <Route path="image" element={<Image />} />
        </Route>
        <Route path="/manage" element={<AdminLayout />}>
          <Route path="manage_course" element={<ManageCourse />} />
          <Route path="manage_course/add" element={<CreateCourse />} />
          <Route path="manage_course/edit/:id" element={<UpdateCourse />} />
        </Route>
        <Route path="/admin" element={<AdminLayout />}>
          {/* <Route path="dashboard" index element={<DashBoard/>} /> */}
        </Route>
        <Route path="*" element={<Error404 />} />
      </Routes>
    </>
  );
}

function App() {
  return (
    <Router>
      <AppWrapper />
    </Router>
  );
}

export default App;