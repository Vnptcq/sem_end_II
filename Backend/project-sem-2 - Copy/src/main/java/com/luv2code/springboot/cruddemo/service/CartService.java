package com.luv2code.springboot.cruddemo.service;

import com.luv2code.springboot.cruddemo.DTO.AddCoursesToCartRequest;
import com.luv2code.springboot.cruddemo.dao.CartRepository;
import com.luv2code.springboot.cruddemo.dao.CourseRepository;
import com.luv2code.springboot.cruddemo.dao.UsersRepository;
import com.luv2code.springboot.cruddemo.entity.Cart;

import com.luv2code.springboot.cruddemo.entity.Courses;
import com.luv2code.springboot.cruddemo.entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.crossstore.ChangeSetPersister;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CartService {

    @Autowired
    private CartRepository cartRepository;

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private CourseRepository courseRepository;

    public String getCurrentUserEmail(){
        try {

            Authentication authenticationToken = SecurityContextHolder.getContext().getAuthentication();
            String jwt =  authenticationToken.getName();
            return jwt;
        } catch (Exception e) {
            throw new UsernameNotFoundException("User email in token not found");
        }
    }

    public int cartCount(){
        return cartRepository.countCartByUserEmail(getCurrentUserEmail());
    }

    public String addCourseToCart(AddCoursesToCartRequest request){

        Cart cart = cartRepository.findByUserEmail(getCurrentUserEmail());
        Users users = usersRepository.findByEmail(getCurrentUserEmail()).orElse(null);
        System.out.println("gggggg"+users.getUserId());

        if(cart == null){
            Cart cart1 = new Cart();
            cart1.setUserId(users);
            List<Courses> courses = courseRepository.findAllById(request.getCourseIds());
            cart1.getCourses().addAll(courses);
            cartRepository.save(cart1);
            System.out.println("asddddddddasdasdasdasdasd");
            return "Course added to the cart successfully";
        } else {
            List<Courses> courses = courseRepository.findAllById(request.getCourseIds());
            Courses course = courses.get(0);
            if (cartRepository.findCartByCourseIdAndUserId(course.getCourseId(),cart.getCartId()).isEmpty()){
                cart.getCourses().addAll(courses); // Thêm khóa học vào giỏ hàng
                cartRepository.save(cart);
                System.out.println("2");
                return "Course added to the cart successfully";

            } else {
                return "Course already exists";
            }

        }


    }

    public Cart findAll() {

        return cartRepository.findByUserEmail(getCurrentUserEmail());}

    public String deleteItemInCart(int courseId){
        System.out.println(getCurrentUserEmail());
        Cart cart = cartRepository.findCartWithCourses(getCurrentUserEmail());
        if(cart == null){
            throw new RuntimeException("Cart not found: " );
        }
        Courses courseToRemove = cart.getCourses()
                .stream()
                .filter(course -> course.getCourseId().equals(courseId))
                .findFirst()
                .orElseThrow(() -> new RuntimeException("Course not found in cart: " + courseId));

        // Remove the course from the cart
        cart.getCourses().remove(courseToRemove);

        // Save the cart
        cartRepository.save(cart);
        return "Course deleted from the cart successfully";
    }

    public String deleteAllItemsInCart(){
        Cart cart = cartRepository.findCartWithCourses(getCurrentUserEmail());
        if(cart == null){
            throw new RuntimeException("Cart not found: " );
        }
        cart.getCourses().clear();
        cartRepository.save(cart);
        return "All Course deleted from the cart successfully";
    }
}
