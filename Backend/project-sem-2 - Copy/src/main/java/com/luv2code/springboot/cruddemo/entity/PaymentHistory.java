package com.luv2code.springboot.cruddemo.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "payment_history")
public class PaymentHistory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "payment_history_id")
    private int HistoryId;

    @Column(name = "payment_date")
    private String paymentDate;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "payment_id")
    @JsonBackReference
    private Payments payments;

    @Column(name = "total_cost")
    private BigDecimal totalCost;

    @Column(name = "status")
    private String status;

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(
            name = "pay_courses",
            joinColumns = @JoinColumn(name = "payment_history_id"),
            inverseJoinColumns = @JoinColumn(name = "courses_id")
    )
    @JsonManagedReference
    private List<Courses> courses = new ArrayList<>();

}
