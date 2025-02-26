package com.luv2code.springboot.cruddemo.dao;

import com.luv2code.springboot.cruddemo.entity.LearningProgress;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface LearningProgressRepository extends JpaRepository<LearningProgress, Long> {
    @Query("SELECT lp.status FROM LearningProgress lp " +
            "WHERE lp.users.email = :userId AND lp.courseVideo.videoId = :courseVideoId ")
    String isCourseCompletedByUser(@Param("userId") String userId, @Param("courseVideoId") int courseVideoId);
}
