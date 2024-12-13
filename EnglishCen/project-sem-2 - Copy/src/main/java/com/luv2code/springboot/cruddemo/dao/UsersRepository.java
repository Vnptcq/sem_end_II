package com.luv2code.springboot.cruddemo.dao;

import com.luv2code.springboot.cruddemo.entity.Users;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface UsersRepository extends JpaRepository<Users, Integer> {
    Optional<Users> findByEmail(String email);

    @Query(value = "SELECT user_id FROM users where email = :email",nativeQuery = true)
    Users findUsersForCourse(@Param("email") String username);

    @Query(value = "SELECT * FROM users where email = :email",nativeQuery = true)
    Users findUsersEmail(@Param("email") String username);

    @Modifying
    @Query("update Users u set u.passwordHash= ?1 where u.email = ?2")
    void updatePassword(String passwordHash, String email);
//    Optional<Users> findByUser(String username);

    @Query("SELECT u FROM Users u WHERE :email IS NULL OR :email = '' OR LOWER(u.email) LIKE LOWER(CONCAT('%', :email, '%'))")
    Page<Users> findByEmail(@Param("email") String email, Pageable pageable);
}