package com.course.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.course.model.Course;

@Repository
public interface Courserepository extends JpaRepository<Course, Long> {

}
