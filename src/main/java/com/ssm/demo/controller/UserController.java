package com.ssm.demo.controller;

import com.ssm.demo.entity.Person;
import com.ssm.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/userLogin")
    public String userLogin(Person person, Model model, HttpServletRequest request) {
        person = userService.findUserByName(person.getName(), person.getPassword());
        if(person != null) {
            request.getSession().setAttribute("user", "jiang");
            return "index";
        }
        model.addAttribute("errorMsg", "登录失败！账号或密码错误");
        return "fail";
    }
}
