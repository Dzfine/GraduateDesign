package com.ssm.demo.service.impl;

import com.ssm.demo.dao.UserMapperDao;
import com.ssm.demo.entity.Person;
import com.ssm.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapperDao userMapperDao;
    public Person findUserByName(String name, String password) {
        Person person = userMapperDao.findUserByName(name);
        if (person != null && person.getPassword().equals(password)) {
            return person;
        }
        return null;
    }

    public int register(Person person) {
        return userMapperDao.register(person);
    }

    public ArrayList<Person> selectSelective(Person person) {
        return userMapperDao.selectSelective(person);
    }
}
