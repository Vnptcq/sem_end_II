// Course.jsx
import { useParams } from 'react-router-dom';
import { useEffect, useState } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import '../assets/css/videoCourse.css';

const videoLinks = {
    lesson1: "https://www.youtube.com/embed/VIDEO_ID_1",
    lesson2: "https://www.youtube.com/embed/VIDEO_ID_2",
    lesson3: "https://www.youtube.com/embed/VIDEO_ID_3",
    lesson4: "https://www.youtube.com/embed/VIDEO_ID_4"
};

const lessons = ["lesson1", "lesson2", "lesson3", "lesson4"];

const Course = () => { 
    const [currentLessonIndex, setCurrentLessonIndex] = useState(0);
    const { courseId } = useParams(); // Get the course ID from the URL
    const [lessons, setLessons] = useState([]);;
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);
	const TOKEN = useSelector((state)=>state.auth.login.token); 
	const dispatch = useDispatch();
    useEffect(() => {
        const fetchCourseData = async () => {
            try {
                const response = await fetch(`http://localhost:8080/api/courses/${courseId}`); // Adjust the API endpoint as needed
                console.log(response.data);
                if (!response.ok) {
                    throw new Error('Failed to fetch course details');
                }
                const data = await response.json();
                setLessons(data.lessons);
            } catch (err) {
                setError(err.message);
            } finally {
                setLoading(false);
            }
        };

        fetchCourseData();
    }, [courseId]); // Run effect when courseId changes


if (loading) {
    return <div>Loading...</div>;
}

if (error) {
    return <div>Error: {error}</div>;
}
  

    const changeVideo = (lessonId) => {
        const index = lessons.indexOf(lessonId);
        if (index !== -1) {
            setCurrentLessonIndex(index);
        }
    };

    const goToNextLesson = () => {
        if (currentLessonIndex < lessons.length - 1) {
            changeVideo(lessons[currentLessonIndex + 1]);
        } else {
            alert("Đây là bài học cuối cùng.");
        }
    };

    const goToPreviousLesson = () => {
        if (currentLessonIndex > 0) {
            changeVideo(lessons[currentLessonIndex - 1]);
        } else {
            alert("Bạn đang ở bài học đầu tiên.");
        }
    };

    return (
        <div>
            <header>
                <h1>Khóa Học</h1>
            </header>
            <div className="course-container">
                <div className="video">
                    <div className="course-title">
                    {lessons[currentLessonIndex].title}
                    </div>
                    <div className="video-container">
                        <iframe id="main-video" src={lessons[currentLessonIndex].courseVideos[0].videoUrl} frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen
                        />
                    </div>
                    <p className="course-description">
                        {lessons[currentLessonIndex].content}
                    </p>
                    <div className="navigation-buttons">
                        <button className="button" onClick={goToPreviousLesson}>Previous</button>
                        <button className="button" onClick={goToNextLesson}>Next</button>
                    </div>
                </div>
                <div className="sidebar">
                    <h3>Nội dung khóa học</h3>
                    {lessons.map((lesson, index) => (
                        <div
                            key={lesson.lessonId}
                            className={`lesson-title ${currentLessonIndex === index ? 'current-lesson' : ''}`}
                            onClick={() => changeVideo(index)}
                        >
                            {lesson.title}
                        </div>
                    ))}
                </div>
            </div>
        </div>
    );
};

export default Course;