package com.ssm.demo.dao;

import com.ssm.demo.entity.Person;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapperDao {
    Person findUserByName (String name);
}
