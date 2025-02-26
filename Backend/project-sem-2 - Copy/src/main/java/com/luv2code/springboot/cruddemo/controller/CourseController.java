package com.luv2code.springboot.cruddemo.controller;


import com.luv2code.springboot.cruddemo.DTO.AddLessonAndVideoRequest;
import com.luv2code.springboot.cruddemo.DTO.CourseDTO;
import com.luv2code.springboot.cruddemo.DTO.CourseUpdateRequest;
import com.luv2code.springboot.cruddemo.DTO.LessonDTO;
import com.luv2code.springboot.cruddemo.entity.CourseReviews;
import com.luv2code.springboot.cruddemo.entity.Courses;
import com.luv2code.springboot.cruddemo.entity.Lessons;
import com.luv2code.springboot.cruddemo.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class CourseController {

    @Autowired
    private CourseService courseService;

    @GetMapping("/listCourse")
    public Page<Courses> listCourse(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "10") int size){
        return courseService.listCourse(page,size);
    }

    @GetMapping("/courses")
    public Page<Courses> getAllCourses(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size,
            @RequestParam(defaultValue = "level") String sortName,
            @RequestParam(defaultValue = "0") String attribute,
            @RequestParam(defaultValue = "asc") String sortDirection,
            @RequestParam(defaultValue = "category")String sortName2,
            @RequestParam(defaultValue = "0")String attribute2,
            @RequestParam(defaultValue = "status")String sortBy) {
        return courseService.getCoursesWithPaginationAndSorting(page, size, sortName, sortDirection,attribute,sortName2,attribute2,sortBy);
    }

    @GetMapping("/courses/{id}")
    public Courses getCourseById(@PathVariable int id) {
        return courseService.getCourseDetail(id);
    }

    @GetMapping("/getComment")
    public Page<CourseReviews> getAllCmtInCourse(
            @RequestParam(defaultValue = "0")int page,
            @RequestParam(defaultValue = "5")int size,
            @RequestParam(defaultValue = "reviewDate")String time,
            @RequestParam(defaultValue = "DES")String orderBy,
            @RequestParam(defaultValue = "1")int courseId
    ){
        return courseService.getAllCmtInCourse(page,size,time,orderBy,courseId);
    }

    @GetMapping("/CourseEnrolled/{page}/{size}")
    public Page<Courses> getAllCourseEnrolled(@PathVariable int page, @PathVariable int size){
        return courseService.getAllCourseEnrolled(page,size);
    }

    @GetMapping("/lesson/{id}")
    public List<LessonDTO> getLessonPreview(@PathVariable int id) {
        return courseService.getLessonPreview(id);
    }

    @PostMapping("/addCourse")
    public String addCourse(@RequestBody CourseUpdateRequest course) {
        return courseService.addCourse(course);
    }
    @PutMapping("/alterCourse/{id}")
    public String alterCourse(@RequestBody CourseUpdateRequest course, @PathVariable int id) {
        return courseService.alterCourse(course,id);
    }

    @DeleteMapping("/deleteCourse/{id}")
    public String deleteCourse(@PathVariable int id) {
        courseService.deleteCourse(id);
        return "Deleted";
    }

    @GetMapping("/manageCourse")
    public List<CourseDTO> manageCourseForTeacger() {
        return courseService.manageCourse();
    }

    @GetMapping("/listCourseHasLessRate")
    public Page<Courses> listCourseHasLessRate(@RequestParam(defaultValue = "0") Integer page,@RequestParam(defaultValue = "5") Integer size){return courseService.listCourseHasLessRate(page,size);}
}
