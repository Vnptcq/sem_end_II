package com.luv2code.springboot.cruddemo.service;

import com.luv2code.springboot.cruddemo.DTO.GainRoleRequest;
import com.luv2code.springboot.cruddemo.DTO.UserRequest;
import com.luv2code.springboot.cruddemo.dao.RolesRepository;
import com.luv2code.springboot.cruddemo.dao.UsersRepository;
import com.luv2code.springboot.cruddemo.entity.Roles;
import com.luv2code.springboot.cruddemo.entity.Users;
import io.jsonwebtoken.Jwt;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.oauth2.resource.OAuth2ResourceServerProperties;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;

@Service
public class UserInfoService implements UserDetailsService {

    @Autowired
    private UsersRepository repository;

    @Autowired
    private PasswordEncoder encoder;

    @Autowired
    private RolesRepository rolesRepository;

    @Autowired
    private JwtService jwtService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<Users> userDetail = repository.findByEmail(username); // Assuming 'email' is used as username

        // Converting UserInfo to UserDetails
        return userDetail.map(UserInfoDetails::new)
                .orElseThrow(() -> new UsernameNotFoundException("User not found: " + username));
    }

    public String addUser(Users userInfo) {
        // Encode password before saving the user
        userInfo.setCreatedAt(getCurrentTime());
        userInfo.setPasswordHash(encoder.encode(userInfo.getPasswordHash()));
        repository.save(userInfo);
        return "User Added Successfully";
    }

    public String getCurrentUserEmail(){
        try {

        Authentication authenticationToken = SecurityContextHolder.getContext().getAuthentication();
        String jwt =  authenticationToken.getName();
        return jwt;
        } catch (Exception e) {
            throw new UsernameNotFoundException("User email in token not found");
        }
    }

    public Optional<Users> getUserInfo(){


        Optional<Users> userDetail = repository.findByEmail(getCurrentUserEmail());

//        Optional<Users> user = repository.findOne(Optional<Users>);
        return userDetail;
    }

    public String getCurrentTime() {
        // Get current date and time
        LocalDateTime now = LocalDateTime.now();

        // Format it as "2024-11-14T09:35:19"
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss");

        return now.format(formatter);
    }

    public String alterUserInfor(UserRequest userRequest){

        Roles roles = rolesRepository.findById(3).orElseThrow(() -> new RuntimeException("Role not found with ID: " + 1));;

        Optional<Users> users = repository.findByEmail(getCurrentUserEmail()).map(
                existingUser ->{
                    existingUser.setUsername(userRequest.getUsername());
                    existingUser.setPasswordHash(encoder.encode(userRequest.getPassword()));
                    existingUser.setEmail(userRequest.getEmail());
                    existingUser.setRole(roles);

                    return repository.save(existingUser);
                }
        );

        return "User has role ID: "+getCurrentUserEmail()+" was updated";
    }

    public Page<Users> searchByEmail(String email, Integer page, Integer size){
        Pageable pageable = PageRequest.of(page, size);
        return repository.findByEmail(email, pageable);
    }

    public String gainRoleForUser(GainRoleRequest gainRoleRequest){

        Users users = repository.findById(gainRoleRequest.getUserId()).orElseThrow(() -> new RuntimeException("User not found with ID: " + gainRoleRequest.getUserId()));
        Roles roles = rolesRepository.findByRoleName(gainRoleRequest.getRole()).orElseThrow(() -> new RuntimeException("Role not found with ID: " + gainRoleRequest.getRole()));
        users.setRole(roles);
        repository.save(users);
        return "User has user ID: "+gainRoleRequest.getUserId()+" was updated";
    }
}
