package com.luv2code.springboot.cruddemo.dao;

import com.luv2code.springboot.cruddemo.entity.Courses;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CourseRepository extends JpaRepository<Courses,Integer> {

        Page<Courses> findAll(Pageable pageable);

        @Query("SELECT c FROM Courses c WHERE c.level = :atribute AND c.category = :atribute2")
        Page<Courses> findAllByLevelAndSkill(@Param("atribute") String atribute,@Param("atribute2") String atribute2,Pageable pageable);

         @Query(value = "SELECT * FROM courses c WHERE c.level = CAST(:atribute AS UNSIGNED) AND c.category = :atribute2",nativeQuery = true)
         Page<Courses> findAllLevel0AndSkill(@Param("atribute") Integer atribute,@Param("atribute2") String atribute2,Pageable pageable);

        @Query(value = "SELECT * FROM courses c WHERE c.level = :atribute AND c.category = CAST(:atribute2 AS UNSIGNED)",nativeQuery = true)
        Page<Courses> findAllLevelAndSkill0(@Param("atribute") String atribute,@Param("atribute2") Integer atribute2,Pageable pageable);

        @Query(value = "SELECT * FROM courses c WHERE c.level = CAST(:atribute AS UNSIGNED) AND c.category = CAST(:atribute2 AS UNSIGNED)",nativeQuery = true)
        Page<Courses> findAllLevel0AndSkill0(@Param("atribute") Integer atribute,@Param("atribute2") Integer atribute2,Pageable pageable);

        @Query("SELECT c from Courses c JOIN c.enrollments e where e.user.email= :email and e.status='active' order by e.enrollmentDate DESC ")
        Page<Courses> findAllCourseByUserAndEnrolled(@Param("email") String email,Pageable pageable);

        @Query("select c from Courses c left join fetch c.enrollments e where c.courseId = :courseId ")
        Courses findByIdAndEnroll(@Param("courseId")Integer courseId);

        @Query("select c from Courses c where c.courseId= :courseId and c.users.email = :email")
        Courses findCourseSByIdAndUsersEmail(@Param("courseId") Integer courseId,@Param("email") String email);

        @Query("select c from Courses c where c.users.email = :email")
        List<Courses> findCourseByUserEmail(@Param("email") String email);

        @Query("select c from Courses c where c.rating <= 3")
        Page<Courses> findAllCourseHasLessRate(Pageable pageable);
}
