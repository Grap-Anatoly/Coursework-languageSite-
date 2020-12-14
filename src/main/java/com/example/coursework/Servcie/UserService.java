package com.example.coursework.Servcie;

        import com.example.coursework.entity.Users;

public interface UserService {

    void save(Users user);

    Users findByUsername(String username);
}
