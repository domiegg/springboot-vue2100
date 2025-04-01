package com.shxt.back.client.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shxt.back.client.model.Client;
import com.shxt.back.client.service.ClientService;
import com.shxt.main.PageBean;

@Controller
public class ClientController {
    @Autowired
    private ClientService clientService;
    //查询列表
    @RequestMapping("/back/clientList")
    public String clientList(@RequestParam(required=false,defaultValue="1")int pages,@RequestParam(required=false,defaultValue="5")int num,Client client,Map<String,Object> map,HttpServletRequest request ){
        map = PageBean.backMap(map , pages , num,request);
        map = clientService.clientList(map);
        return "jsp/back/client/clientList";
    }
    //添加页面
    @RequestMapping("/back/clientAdd")
    public String clientAdd(Map<String,Object> map){
        return "jsp/back/client/clientAdd";
    }
    //添加后台
    @RequestMapping("/back/clientAddDo")
    public String clientAddDo(Map<String,Object> map,Client client){
        map = clientService.add(client , map);
        map.put("url" , "back/clientAdd");
        return "jsp/back/main/addMessage";
    }
    //删除页面
    @RequestMapping("/back/clientDel")
    public String clientDel(Integer client_id,Map<String,Object> map){
        map.put("client_id" , client_id);
        return "jsp/back/client/clientDel";
    }
    //删除
    @RequestMapping("/back/clientDelDo")
    public String clientDelDo(Client client,Map<String,Object> map){
        map = clientService.delete(client , map);
        return "jsp/back/main/message";
    }
    //通过id查询一条记录
    @RequestMapping("/back/clientLoad")
    public String clientload(Integer client_id,Map<String,Object> map){
        Client client = clientService.load(client_id);
        map.put("client" , client);
        return "jsp/back/client/clientMdi";
    }
    //修改
    @RequestMapping("/back/clientMdi")
    public String clientMdi(Client client,Map<String,Object> map){
        map = clientService.update(client , map);
        return "jsp/back/main/message";
    }

    
    

}
