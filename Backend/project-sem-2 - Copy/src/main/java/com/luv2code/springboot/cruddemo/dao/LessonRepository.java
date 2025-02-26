package com.luv2code.springboot.cruddemo.dao;

import com.luv2code.springboot.cruddemo.DTO.LessonDTO;
import com.luv2code.springboot.cruddemo.entity.Courses;
import com.luv2code.springboot.cruddemo.entity.Lessons;
import jakarta.persistence.criteria.CriteriaBuilder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface LessonRepository extends JpaRepository<Lessons, Integer> {

    @Query("select c.title from Courses c where c.courseId = :courseId")
    List<Object[]> findLassonByCourseInPreview(@Param("courseId") int courseId);

    @Query("select l from Lessons l where l.course.courseId = :courseId")
    List<Lessons> findLessonByCourseId(@Param("courseId") int courseId);

    @Query("select l FROM Lessons l where l.course.courseId = :courseId")
    Optional<Lessons> findLessonByCourseId(@Param("courseId") Integer courseId);

    Optional<Lessons> findLessonByLessonId(Integer lessonId);
}
