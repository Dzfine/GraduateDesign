package com.ssm.demo.service;

import com.ssm.demo.entity.Person;

public interface UserService {
    Person findUserByName(String name, String password);
}
