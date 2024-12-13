package com.luv2code.springboot.cruddemo.dao;

import com.luv2code.springboot.cruddemo.entity.PaymentHistory;
import com.luv2code.springboot.cruddemo.entity.Payments;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface PaymentRepository extends JpaRepository<Payments,Integer> {

    @Query("SELECT p.historyId from Payments p where p.userId.email = :email")
    List<PaymentHistory> findAllHistoryByUserId(@Param("email")String email);

    @Query("select p from Payments p where p.userId.email = :email")
    Payments findAllByUserId(@Param("email")String email);
}
