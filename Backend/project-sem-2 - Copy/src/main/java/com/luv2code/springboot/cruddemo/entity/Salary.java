package com.luv2code.springboot.cruddemo.entity;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "salaries")
public class Salary {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer salaryId;

    @ManyToOne
    @JoinColumn(name = "teacher_id", nullable = false)
    private Users teacher;

    private Double baseSalary;
    private Double bonus;
    private Double deductions;
    private LocalDate paymentDate;
}

