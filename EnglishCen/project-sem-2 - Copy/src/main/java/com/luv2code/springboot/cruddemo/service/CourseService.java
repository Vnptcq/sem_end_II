package com.luv2code.springboot.cruddemo.service;

import com.luv2code.springboot.cruddemo.DTO.*;
import com.luv2code.springboot.cruddemo.controller.CourseController;
import com.luv2code.springboot.cruddemo.dao.*;
import com.luv2code.springboot.cruddemo.entity.*;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PagedResourcesAssembler;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import java.util.stream.Collectors;

@Service
public class CourseService {

    @Autowired
    private CourseRepository courseRepository;

    @Autowired
    private CourseReviewRepository courseReviewRepository;

    @Autowired
    private LessonRepository lessonRepository;

    @Autowired
    private LearningProgressRepository learningProgressRepository;

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private CourseVideoRepository courseVideoRepository;

    public String getCurrentUserEmail(){
        try {

            Authentication authenticationToken = SecurityContextHolder.getContext().getAuthentication();
            String jwt =  authenticationToken.getName();
            return jwt;
        } catch (Exception e) {
            throw new UsernameNotFoundException("User email in token not found");
        }
    }

    public Page<Courses> listCourse(int page, int size){
        String sortDirection = "ASC";
        Sort sort = sortDirection.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by("status").ascending() : Sort.by("status").descending();
        Pageable pageable = PageRequest.of(page, size, sort);
        return courseRepository.findAll(pageable);
    }

    public Page<Courses> getCoursesWithPaginationAndSorting(int page, int size, String level, String sortDirection, String attribute,String level2,String sortBy2,String sortBy) {
        System.out.println(sortBy);
            int x = 0;
            int y = 0;
        if(attribute.equals("0")&sortBy2.equals("0")){
            System.out.println("so 1");
            Sort sort = sortDirection.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortBy).ascending() : Sort.by(sortBy).descending();
            Pageable pageable = PageRequest.of(page, size, sort);
            return courseRepository.findAllLevel0AndSkill0(0,0,pageable);
        } else if(attribute.equals("0")&sortBy2!="0"){
            System.out.println("so 2");
            Sort sort = sortDirection.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortBy).ascending() : Sort.by(sortBy).descending();
            Pageable pageable = PageRequest.of(page, size, sort);
            return courseRepository.findAllLevel0AndSkill(0,sortBy2,pageable);
        } else if(sortBy2.equals("0")&attribute!="0"){
            System.out.println("so 3");
            Sort sort = sortDirection.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortBy).ascending() : Sort.by(sortBy).descending();
            Pageable pageable = PageRequest.of(page, size, sort);
            return courseRepository.findAllLevelAndSkill0(attribute,0,pageable);
        } else if (attribute!="0"&sortBy2!="0") {
            System.out.println("so 4");
            Sort sort = sortDirection.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortBy).ascending() : Sort.by(sortBy).descending();
            Pageable pageable = PageRequest.of(page, size, sort);
            return courseRepository.findAllByLevelAndSkill(attribute,sortBy2,pageable);
        } else {
            throw new RuntimeException("NOT FOUND");
        }
    }

    public Page<CourseReviews> getAllCmtInCourse(int page, int size, String time, String orderBy, int courseId){
        Sort sort = orderBy.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(time).ascending() : Sort.by(time).descending();
        Pageable pageable = PageRequest.of(page, size, sort);
        System.out.println("this is"+pageable);
        return courseReviewRepository.findAllByCourseId(courseId,pageable);
    }

    public Page<Courses> getAllCourseEnrolled(int page,int size){
        String sortDirection = "ASC";
        Sort sort = sortDirection.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by("enrollment_date").ascending() : Sort.by("enrollment_date").descending();
        Pageable pageable = PageRequest.of(page, size);
        return courseRepository.findAllCourseByUserAndEnrolled(getCurrentUserEmail(),pageable);
    }

    public Courses getCourseDetail(int courseId){
        return courseRepository.findByIdAndEnroll(courseId);
    }

    public List<LessonDTO> getLessonPreview(int courseId){
        List<Object[]> results = lessonRepository.findLassonByCourseInPreview(courseId);
        List<Lessons> lesson = lessonRepository.findLessonByCourseId(courseId);
        for (Lessons lessons : lesson) {
            for (CourseVideo video : lessons.getCourseVideos()) {
                System.out.println("this is video ID: "+getCurrentUserEmail());
                video.setIsCompleted(learningProgressRepository.isCourseCompletedByUser(getCurrentUserEmail(),video.getVideoId()));
            }
        }
        List<LessonDTO> lessons = new ArrayList<>();
        for (Object[] row : results) {
            lessons.add(new LessonDTO((String) row[0],lesson));
        }
        System.out.println(results);
        return lessons;
    }

    public String addCourse(CourseUpdateRequest course){
        LocalDateTime localDate = LocalDateTime.now();
        Courses courses = new Courses();
        courses.setCategory(course.getCategory());
        courses.setDescription(course.getDescription());
        courses.setCreatedAt(localDate);
        courses.setUpdatedAt(localDate);
        courses.setTitle(course.getTitle());
        courses.setLevel(course.getLevel());
        System.out.println("this is price"+course.toString());
        courses.setPrice(course.getPrice());
        courses.setStatus("new");
        courses.setSkill(course.getSkill());
        courses.setUsers(usersRepository.findByEmail(getCurrentUserEmail()).orElse(null));

        // Map lessons
        List<Lessons> lessons = course.getLessons().stream().map(lessonRequest -> {
            Lessons lesson = Lessons.builder()
                    .title(lessonRequest.getTitle())
                    .content(lessonRequest.getContent())
                    .orderInCourse(lessonRequest.getOrderInCourse())
                    .createdAt(localDate)
                    .updatedAt(localDate)
                    .course(courses) // Set parent course
                    .build();

            // Map course videos
            List<CourseVideo> courseVideos = lessonRequest.getCourseVideos().stream().map(videoRequest -> {
                CourseVideo courseVideo = CourseVideo.builder()
                        .title(videoRequest.getTitle())
                        .videoUrl(videoRequest.getVideoUrl())
                        .orderInCourse(videoRequest.getOrderInCourse())
                        .createdAt(localDate)
                        .updatedAt(localDate)
                        .lessons(lesson) // Set parent lesson
                        .build();
                return courseVideo;
            }).toList();
            lesson.setCourseVideos(courseVideos);
            return lesson;
        }).toList();
        courses.setLessons(lessons);
        courseRepository.save(courses);
        return "course added";
    }

    public String alterCourse(CourseUpdateRequest courseRequest,int courseId){
        System.out.println(courseRequest);
        LocalDateTime localDate = LocalDateTime.now();
        Courses courses = courseRepository.findById(courseId).orElse(null);
        courses.setCategory(courseRequest.getCategory());
        courses.setDescription(courseRequest.getDescription());
        courses.setUpdatedAt(localDate);
        courses.setTitle(courseRequest.getTitle());
        courses.setLevel(courseRequest.getLevel());
        courses.setPrice(courseRequest.getPrice());
        courses.setStatus("new");
        courses.setSkill(courseRequest.getSkill());
        courses.setUsers(usersRepository.findByEmail(getCurrentUserEmail()).orElse(null));
        List<Lessons> lessonsList = new ArrayList<>();
        // Map lessons
        if (courseRequest.getLessons() != null) {
            for (CourseUpdateRequest.LessonRequest lessonRequest : courseRequest.getLessons()) {
                Lessons lesson = lessonRepository.findLessonByLessonId(lessonRequest.getLessonId())
                        .orElse(new Lessons()); // Create new if lesson not found
                lesson.setTitle(lessonRequest.getTitle());
                lesson.setContent(lessonRequest.getContent());
                lesson.setOrderInCourse(lessonRequest.getOrderInCourse());
                lesson.setCourse(courses);

            List<CourseVideo> courseVideos = lessonRequest.getCourseVideos()==null ? new ArrayList<>() : lessonRequest.getCourseVideos().stream().map(videoRequest -> {
                CourseVideo courseVideo = courseVideoRepository.findById(videoRequest.getCourseVideoId()).orElse(new CourseVideo());
                        courseVideo.setTitle(videoRequest.getTitle());
                        courseVideo.setVideoUrl(videoRequest.getVideoUrl());
                        courseVideo.setOrderInCourse(videoRequest.getOrderInCourse());
                        courseVideo.setUpdatedAt(localDate);
                        courseVideo.setLessons(lesson);

                return courseVideo;
            }).collect(Collectors.toCollection(ArrayList::new));
            lesson.setCourseVideos(courseVideos);
            lessonsList.add(lesson);
            }
    }
        courses.setLessons(lessonsList);

        courseRepository.save(courses);
        return "course updated";
    }

    public void deleteCourse(int courseId){
        try{
            Courses courses = courseRepository.findCourseSByIdAndUsersEmail(courseId,getCurrentUserEmail());
            courseRepository.delete(courses);

        } catch (Exception e){
            throw new RuntimeException("course not found" + e.getMessage());
        }
    }

    public List<CourseDTO> manageCourse(){

        List<Courses> courses = courseRepository.findCourseByUserEmail(getCurrentUserEmail());
        List<CourseDTO> courseDTOList = new ArrayList<>();
        for(Courses course : courses){
        CourseDTO courseDTO = new CourseDTO();
            courseDTO.setCourseId(course.getCourseId());
            courseDTO.setTitle(course.getTitle());
            courseDTO.setDescription(course.getDescription());
            courseDTO.setCategory(course.getCategory());
            courseDTO.setCreatedAt(course.getCreatedAt());
            courseDTO.setUpdatedAt(course.getUpdatedAt());
            courseDTO.setLevel(course.getLevel());
            courseDTO.setPrice(course.getPrice());
            courseDTO.setStatus(course.getStatus());
            courseDTO.setSkill(course.getSkill());
            courseDTOList.add(courseDTO);
        }
        return courseDTOList;
    }

    public Page<Courses> listCourseHasLessRate(Integer page,Integer size){
        Pageable pageable = PageRequest.of(page,size);
        return courseRepository.findAllCourseHasLessRate(pageable);
    }
}



