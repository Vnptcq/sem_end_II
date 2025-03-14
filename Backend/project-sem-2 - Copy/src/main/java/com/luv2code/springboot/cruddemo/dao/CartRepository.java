package com.luv2code.springboot.cruddemo.dao;

import com.luv2code.springboot.cruddemo.entity.Cart;
import com.luv2code.springboot.cruddemo.entity.Courses;
import com.luv2code.springboot.cruddemo.entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface CartRepository extends JpaRepository<Cart, Long> {

    @Query("SELECT c from Cart c where c.userId.email = :userId ")
    Cart findByUserEmail(@Param("userId") String email);

    @Query("SELECT c FROM Cart c JOIN FETCH c.courses WHERE c.userId.email = :cartId")
    Cart findCartWithCourses(@Param("cartId") String email);

    @Query("SELECT count(c) FROM Cart c where c.userId.email = :email")
    int countCartByUserEmail(@Param("email") String email);


    @Query(value = """
    SELECT c FROM Cart c
    JOIN c.courses courses
    WHERE courses.courseId = :courseId AND c.cartId = :userId
""")
    Optional<Cart> findCartByCourseIdAndUserId(@Param("courseId") Integer courseId, @Param("userId") Integer userId);

}
