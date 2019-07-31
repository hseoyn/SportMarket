package com.oaec.sportmarket.controller;

import com.alibaba.fastjson.JSON;
import com.oaec.sportmarket.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;


@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public String login(){
        return "login-register";
    }

    //ResponseBody不会转发重定向，直接返回字符串
    @PostMapping(value = "/login", produces = "application/json;charset=utf-8")
    @ResponseBody
    public String doLogin(String username, String password, String uri, HttpServletRequest request, HttpSession session){
        Map<String, Object> login = userService.login(username, password);
        if (login.containsKey("error")){
            return JSON.toJSONString(login);
        }
        session.setAttribute("user",login);
        Map<String, Object> map = new HashMap<>();
        map.put("success",true);
        if (uri != null){
            //contextPath:/ssmb2c
            String contextPath = request.getContextPath();
            uri = uri.replace(contextPath, "");
            map.put("uri",uri);
        }
        return JSON.toJSONString(map);
    }

    @GetMapping("/register")
    public String register(){
        return "login-register";
    }


    @PostMapping(value = "/register",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String doRegister(String username,String password,String tel){
        boolean b = userService.register(username, password,tel);
        System.out.println("b = " + b);
        return "{\"success\":"+b+"}";
    }

    @GetMapping("logout")
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "index";
    }
}
