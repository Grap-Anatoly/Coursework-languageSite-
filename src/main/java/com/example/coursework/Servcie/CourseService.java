package com.example.coursework.Servcie;

import com.example.coursework.entity.Course;

public interface CourseService {
    void save(Course course);

    Course findByCourseName(String name);
}
