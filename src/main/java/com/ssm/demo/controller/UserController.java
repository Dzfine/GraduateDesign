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
    //注入Service
    @Autowired
    UserService userService;

    //用户登录
    @RequestMapping("/userLogin")
    public String userLogin(Person person, Model model, HttpServletRequest request) {
        person = userService.findUserByName(person.getName(), person.getPassword());
        HttpSession session = request.getSession();
        session.getId();
        if(person != null) {
            session.setAttribute("user", person.getName());
            model.addAttribute("userName", person.getName());
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
    public String register(Person person, Model model) {
        person.setStatus(0);
        userService.register(person);
        model.addAttribute("msg","注册成功");
        return "success";
    }
}
