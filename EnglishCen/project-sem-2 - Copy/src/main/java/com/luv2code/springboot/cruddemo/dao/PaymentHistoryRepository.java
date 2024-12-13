package com.luv2code.springboot.cruddemo.dao;

import com.luv2code.springboot.cruddemo.DTO.PaymentHistoriesResponseDTO;
import com.luv2code.springboot.cruddemo.entity.PaymentHistory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface PaymentHistoryRepository extends JpaRepository<PaymentHistory, Integer> {

    @Query("select h from PaymentHistory h ")
    Page<PaymentHistory> findAllHistories(Pageable pageable);
}
