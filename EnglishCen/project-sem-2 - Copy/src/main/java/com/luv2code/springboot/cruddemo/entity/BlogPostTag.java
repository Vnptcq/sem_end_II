package com.luv2code.springboot.cruddemo.entity;

import jakarta.persistence.*;
import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "blog_post_tags")
@IdClass(BlogPostTagId.class)
public class BlogPostTag {

    @Id
    @ManyToOne
    @JoinColumn(name = "post_id", nullable = false)
    private BlogPosts post;

    @Id
    @ManyToOne
    @JoinColumn(name = "tag_id", nullable = false)
    private BlogTag tag;
}

