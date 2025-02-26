package com.luv2code.springboot.cruddemo.service;


import com.luv2code.springboot.cruddemo.entity.Users;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

public class UserInfoDetails implements UserDetails {

    private String email; // Changed from 'name' to 'email' for clarity
    private String password;
    private List<GrantedAuthority> authorities;

    public UserInfoDetails(Users userInfo) {
        this.email = userInfo.getEmail(); // Assuming 'name' is used as 'email'
        this.password = userInfo.getPasswordHash();
        this.authorities = List.of(userInfo.getRole().getRoleName())
                .stream()
                .map(SimpleGrantedAuthority::new)
                .collect(Collectors.toList());
        System.out.println("this role is:"+this.email);
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        System.out.println("this role is:"+authorities);
        return authorities;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true; // Implement your logic if you need this
    }

    @Override
    public boolean isAccountNonLocked() {
        return true; // Implement your logic if you need this
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true; // Implement your logic if you need this
    }

    @Override
    public boolean isEnabled() {
        return true; // Implement your logic if you need this
    }
}
