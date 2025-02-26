import { useEffect, useState } from 'react';
import c2 from'../assets/images/all-img/c2.png'
import { Link } from 'react-router-dom';
import axios from 'axios';
const AllCourse = () =>{

	const[courses,setCourses]=useState([]);
	
	const loadCourses = async ()=>{
		const result = await axios.get("http://localhost:8080/api/courses");
		setCourses(result.data.content);
	};
	useEffect(()=>{
		loadCourses();
	},[])

    return(
        <>
        <section className="section-top">
		<div className="container">
			<div className="col-lg-10 offset-lg-1 text-center">
				<div className="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s"
					data-wow-offset="0">
					<h1>All Course</h1>
					<ul>
						<li><a href="index-2.html">Home</a></li>
						<li> / Course</li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<div className="best-course section-padding">
		<div className="container">
			<div className="section-title">
				<h2>Popular Courses</h2>
				<p>Choose Our <span><u>Top Courses</u></span></p>
			</div>
			<div className="row">
				{
				courses.map((course,index)=>(
					<div className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="course-slide">
						<div className="course-img">
							<img src={c2} alt=""/>
							<div className="course-date">
								<span className="month">{course.price}</span>
							</div>
						</div>
						<div className="course-content"><a className="c_btn">{course.category}</a>
							<h3><Link to='/single_course'>{course.title}</Link></h3>
							<span><i className="fa fa-calendar"></i>3 Lessons</span>
							<span><i className="fa fa-clock-o"></i>3h 45m</span>
							<span><i className="fa fa-star"></i>{course.rating}</span>
							<span><i className="fa fa-table"></i><strong>30 Seats Available</strong></span>

						</div>
					</div>
				</div>
				))
			}
				<div className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="course-slide">
						<div className="course-img">
							<img src={c2} alt=""/>
							<div className="course-date">
								<span className="month">$49</span>
							</div>
						</div>
						<div className="course-content"><a className="c_btn">Arts & Design</a>
							<h3><Link to='/single_course'>Basic Fundamentals of Interior & Graphics Design</Link></h3>
							<span><i className="fa fa-calendar"></i>3 Lessons</span>
							<span><i className="fa fa-clock-o"></i>3h 45m</span>
							<span><i className="fa fa-star"></i>4.9</span>
							<span><i className="fa fa-table"></i><strong>30 Seats Available</strong></span>

						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
        </>
    )
}
export default AllCourse;