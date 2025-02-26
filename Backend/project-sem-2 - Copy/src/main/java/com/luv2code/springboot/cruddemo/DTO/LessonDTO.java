package com.luv2code.springboot.cruddemo.DTO;

import com.luv2code.springboot.cruddemo.entity.CourseVideo;
import com.luv2code.springboot.cruddemo.entity.Lessons;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class LessonDTO {
    private String courseTitle;
    private List<Lessons> lessons;
}
