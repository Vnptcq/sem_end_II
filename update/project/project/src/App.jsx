import { useState } from 'react'
import './App.css'
import Event from './components/Event'
import Event_Single from './components/Event_Single'
import AllCourse from './components/AllCourse'
import Footer from './components/Footer'
import Header from './components/Header'
import FavouriteCourse from './components/FavouriteCourse'
import Favoutite_Single from './components/Favourite_single'
import Index2 from './components/Index2'

function App() {

  return (
    <>
      <Header/>
      {/* <Event/>  */}
      {/* <Event_Single/>  */}
      {/* <AllCourse/>  */}
       {/* <FavouriteCourse/>  */}
       {/* <Favoutite_Single/>   */}
      <Index2/>  
      <Footer/>
    </>
  )
}

export default App
