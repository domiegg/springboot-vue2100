package com.shxt.bf.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.shxt.back.client.model.Client;
import com.shxt.back.client.service.ClientService;

@Controller
public class ClientBfController {
    @Autowired
    private ClientService clientService;
    //登录
    @RequestMapping("/bf/login")
    public String login(){
        return "jsp/bf/login";
    }
    //登录
    @RequestMapping("/bf/loginDo")
    public String loginDo(Map<String,Object> map,Client client,HttpServletRequest request){
        HttpSession session = request.getSession();
        Map<String,Object> m = clientService.login(client,session);
        map.put("message" , m.get("message"));
        return m.get("url").toString();
    }
    //注册
    @RequestMapping("/bf/reg")
    public String reg(){
        return "jsp/bf/reg";
    }
    //注册后台
    @RequestMapping("/bf/regDo")
    public String clientAddDo(Map<String,Object> map,Client client){
        map = clientService.add(client , map);
        map.put("url" , "bf/login");
        map.put("message" , "注册成功");
        return "jsp/back/main/addMessage";
    }
    //退出
    @RequestMapping("/bf/loginOut")
    public String loginOut(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("client");
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX+"/bf/main";
    }
    //通过id查询一条记录
    @RequestMapping("/bf/clientLoad1")
    public String clientload(Integer client_id,Map<String,Object> map){
        Client client = clientService.load(client_id);
        map.put("client" , client);
        return "jsp/bf/clientMdi";
    }
    //修改密码
    @RequestMapping("/bf/clientPasswordMdi")
    public String clientPasswordMdi(){
        return "jsp/bf/clientPasswordMdi";
    }
    //修改密码后台
    @RequestMapping("/bf/clientPasswordMdiDo")
    public String clientMdi(Client client,Map<String,Object> map,String password,HttpServletRequest request){
        HttpSession session = request.getSession();
        Client c = (Client)session.getAttribute("client");
        String url = "jsp/bf/clientPasswordMdi";
        if(c.getClient_password().equals(password)){
            url = "jsp/back/main/message";
            map = clientService.update(client , map);
        }else {
            map.put("message" , "老密码错误");
        }
        return url;
    }
    //修改支付密码
    @RequestMapping("/bf/clientPayPasswordMdi")
    public String clientPayPasswordMdi(){
        return "jsp/bf/clientPayPasswordMdi";
    }
    //修改密码后台
    @RequestMapping("/bf/clientPayPasswordMdiDo")
    public String clientPayPasswordMdiDo(Client client,Map<String,Object> map,String password,HttpServletRequest request){
        HttpSession session = request.getSession();
        Client c = (Client)session.getAttribute("client");
        String url = "jsp/bf/clientPayPasswordMdi";
        if(c.getClient_paypassword().equals(password)){
            url = "jsp/back/main/message";
            map = clientService.update(client , map);
        }else {
            map.put("message" , "老密码错误");
        }
        return url;
    }
}
