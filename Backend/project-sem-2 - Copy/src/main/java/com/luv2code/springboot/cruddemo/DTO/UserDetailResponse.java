package com.luv2code.springboot.cruddemo.DTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserDetailResponse {
    private int id;
    private String name;
    private String email;
    private String password;
    private String roles;
}
