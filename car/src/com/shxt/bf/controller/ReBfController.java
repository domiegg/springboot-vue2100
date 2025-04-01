package com.shxt.bf.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shxt.back.re.model.Re;
import com.shxt.back.re.service.ReService;

@Controller
public class ReBfController {
    @Autowired
    ReService reService;
    //添加后台
    @ResponseBody
    @RequestMapping("/bf/reAddDo")
    public String reAddDo(Map<String,Object> map,Re re){
        map = reService.add(re , map);
        map.put("url" , "back/reAdd");
        return "jsp/back/main/addMessage";
    }
}
