package com.luv2code.springboot.cruddemo.DTO;

import com.luv2code.springboot.cruddemo.entity.TeacherPayment;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SalaryResponseDTO {
    private String userEmail;
    private BigDecimal totalRevenue;
    private List<PaymentResponse> payments;

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class PaymentResponse {
        private int paymentId;
        private BigDecimal shareRevenue;
        private String paymentDate;
        private String courseName;
    }
}
