package com.luv2code.springboot.cruddemo.dao;

import com.luv2code.springboot.cruddemo.entity.TeacherPayment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface TeacherPaymentRepository extends JpaRepository<TeacherPayment, Long> {

    @Query("select tp from TeacherPayment tp where tp.teacher.email = :email")
    List<TeacherPayment> findByTeacherEmail(@Param("email") String email);
}
