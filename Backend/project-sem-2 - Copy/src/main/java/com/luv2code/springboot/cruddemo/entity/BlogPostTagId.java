package com.luv2code.springboot.cruddemo.entity;

import lombok.*;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BlogPostTagId implements Serializable {
    private Integer post;
    private Integer tag;
}

