package com.shxt.back.client.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shxt.back.client.mapper.ClientMapper;
import com.shxt.back.client.model.Client;
import com.shxt.back.client.service.ClientService;
import com.shxt.main.PageBean;

@Service
public class ClientServiceImpl implements ClientService{
    @Autowired
    private ClientMapper clientMapper;
    @Override
    public Map<String , Object> delete(Client client,Map<String , Object> map) {
        int result = clientMapper.delete(client.getClient_id());
        if(result>0){
            map.put("message" , "删除成功");
        }else {
            map.put("message" , "删除失败");
        }
        return map;
    }
    
    @Override
    public Map<String , Object> add(Client client,Map<String , Object> map ) {
        int result = clientMapper.add(client);
        if(result>0){
            map.put("message" , "添加客户成功");
        }else {
            map.put("message" , "添加客户失败");
        }
        return map;
    }
    
    @Override
    public Client load(Integer client_id ) {
        return clientMapper.load(client_id);
    }
    

    @Override
    public Map<String , Object> clientList(Map<String , Object> map ) {
        List<Client> clientList = clientMapper.clientList(map);
        Integer count = clientMapper.count(map);
        map = PageBean.bfMap(map , count , clientList , Client.class);
        return map;
    }
    
    @Override
    public Map<String , Object> update(Client client , Map<String , Object> map ) {
        int result = clientMapper.update(client);
        if(result>0){
            map.put("message" , "修改成功");
        }else {
            map.put("message" , "修改失败");
        }
        return map;
    }

    @Override
    public Map<String , Object> login(Client client ,HttpSession session) {

        Map<String , Object> map = new HashMap<String , Object>();
        //查询登录人
        Client c1 = clientMapper.login(client);
        map.put("url" , "jsp/bf/login");
        if(c1!=null){
            map.put("message" , "登陆成功");
            session.setAttribute("client" , c1);
            map.put("url" , "jsp/back/main/message");
        }else {
            map.put("message" , "用户名或密码错误");
        }
        return map;
    }
    
    
    
    
}
