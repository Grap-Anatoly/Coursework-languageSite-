package com.example.coursework.Servcie;

public interface SecurityService {
    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
