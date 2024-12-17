package com.luv2code.springboot.cruddemo.controller;

import com.luv2code.springboot.cruddemo.DTO.AddCoursesToCartRequest;
import com.luv2code.springboot.cruddemo.entity.Cart;
import com.luv2code.springboot.cruddemo.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private CartService cartService;

    @GetMapping("/cartCount")
    public int cartCount(){
        return cartService.cartCount();
    }
    @GetMapping("/cartList")
    public Cart cartListById() {
        return cartService.findAll();
    }

    @PostMapping("/addCourse")
    public String addCourseToCart(@RequestBody AddCoursesToCartRequest request){
        return cartService.addCourseToCart(request);
    }

    @DeleteMapping("/deleteItem/{courseId}")
    public String deleteItemInCart(@PathVariable int courseId){
        return cartService.deleteItemInCart(courseId);
    }

    @DeleteMapping("/deleteAll")
    public String deleteAll(){
        return cartService.deleteAllItemsInCart();
    }
}
