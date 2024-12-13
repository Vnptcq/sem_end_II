package com.luv2code.springboot.cruddemo.controller;

import com.luv2code.springboot.cruddemo.entity.Roles;
import com.luv2code.springboot.cruddemo.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class RoleRestController {
    private RoleService roleService;

    @Autowired
    public RoleRestController(RoleService theRoleService){
        this.roleService = theRoleService;
    }

    @GetMapping("/roles")
    public List<Roles> findAll(){return roleService.findAll();}

    @GetMapping("/roles/{roleId}")
    public Roles getRoles(@PathVariable int roleId){
        Roles theRoles = roleService.findById(roleId);

        if(theRoles == null){
            throw new RuntimeException("Role not found-" + roleId);
        }

        return theRoles;
    }

    @PostMapping("/roles")
    public Roles addEmployee(@RequestBody Roles theRoles) {

        // also just in case they pass an id in JSON ... set id to 0
        // this is to force a save of new item ... instead of update



        Roles dbRole = roleService.save(theRoles);

        return dbRole;
    }

    @DeleteMapping("/roles/{roleId}")
    public String deleteEmployee(@PathVariable int roleId) {

        Roles tmpRole = roleService.findById(roleId);

        // throw exception if null

        if (tmpRole == null) {
            throw new RuntimeException("Employee id not found - " + roleId);
        }

        roleService.deleteById(roleId);

        return "Deleted employee id - " + roleId;
    }
}
