package com.luv2code.springboot.cruddemo.dao;

import com.luv2code.springboot.cruddemo.entity.CourseVideo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CourseVideoRepository extends JpaRepository<CourseVideo, Long> {
}
