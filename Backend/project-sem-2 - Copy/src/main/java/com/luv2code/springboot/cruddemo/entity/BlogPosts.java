package com.luv2code.springboot.cruddemo.entity;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "blog_posts")
public class BlogPosts {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer postId;

    @ManyToOne
    @JoinColumn(name = "author_id", nullable = false)
    private Users author;

    private String title;

    @Lob
    private String content;

    private String imageUrl;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
}

