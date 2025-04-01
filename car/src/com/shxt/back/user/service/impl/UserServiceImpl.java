package com.shxt.back.user.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shxt.back.user.mapper.UserMapper;
import com.shxt.back.user.model.User;
import com.shxt.back.user.service.UserService;
import com.shxt.main.PageBean;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;

    
    @Override
    public Map<String , Object> add(User user,Map<String , Object> map ) {
        int result = userMapper.add(user);
        if(result>0){
            map.put("message" , "添加员工成功");
        }else {
            map.put("message" , "添加员工失败");
        }
        return map;
    }
    @Override
    public int delete(Integer user_id ) {
        // TODO Auto-generated method stub
        return 0;
    }
    @Override
    public User load(Integer user_id ) {
        return userMapper.load(user_id);
    }
    

    @Override
    public Map<String , Object> userList(Map<String , Object> map ) {
        List<User> userList = userMapper.userList(map);
        Integer count = userMapper.count(map);
        map = PageBean.bfMap(map , count , userList , User.class);
        return map;
    }

    @Override
    public Map<String , Object> login(User user ,HttpSession session) {

        Map<String , Object> map = new HashMap<String , Object>();
        //查询登录人
        User u1 = userMapper.login(user);
        map.put("url" , "login");
        System.out.println(u1);
        if(u1!=null){
            if(u1.getDelete_status()!=-1){
                session.setAttribute("user" , u1);
                map.put("url" , "main");
            }else {
                map.put("message" , "你已被离职");
            }
        }else {
            map.put("message" , "用户名或密码错误");
        }
        return map;
    }
    
    @Override
    public Map<String , Object> update(User user , Map<String , Object> map ) {
        int result = userMapper.update(user);
        if(user.getDelete_status()!=null){
            if(result>0){
                map.put("message" , "删除成功");
            }else {
                map.put("message" , "删除失败");
            }
        }else{
            if(result>0){
                map.put("message" , "修改成功");
            }else {
                map.put("message" , "修改失败");
            }
        }
        
        return map;
    }
    

}
