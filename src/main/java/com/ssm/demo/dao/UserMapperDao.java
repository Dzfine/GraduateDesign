package com.ssm.demo.dao;

import com.ssm.demo.entity.Person;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface UserMapperDao {
    /**
     * 查找用户名和密码
     * @param  name 登录用户名
     * @return
     */
    Person findUserByName(String name);

    //添加用户，即注册功能
    public void addUser(Person person);
}
