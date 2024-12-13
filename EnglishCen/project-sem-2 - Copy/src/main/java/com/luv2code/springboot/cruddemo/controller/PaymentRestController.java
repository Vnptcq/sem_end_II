package com.luv2code.springboot.cruddemo.controller;

import com.luv2code.springboot.cruddemo.DTO.HistoriesRequest;
import com.luv2code.springboot.cruddemo.DTO.PaymentHistoriesResponseDTO;
import com.luv2code.springboot.cruddemo.DTO.SalaryResponseDTO;
import com.luv2code.springboot.cruddemo.dao.PaymentHistoryRepository;
import com.luv2code.springboot.cruddemo.entity.PaymentHistory;
import com.luv2code.springboot.cruddemo.entity.Payments;
import com.luv2code.springboot.cruddemo.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/checkout")
public class PaymentRestController {

    @Autowired
    private PaymentService paymentService;


    @GetMapping("/payments")
    public List<Payments> findAll(){return paymentService.findAll();}

    @GetMapping("/histories")
    public List<PaymentHistory> PaymentHistory(){
        return paymentService.findAllByUserId();
    }

    @PostMapping("/addHistories")
    public String addHistoriesAndUpdateEnroll(@RequestBody HistoriesRequest historiesRequest){return paymentService.addHistories(historiesRequest);}


    @GetMapping("/teacherRevenue")
    public SalaryResponseDTO getTeacherRevenue(){return paymentService.getTeacherRevenue();}

    //ADMIN
    @GetMapping("/allPaymentHistories")
    public Page<PaymentHistory> getAllPaymentHistories(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "5") Integer size){
        return paymentService.getAllPaymentHistories(page,size);
    }

}
