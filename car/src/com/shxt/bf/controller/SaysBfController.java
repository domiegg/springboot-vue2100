package com.shxt.bf.controller;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.shxt.back.says.model.Says;
import com.shxt.back.says.service.SaysService;
import com.shxt.main.PageBean;

@Controller
public class SaysBfController {
    @Autowired
    private SaysService saysService;
    //查询列表
    @RequestMapping("/bf/saysList")
    public String saysList(@RequestParam(required=false,defaultValue="1")int pages,@RequestParam(required=false,defaultValue="5")int num,Says says,Map<String,Object> map,HttpServletRequest request ){
        map = PageBean.backMap(map , pages , num,request);
        map = saysService.saysList(map);
        return "jsp/bf/saysList";
    }
    //添加后台
    @RequestMapping("/bf/saysAddDo")
    public String saysAddDo(Map<String,Object> map,Says says){
        Date date = new Date();
        says.setSays_date(date);
        map.put("says" , says);
        map = saysService.add(says , map);
        map.put("url" , "back/saysAdd");
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX+"/bf/saysList";
    }
}
