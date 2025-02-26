package com.luv2code.springboot.cruddemo.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewRespone {
    private String studentId;
    private String username;
    private Integer reviewId;
    private Integer rating;
    private String comment;
    private LocalDateTime reviewDate;
}
