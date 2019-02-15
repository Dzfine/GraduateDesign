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
    /**
     * 注册用户(邮箱、用户名、密码)
     */
    int register(Person person);

    ArrayList<Person> selectSelective(Person person);
}
