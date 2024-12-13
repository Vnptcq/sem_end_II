package com.luv2code.springboot.cruddemo.dao;

import com.luv2code.springboot.cruddemo.entity.Cart;
import com.luv2code.springboot.cruddemo.entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CartRepository extends JpaRepository<Cart, Long> {

    @Query("SELECT c from Cart c where c.userId.email = :userId ")
    Cart findByUserEmail(@Param("userId") String email);

    @Query("SELECT c FROM Cart c JOIN FETCH c.courses WHERE c.userId.email = :cartId")
    Cart findCartWithCourses(@Param("cartId") String email);
}
