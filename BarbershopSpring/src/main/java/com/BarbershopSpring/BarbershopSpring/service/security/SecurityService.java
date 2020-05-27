package com.BarbershopSpring.BarbershopSpring.service.security;

public interface SecurityService {

    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
