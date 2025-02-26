import { useEffect, useState } from "react";
import c2 from "../assets/images/all-img/c2.png";
import { Link } from "react-router-dom";
import axios from "axios";
import Pagination from "./Pagination";
import FilterPanel from "./FitlerPanel";
const AllCourse = () => {
  const [courses, setCourses] = useState([]);
  const [result, setResult] = useState([]);
  const [totalPages, setTotalPage] = useState(0);
  const [currentPage, setCurrentPage] = useState(0);
  const size = 9;


  useEffect(() => {
    window.scrollTo(0, 350);
    loadCourses(currentPage);
  }, [currentPage]);
  const loadCourses = async (page) => {
    const result = await axios.get(
      `http://localhost:8080/api/courses?size=${size}&page=${page}&attribute2=&attribute=`
    );
    console.log(currentPage);
    setCourses(result.data.content);
    setResult(result.data.pageable);
    setTotalPage(result.data.totalPages);
  };

  const handlePageChange = (page) => {
    setCurrentPage(page);
  };

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
              <h1>Courses</h1>
              <ul>
                <li>
                  <Link to="/">Home</Link>
                </li>
                <li> / Courses</li>
              </ul>
            </div>
          </div>
        </div>
      </section>

      <div className="best-course section-padding">
        <div className="container">
          <div className="section-title">
            <h2>Popular Courses</h2>
            <p>
              Choose Our{" "}
              <span>
                <u>Top Courses</u>
              </span>
            </p>
          </div>
          <div>
            <FilterPanel />
          </div>
          <div className="row">
            {courses.map((course) => (
              <div
                className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp"
                data-wow-duration="1s"
                data-wow-delay="0.1s"
                data-wow-offset="0"
              >
                <div className="course-slide" key={course.courseId}>
                  <div className="course-img">
                    <img src={course.img} alt="" />
                    {/* <div className="course-date">
                      <span className="month">{course.price}</span>
                    </div> */}
                  </div>
                  <div className="course-content">
                    <a className="c_btn">{course.category}</a>
					<a className="c_btn" style={{marginLeft:'10px',borderRadius:'10px'}} >{course.price}$</a>
                    <h3>
                      <Link to={`/course/${course.courseId}`}>
                        {course.title}
                      </Link>
                    </h3>
                    <span>
                      <i className="fa fa-calendar"></i>3 Lessons
                    </span>
                    <span>
                      <i className="fa fa-clock-o"></i>3h 45m
                    </span>
                    <span>
                      <i className="fa fa-star"></i>
                      {course.rating}
                    </span>
                    <span>
                      <i className="fa fa-table"></i>
                      <strong>30 Seats Available</strong>
                    </span>
                  </div>
                </div>
              </div>
            ))}
            {/* <div className="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"
					data-wow-offset="0">
					<div className="course-slide">
						<div className="course-img">
							<img src={'https://i.pinimg.com/736x/52/e8/0e/52e80eff735b9ff19048547bb130569b.jpg'} alt=""/>
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
				</div> */}
          </div>
        </div>
      </div>
      <Pagination currentPage={currentPage} totalPages={totalPages} onPageChange={handlePageChange}/>
    </>


  );
};
export default AllCourse;
