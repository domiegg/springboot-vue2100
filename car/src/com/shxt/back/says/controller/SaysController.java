package com.shxt.back.says.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shxt.back.says.model.Says;
import com.shxt.back.says.service.SaysService;
import com.shxt.main.PageBean;

@Controller
public class SaysController {
    @Autowired
    private SaysService saysService;
    //查询列表
    @RequestMapping("/back/saysList")
    public String saysList(@RequestParam(required=false,defaultValue="1")int pages,@RequestParam(required=false,defaultValue="5")int num,Says says,Map<String,Object> map,HttpServletRequest request ){
        map = PageBean.backMap(map , pages , num,request);
        map = saysService.saysList(map);
        return "jsp/back/says/saysList";
    }
    //添加页面
    @RequestMapping("/back/saysAdd")
    public String saysAdd(Map<String,Object> map){
        return "jsp/back/says/saysAdd";
    }
    //添加后台
    @RequestMapping("/back/saysAddDo")
    public String saysAddDo(Map<String,Object> map,Says says){
        map = saysService.add(says , map);
        map.put("url" , "back/saysAdd");
        return "jsp/back/main/addMessage";
    }
    //删除页面
    @RequestMapping("/back/saysDel")
    public String saysDel(Integer says_id,Map<String,Object> map){
        map.put("says_id" , says_id);
        return "jsp/back/says/saysDel";
    }
    //删除
    @RequestMapping("/back/saysDelDo")
    public String saysDelDo(Says says,Map<String,Object> map){
        map = saysService.delete(says , map);
        return "jsp/back/main/message";
    }
    //通过id查询一条记录
    @RequestMapping("/back/saysLoad")
    public String saysload(Integer says_id,Map<String,Object> map){
        Says says = saysService.load(says_id);
        map.put("says" , says);
        return "jsp/back/says/saysMdi";
    }
    //修改
    @RequestMapping("/back/saysMdi")
    public String saysMdi(Says says,Map<String,Object> map){
        map = saysService.update(says , map);
        return "jsp/back/main/message";
    }
    


    
}
