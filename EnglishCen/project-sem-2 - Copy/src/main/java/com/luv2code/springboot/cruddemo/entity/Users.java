package com.luv2code.springboot.cruddemo.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.*;

import javax.management.relation.Role;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "users")
public class Users{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private Integer userId;

    @Column(name = "username",unique = true, nullable = false, length = 50)
    private String username;

    @Column(name = "email",unique = true, nullable = false, length = 100)
    private String email;

    @Column(name = "password_hash",nullable = false, length = 255)
    private String passwordHash;

    @ManyToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JoinColumn(name = "role_id")
    @JsonManagedReference
    private Roles role;

    @Column(name = "created_at")
    private String createdAt;

    @OneToMany(mappedBy = "user",fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    @JsonBackReference
    private List<CourseReviews> courseReviews = new ArrayList<>();


    @OneToOne(mappedBy = "userId",fetch = FetchType.LAZY,cascade = {CascadeType.DETACH,CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    @JsonIgnore
    private Cart cart;

    @OneToMany(mappedBy = "user",fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JsonManagedReference
    private List<Enrollments> enrollments = new ArrayList<>();

    @OneToMany(mappedBy = "users",fetch = FetchType.LAZY)
    @JsonManagedReference
    private List<LearningProgress> learningProgress = new ArrayList<>();

    @OneToMany(mappedBy = "users")
    @JsonManagedReference
    @JsonIgnore
    private List<Courses> courses = new ArrayList<>();

    @OneToMany(mappedBy = "teacher")
    @JsonManagedReference
    @JsonIgnore
    private List<TeacherPayment> teacherPayments = new ArrayList<>();
}

