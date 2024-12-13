import React from 'react';
import LocationSection from './components/LocationSection'; // Import LocationSection từ components
import Header from './components/Header';
import Footer from './components/Footer';
import './assets/css/slicknav.css'; // Import từ thư mục assets
import './assets/css/magnific-popup.css'; // Import từ thư mục assets
import './assets/css/animate.css'; // Import từ thư mục assets
import './assets/css/style.css'; // Import từ thư mục assets
import LoginPage from './components/LoginPage';
import RegisterPage from './components/RegisterPage';
import Cart from './components/Cart';

import Checkout from './components/Checkout';
import BlogArea from './components/Blogarea';
import SingleBlog from './components/SingleBlog';
import CartIn from './components/CartIn';


function App() {
  return (
    <div>
      <Header />
      {/* <SingleBlog></SingleBlog> */}

      {/* <RegisterPage></RegisterPage> */}
      {/* <LocationSection />   */}
      {/* <LoginPage></LoginPage> */}
      {/* <Cart></Cart> */}
      <Checkout></Checkout>
      {/* <BlogArea></BlogArea> */}
      
  

      <Footer />
      
    </div>
  );
}

export default App;
