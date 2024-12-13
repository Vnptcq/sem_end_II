import React from 'react';
import Header from './components/Header';
import Faq from './components/Faq';
import Footer from './components/Footer';
import About from './components/About';
import Team from './components/Team';
import Team_detail from './components/Team_detail';
import Error from './components/error';
import Home from'./components/Home';
function App() {

  return (<>
   <div>
    <Header/>
    <Home/>          
    <Footer/>
</div>
  </>
  );
}

export default App;
