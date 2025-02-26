package com.luv2code.springboot.cruddemo.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.JsonView;
import jakarta.persistence.*;
import lombok.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "courses")
public class Courses {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "course_id")
    private Integer courseId;

    @Column(name = "title",nullable = false, length = 255)
    private String title;

    @Column(name = "description")
    private String description;

    @Column(name = "level",length = 50, columnDefinition = "varchar(50) default 'beginner'")
    private String level;

    @Column(name = "price",nullable = false, precision = 10, scale = 2)
    private BigDecimal price;

    @Column(name = "category",length = 100)
    private String category;

    @JoinColumn(name = "status",nullable = false)
    private String status;

    @Column(name = "created_at")
    private LocalDateTime createdAt;

    @Column(name = "updated_at")
    private LocalDateTime updatedAt;

    @Column(name = "skill")
    private String skill;

    @Column(name = "rating")
    private BigDecimal rating;

    @Column(name = "img")
    private String img;

    @Column(name = "img2")
    private String img2;

    @Column(name = "video")
    private String video;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "teacher_id")
    @JsonBackReference
    private Users users;

    @OneToMany(mappedBy = "course",fetch = FetchType.LAZY)
    @JsonManagedReference
    @JsonIgnore
    private List<CourseReviews> courseReviews = new ArrayList<>();

    @OneToMany(mappedBy = "course",fetch = FetchType.LAZY)
    @JsonManagedReference
    @JsonIgnore
    private List<Enrollments> enrollments ;

    @ManyToMany(mappedBy = "courses")
    @JsonBackReference
    private List<Cart> cart=new ArrayList<>();

    @ManyToMany(mappedBy = "courses",fetch = FetchType.LAZY)
    @JsonBackReference
    private List<PaymentHistory> paymentHistories=new ArrayList<>();

    @OneToMany(cascade = CascadeType.ALL,mappedBy = "course",fetch = FetchType.EAGER)
    @JsonManagedReference
    private List<Lessons> lessons=new ArrayList<>();

    @OneToMany(mappedBy = "courses")
    @JsonManagedReference
    @JsonIgnore
    private List<TeacherPayment> teacherPayment=new ArrayList<>();
}

