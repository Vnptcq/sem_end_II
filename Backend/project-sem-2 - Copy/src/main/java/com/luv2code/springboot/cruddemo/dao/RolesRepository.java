package com.luv2code.springboot.cruddemo.dao;

import com.luv2code.springboot.cruddemo.entity.Roles;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface RolesRepository extends JpaRepository<Roles,Integer> {

    @Query("select r from Roles r where r.roleName = :role")
    Optional<Roles> findByRoleName(@Param("role") String roleName);
}
