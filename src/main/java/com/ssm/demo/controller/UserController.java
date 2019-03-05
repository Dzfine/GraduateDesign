package com.ssm.demo.controller;

import com.alibaba.fastjson.JSONObject;
import com.ssm.demo.entity.Person;
import com.ssm.demo.service.UserService;
import com.ssm.demo.utils.MakeCertPic;
import com.sun.imageio.plugins.common.ImageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserController {
    //注入Service
    @Autowired
    UserService userService;

    /**
     * 登录页面生成验证码
     */
    @RequestMapping("/getVerify")
    public void getVerify(HttpServletRequest request, HttpServletResponse response){
        response.setContentType("image/jpeg");//设置相应类型,告诉浏览器输出的内容为图片
        response.setHeader("Pragma", "No-cache");//设置响应头信息，告诉浏览器不要缓存此内容
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expire", 0);
        MakeCertPic randomValidateCode = new MakeCertPic();
        try {
            randomValidateCode.getRandCode(request, response);   //输出验证码
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //用户登录
    @RequestMapping("/userLogin")
    public String userLogin(Person person, Model model, HttpServletRequest request) {
        person = userService.findUserByName(person.getName(), person.getPassword());
        HttpSession session = request.getSession();
        session.getId();
        String random = (String) session.getAttribute("random_codekey");
        String realCode = request.getParameter("captcha");

        if(person != null && realCode == random) {
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
