package com.luv2code.springboot.cruddemo.dao;

import com.luv2code.springboot.cruddemo.entity.Enrollments;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface EnrollmentRepository extends JpaRepository<Enrollments,Integer> {

    @Query("select e from Enrollments e where e.user.email = :email")
    List<Enrollments> findAllByUserEmail(@Param("email") String email);
}
