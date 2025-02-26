package com.luv2code.springboot.cruddemo.service;

import com.luv2code.springboot.cruddemo.dao.RolesRepository;
import com.luv2code.springboot.cruddemo.dao.UsersRepository;
import com.luv2code.springboot.cruddemo.entity.Roles;
import com.luv2code.springboot.cruddemo.entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RoleService implements GenericService<Roles,Integer>{
    private RolesRepository rolesRepository;

    @Autowired
    public RoleService(RolesRepository theRolesRepository) {
        rolesRepository = theRolesRepository;
    }

    @Override
    public List<Roles> findAll() {
        return rolesRepository.findAll();
    }

    @Override
    public Roles findById(Integer theId) {
        Optional<Roles> result = rolesRepository.findById(theId);

        Roles theEmployee = null;

        if (result.isPresent()) {
            theEmployee = result.get();
        }
        else {
            // we didn't find the employee
            throw new RuntimeException("Did not find employee id - " + theId);
        }

        return theEmployee;
    }

    @Override
    public Roles save(Roles theEmployee) {
        return rolesRepository.save(theEmployee);
    }

    @Override
    public void deleteById(Integer theId) {
        rolesRepository.deleteById(theId);
    }
}
