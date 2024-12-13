package com.luv2code.springboot.cruddemo.service;

import com.luv2code.springboot.cruddemo.DTO.HistoriesRequest;
import com.luv2code.springboot.cruddemo.DTO.PaymentHistoriesResponseDTO;
import com.luv2code.springboot.cruddemo.DTO.SalaryResponseDTO;
import com.luv2code.springboot.cruddemo.dao.*;
import com.luv2code.springboot.cruddemo.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.MathContext;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import static org.apache.tomcat.util.http.FastHttpDateFormat.getCurrentDate;

@Service
public class PaymentService {

    @Autowired
    private PaymentRepository paymentRepository;

    @Autowired
    private PaymentHistoryRepository paymentHistoryRepository;

    @Autowired
    private CourseRepository courseRepository;

    @Autowired
    private EnrollmentRepository enrollmentRepository;

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private TeacherPaymentRepository teacherPaymentRepository;

    public String getCurrentUserEmail(){
        try {

            Authentication authenticationToken = SecurityContextHolder.getContext().getAuthentication();
            String jwt =  authenticationToken.getName();
            return jwt;
        } catch (Exception e) {
            throw new UsernameNotFoundException("User email in token not found");
        }
    }

    public String getCurrentTime() {
        // Get current date and time
        LocalDateTime now = LocalDateTime.now();

        // Format it as "2024-11-14T09:35:19"
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss");

        return now.format(formatter);
    }

    public List<Payments> findAll() {
        return paymentRepository.findAll();
    }

    public List<PaymentHistory> findAllByUserId() {
        return paymentRepository.findAllHistoryByUserId(getCurrentUserEmail());
    }

    public String addHistories(HistoriesRequest historiesRequest) {
        PaymentHistory paymentHistory = new PaymentHistory();
        String time = getCurrentTime();
        LocalDate localDate = LocalDate.now();

        String date = localDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));

        paymentHistory.setPayments(paymentRepository.findAllByUserId(getCurrentUserEmail()));
        System.out.println("this is"+historiesRequest.getCourseIds());
        paymentHistory.setPaymentDate(time);
        List<Courses> courses = courseRepository.findAllById(historiesRequest.getCourseIds());
        paymentHistory.getCourses().addAll(courses);
        paymentHistory.setStatus("success");
        List<Enrollments> enrollments = new ArrayList<>();
        List<TeacherPayment> teacherPayments = new ArrayList<>();
        BigDecimal totalCost = new BigDecimal(0);
        for (Integer courseId : historiesRequest.getCourseIds()) {
            Enrollments enrollment = new Enrollments();
        TeacherPayment teacherPayment = new TeacherPayment();
        enrollment.setUser(usersRepository.findUsersEmail(getCurrentUserEmail()));
        enrollment.setStatus("active");
        enrollment.setEnrollmentDate(time);
        Courses courses1 = courseRepository.findById(courseId).orElse(null);
        enrollment.setCourse(courses1);
        totalCost = totalCost.add(courses1.getPrice());
        enrollments.add(enrollment);
        //teacher Payment
        teacherPayment.setCourses(courses1);
        teacherPayment.setPaymentDate(date);
        teacherPayment.setTeacher(usersRepository.findUsersEmail(getCurrentUserEmail()));
        teacherPayment.setRevenueShare(courses1.getPrice().multiply(new BigDecimal(20).divide(new BigDecimal(100))));
        teacherPayments.add(teacherPayment);
        }
        teacherPaymentRepository.saveAll(teacherPayments);
        paymentHistory.setTotalCost(totalCost);
        paymentHistoryRepository.save(paymentHistory);


        enrollmentRepository.saveAll(enrollments);
        return "success";
    }

    public String caculateRevenue(){
        List<Enrollments> enrollments = enrollmentRepository.findAllByUserEmail(getCurrentUserEmail());
        return "success";
    }

    public SalaryResponseDTO getTeacherRevenue(){
        SalaryResponseDTO salaryResponseDTO = new SalaryResponseDTO();
        List<TeacherPayment> payments = teacherPaymentRepository.findByTeacherEmail(getCurrentUserEmail());
        // Map data to PaymentResponse
        List<SalaryResponseDTO.PaymentResponse> paymentResponses = payments.stream()
                .map(payment -> SalaryResponseDTO.PaymentResponse.builder()
                        .paymentId(payment.getPaymentId())
                        .shareRevenue(payment.getRevenueShare())
                        .paymentDate(payment.getPaymentDate().toString())
                        .courseName(payment.getCourses().getTitle()) // Assuming TeacherPayments has a Course relationship
                        .build())
                .collect(Collectors.toList());

        // Calculate total revenue
        BigDecimal totalRevenue = payments.stream()
                .map(TeacherPayment::getRevenueShare)
                .reduce(BigDecimal.ZERO, BigDecimal::add);

        // Build the SalaryResponseDTO
        return SalaryResponseDTO.builder()
                .userEmail(getCurrentUserEmail())
                .totalRevenue(totalRevenue)
                .payments(paymentResponses)
                .build();
    }

    public Page<PaymentHistory> getAllPaymentHistories(Integer pageNumber, Integer pageSize) {
        PageRequest pageRequest = PageRequest.of(pageNumber, pageSize);
        return paymentHistoryRepository.findAllHistories(pageRequest);
    }
}
