import React, { useEffect, useState } from "react";
import axios from "axios";
import { Link, useParams } from "react-router-dom";

const ManageCourse = ()=> {
  const [users, setUsers] = useState([]);

  const { id } = useParams();
  const [courses, setCourses] = useState([]);

  const loadCourses = async () => {
    const result = await axios.get(
      "http://localhost:8080/api/courses?size=12&page=0"
    );
    console.log(result.data);
    setCourses(result.data.content);
  };
  useEffect(() => {
    loadCourses();
  }, []);

  const deleteUser = async (id) => {
    await axios.delete(`http://localhost:8080/user/${id}`);
    loadUsers();
  };

  return (
    <div className="container">
      <div className="py-4">
        <table className="table border shadow">
          <thead>
            <tr>
              <th scope="col">Number</th>
              <th scope="col">Title</th>
              <th scope="col">Description</th>
              <th scope="col">Categories</th>
              <th scope="col">Level</th>
              <th scope="col">Price</th>
              <th scope="col">Action</th>
            </tr>
          </thead>
          <tbody>
            {courses.map((course, index) => (
              <tr>
                <th scope="row" key={index}>
                  {index + 1}
                </th>
                <td>{course.title}</td>
                <td>{course.description}</td>
                <td>{course.category}</td>
                <td>{course.level}</td>
                <td>{course.price}$</td>
                

                <td>
                  <Link
                    className="btn btn-primary mx-2"
                    to={`/viewuser/${course.courseId}`}
                  >
                    View
                  </Link>
                  <Link
                    className="btn btn-outline-primary mx-2"
                    to={`/manage/manage_course/edit/${course.courseId}`}
                  >
                    Edit
                  </Link>
                  <button
                    className="btn btn-danger mx-2"
                    onClick={() => deleteUser(course.courseId)}
                  >
                    Delete
                  </button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default ManageCourse;
