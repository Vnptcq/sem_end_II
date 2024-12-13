import "./App.css";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Image from "./components/Image";
import Guestlayout from "./components/_GuestLayout";
import Home from "./components/Home";
import Userlayout from "./components/_UserLayout";
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

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Guestlayout />}>
          <Route index element={<Home />} />
          <Route path="image" element={<Image />} />
          <Route path="faq" element={<Faq />} />
          <Route path="intructors" element={<Team />} />
          <Route path="intructor_detail" element={<Team_detail/>}/>
          <Route path="contact" element={<Contact />}/>
          <Route path="login" element={<Login />} />
          <Route path="sign_up" element={<SignUp />} />
          <Route path="all_course" element={<AllCourse />} />
          <Route path="single_course" element={<SingleCourse />} />
          <Route path="cart" element={<Cart/>}/>
          <Route path="check_out" element={<Checkout/>}/>
          <Route path="event" element={<Event />} />
          <Route path="single_event" element={<SingleEvent />} />
          <Route path="blog" element={<Blog />} />
          <Route path="single_blog" element={<SingleBlog />} />
          
        </Route>

        <Route path="/user" element={<Guestlayout />}>
          <Route path="info" index element={<Home />} />
          <Route path="image" element={<Image />} />
        </Route>

        <Route path="/admin" element={<Guestlayout/>}>
          <Route path="dashboard" index />
        </Route>
        <Route path="/teacher" element={<Guestlayout/>}>
          <Route path="dashboard" index />
        </Route>
        <Route path="*" element={<Error404/>} />
      </Routes>
    </Router>
  );
}

export default App;
