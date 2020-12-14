package com.example.coursework.repository;

import com.example.coursework.entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<Users, Long> {
    Users findByUsername (String username );
}
