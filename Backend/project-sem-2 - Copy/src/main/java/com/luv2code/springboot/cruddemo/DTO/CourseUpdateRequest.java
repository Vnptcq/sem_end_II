package com.luv2code.springboot.cruddemo.DTO;

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
public class CourseUpdateRequest {
    private String title;
    private String description;
    private String level;
    private BigDecimal price;
    private String category;
    private String skill;
    private String image;
    private String image2;
    private String video;
    private List<LessonRequest> lessons;

    // Getters and Setters
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class LessonRequest {
        private Integer lessonId = null;
        private String title;
        private String content;
        private Integer orderInCourse;
        private List<CourseVideoRequest> courseVideos;

        // Getters and Setters
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class CourseVideoRequest {
        private Long courseVideoId = null;
        private String title;
        private String videoUrl;
        private Integer orderInCourse;

        // Getters and Setters
    }
}
