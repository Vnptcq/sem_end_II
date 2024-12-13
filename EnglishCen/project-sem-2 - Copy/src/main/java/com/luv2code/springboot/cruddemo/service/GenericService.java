package com.luv2code.springboot.cruddemo.service;

import com.luv2code.springboot.cruddemo.entity.Users;

import java.util.List;

public interface GenericService<T,ID> {

    List<T> findAll();

    T findById(ID theId);

    T save(T theEmployee);

    void deleteById(ID theId);

}
