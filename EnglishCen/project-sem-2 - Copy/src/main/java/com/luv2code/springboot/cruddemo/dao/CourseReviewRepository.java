package com.luv2code.springboot.cruddemo.dao;

import com.luv2code.springboot.cruddemo.DTO.ReviewRespone;
import com.luv2code.springboot.cruddemo.entity.CourseReviews;
import com.luv2code.springboot.cruddemo.entity.Courses;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface CourseReviewRepository extends JpaRepository<CourseReviews,Integer> {
    @Query("SELECT u.userId as userId,u.username as username,r FROM CourseReviews r join r.user u WHERE r.course.courseId = :courseId")
    Page<CourseReviews> findAllByCourseId(@Param("courseId") int courseId, Pageable pageable);}
