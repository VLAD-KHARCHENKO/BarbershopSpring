package com.BarbershopSpring.BarbershopSpring.exception;

public class UserExistException extends RuntimeException {

    public UserExistException() {
    }

    public UserExistException(String message) {
        super(message);
    }
}
