package com.luv2code.springboot.cruddemo.DTO;

import com.luv2code.springboot.cruddemo.entity.Courses;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class HistoriesRequest {
    private List<Integer> courseIds;

}
