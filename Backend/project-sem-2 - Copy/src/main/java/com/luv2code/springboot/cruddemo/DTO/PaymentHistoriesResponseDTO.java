package com.luv2code.springboot.cruddemo.DTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.List;
@Data
@NoArgsConstructor

@Builder
public class PaymentHistoriesResponseDTO {
    private int HistoryId;
    private String paymentDate;
    private BigDecimal totalCost;
    private String paymentStatus;
    private List<CourseResponse> course;

    public PaymentHistoriesResponseDTO(int paymentId, String paymentDate, BigDecimal totalCost,
                                       String paymentStatus, List<CourseResponse> courses) {
        this.HistoryId = paymentId;
        this.paymentDate = paymentDate;
        this.totalCost = totalCost;
        this.paymentStatus = paymentStatus;
        this.course = courses;


    }

    @Data
    @NoArgsConstructor
    @Builder
    public static class CourseResponse {
        private int courseId;
        private String courseTitle;
        private String courseDescription;
        private BigDecimal coursePrice;

        public CourseResponse(int courseId, String courseTitle, String courseDescription, BigDecimal coursePrice) {
            this.courseId = courseId;
            this.courseTitle = courseTitle;
            this.courseDescription = courseDescription;
            this.coursePrice = coursePrice;
        }
    }

}
