package com.example.Auth.registration;

import org.springframework.stereotype.Service;

import java.util.function.Predicate;

@Service
public class EmailValidator implements Predicate<String> {

    @Override
//regex to validate
    public boolean test(String s ) {
        return true;}
}
