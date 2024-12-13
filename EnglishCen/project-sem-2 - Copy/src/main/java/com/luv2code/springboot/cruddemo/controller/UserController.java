package com.luv2code.springboot.cruddemo.controller;

import com.luv2code.springboot.cruddemo.DTO.AuthRequest;
import com.luv2code.springboot.cruddemo.DTO.GainRoleRequest;
import com.luv2code.springboot.cruddemo.DTO.UserRequest;
import com.luv2code.springboot.cruddemo.dao.RolesRepository;
import com.luv2code.springboot.cruddemo.entity.Roles;
import com.luv2code.springboot.cruddemo.entity.Users;
import com.luv2code.springboot.cruddemo.service.JwtService;
import com.luv2code.springboot.cruddemo.service.UserInfoService;

import io.jsonwebtoken.Jwt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/auth")
public class UserController {

    @Autowired
    private UserInfoService service;

    @Autowired
    private JwtService jwtService;

    @Autowired
    private RolesRepository rolesRepository;

    @Autowired
    private AuthenticationManager authenticationManager;
    //FOR USER ONLY

    @GetMapping("/welcome")
    public String welcome() {
        return "Welcome this endpoint is not secure";
    }

    //SIGNUP METHOD
    @PostMapping("/addNewUser")
    public String addNewUser(@RequestBody UserRequest userRequest) {
        Roles role = rolesRepository.findById(3)
                .orElseThrow(() -> new RuntimeException("Role not found with ID: " +1));

        // Map UserRequest to User
        Users user = new Users();
        user.setUsername(userRequest.getUsername());
        user.setEmail(userRequest.getEmail());
        user.setPasswordHash(userRequest.getPassword());

        user.setRole(role); // Assign role to user
        return service.addUser(user);
    }

    //USER PROFILE
    @GetMapping("/user/userProfile")
    @PreAuthorize("hasAnyAuthority('Student','Admin','Instructor','Teacher','User')")
    public Object userProfile() {
        return service.getUserInfo();
    }

    //SIGNIN
    @PostMapping("/generateToken")
    public String authenticateAndGetToken(@RequestBody AuthRequest authRequest) {
        try {

        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(authRequest.getUserName(), authRequest.getPassword())
        );

        if (authentication.isAuthenticated()) {

            return jwtService.generateToken(authRequest.getUserName());
        } else {
            throw new UsernameNotFoundException("Invalid user request!");
        }
        }catch (BadCredentialsException e){
            throw new UsernameNotFoundException("Invalid user or password",e);
        } catch (RuntimeException e){
            throw new RuntimeException("Authentication failed!",e);
        }
    }

    @PutMapping("/alterUser")
    public String alterUser(@RequestBody UserRequest userRequest){

        return service.alterUserInfor(userRequest);
    }
//ADMIN
    @GetMapping("/search")
    public Page<Users> search(@RequestParam(required = false) String email, @RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "5") Integer size) {
        return service.searchByEmail(email,page,size);
    }

    @PostMapping("/gainRole")
    public String gainRole(@RequestBody GainRoleRequest gainRoleRequest) {
        return service.gainRoleForUser(gainRoleRequest);
    }
}














