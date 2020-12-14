package com.example.coursework.Servcie;

import com.example.coursework.entity.Course;
import com.example.coursework.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CourseServiceImpl implements CourseService {
    @Autowired
    private CourseRepository courseRepository;

    @Override
    public void save(Course course) {
        courseRepository.save(course);
    }

    @Override
    public Course findByCourseName(String name) {
        return courseRepository.findByName(name);
    }
}
