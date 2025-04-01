package com.shxt.back.user.controller;

import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shxt.back.user.model.User;
import com.shxt.back.user.service.UserService;
import com.shxt.main.FilePath;
import com.shxt.main.PageBean;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    //查询列表
    @RequestMapping("/back/userList")
    public String userList(@RequestParam(required=false,defaultValue="1")int pages,@RequestParam(required=false,defaultValue="5")int num,User user,Map<String,Object> map,HttpServletRequest request ){
        map = PageBean.backMap(map , pages , num,request);
        map = userService.userList(map);
        return "jsp/back/user/userList";
    }
    //头像修改页面
    @RequestMapping("/back/userIcon")
    public String userIcon(Map<String,Object> map){
        return "jsp/back/user/userIconMdi";
    }
    @PostMapping("/back/userIconDo")
    public String userIconDo(Map<String,Object> map,User user,MultipartFile icon,HttpServletRequest request) throws IllegalStateException, IOException{
        String root = FilePath.FILEPATH;
        String real_name = icon.getOriginalFilename();
        String ext = FilenameUtils.getExtension(real_name);
        String newName = UUID.randomUUID().toString().replaceAll("-" , "")+"."+ext;
        //建立一个空文件
        File file = new File(root+"/"+newName);
        //把内容写入空的文件
        icon.transferTo(file);
        user.setUser_logo(newName);
        userService.update(user , map);
        return "jsp/back/main/message";
    }
    //添加页面
    @RequestMapping("/back/userAdd")
    public String userAdd(Map<String,Object> map){
        return "jsp/back/user/userAdd";
    }
    //添加后台
    @RequestMapping("/back/userAddDo")
    public String userAddDo(Map<String,Object> map,User user){
        map = userService.add(user , map);
        map.put("url" , "back/userAdd");
        return "jsp/back/main/addMessage";
    }
    //通过id查询一条记录
    @RequestMapping("/back/userLoad")
    public String userload(Integer user_id,Map<String,Object> map){
        User user = userService.load(user_id);
        map.put("user" , user);
        return "jsp/back/user/userMdi";
    }
    //修改
    @RequestMapping("/back/userMdi")
    public String userMdi(User user,Map<String,Object> map){
        map = userService.update(user , map);
        return "jsp/back/main/message";
    }
    //修改
    @RequestMapping("/back/userDel")
    public String userDel(Integer user_id,Map<String,Object> map){
        map.put("user_id" , user_id);
        return "jsp/back/user/userDel";
    }
    //删除
    @RequestMapping("/back/userDelDo")
    public String userDelDo(User user,Map<String,Object> map){
        map = userService.update(user , map);
        return "jsp/back/main/message";
    }
    //修改密码
    @RequestMapping("/back/passwordMdi")
    public String passwordMdi(){
        return "jsp/back/user/passwordMdi";
    }

    
}
