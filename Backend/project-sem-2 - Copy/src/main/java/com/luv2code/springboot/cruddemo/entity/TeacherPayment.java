package com.luv2code.springboot.cruddemo.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "teacher_payments")
public class TeacherPayment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "payment_id")
    private Integer paymentId;

    @ManyToOne
    @JoinColumn(name = "teacher_id", nullable = false)
    @JsonBackReference
    private Users teacher;


    @ManyToOne
    @JoinColumn(name = "course_id")
    @JsonBackReference
    private Courses courses;

    @Column(name = "revenue_share")
    private BigDecimal revenueShare;

    @Column(name = "payment_date")
    private String paymentDate;
}

