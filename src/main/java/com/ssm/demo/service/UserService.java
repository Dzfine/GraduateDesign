package com.ssm.demo.service;

import com.ssm.demo.entity.Person;

import java.util.ArrayList;

public interface UserService {
    Person findUserByName(String name, String password);

    int register(Person person);

    ArrayList<Person> selectSelective(Person person);
}
