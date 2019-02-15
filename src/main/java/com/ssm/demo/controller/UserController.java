package com.ssm.demo.controller;

import com.ssm.demo.entity.Person;
import com.ssm.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    //用户登录
    @RequestMapping("/userLogin")
    public String userLogin(Person person, Model model, HttpServletRequest request) {
        person = userService.findUserByName(person.getName(), person.getPassword());
        if(person != null) {
            request.getSession().setAttribute("user", person.getName());
            return "index";
        }
        model.addAttribute("errorMsg", "登录失败！账号或密码错误");
        return "fail";
    }

    //用户注销
    @RequestMapping("/outLogin")
    public String outLogin(HttpSession session) {
        session.invalidate();
        return "index";
    }

    //注册
    @RequestMapping("/register")
    public String register(@ModelAttribute Person person, Model model) {
        Person record = new Person();
        record.setName(person.getName());
        List<Person> list = userService.selectSelective(record);
        if(list.size() == 0) {
            person.setPassword(person.getPassword());
            if(userService.register(person) == 1) {
                model.addAttribute("result", 1); //注册成功
            } else {
                model.addAttribute("result", 0); //注册失败
            }
        } else {
            model.addAttribute("result", 2); //已有人注册
        }
        return "success";
    }
}
