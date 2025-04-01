package com.shxt.back.main.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shxt.back.user.model.User;
import com.shxt.back.user.service.UserService;

@Controller
public class MainController {
    @Autowired
    UserService userService;
    @RequestMapping("/back/main")
    public String main(){
        System.out.println("asd");
        return "jsp/back/main/main";
    }
    @RequestMapping("/back/login")
    public String login(){
        return "jsp/back/main/login";
    }
    @RequestMapping("/back/index")
    public String index(){
        return "jsp/back/main/index";
    }
    @RequestMapping("/back/loginDo")
    public String loginDo(Map<String,Object> map,User user,HttpServletRequest request){
        HttpSession session = request.getSession();
        Map<String,Object> m = userService.login(user,session);
        map.put("message" , m.get("message"));
        return "jsp/back/main/"+m.get("url");
    }
    
}
