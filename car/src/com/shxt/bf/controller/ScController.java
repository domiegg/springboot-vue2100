package com.shxt.bf.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shxt.back.client.model.Client;
import com.shxt.back.sc.model.Sc;
import com.shxt.back.sc.service.ScService;
import com.shxt.main.PageBean;

@Controller
public class ScController {
    @Autowired
    private ScService scService;
    //添加后台
    @RequestMapping("/bf/scAdd")
    @ResponseBody
    public Map<String , Object> scAddDo(Map<String,Object> map,Sc sc,HttpServletRequest request){
        HttpSession session = request.getSession();
        Client client = (Client)session.getAttribute("client");
        sc.setFk_scClient_id(client.getClient_id());
        map = scService.add(sc , map);
        map.put("url" , "back/sctAdd");
        return map;
    }
    //查询列表
    @RequestMapping("/bf/scList")
    public String scList(@RequestParam(required=false,defaultValue="1")int pages,@RequestParam(required=false,defaultValue="100")int num,Sc sc,Map<String,Object> map,HttpServletRequest request ){
        map = PageBean.backMap(map , pages , num,request);
        map = scService.scList(map);
        System.out.println(map.get("scList"));
        return "jsp/bf/scList";
    }
    //删除页面
    @RequestMapping("/bf/scDel")
    public String scDel(Integer sc_id,Map<String,Object> map){
        map.put("sc_id" , sc_id);
        return "jsp/bf/scDel";
    }
    //删除
    @RequestMapping("/back/scDelDo")
    public String scDelDo(Sc sc,Map<String,Object> map){
        map = scService.delete(sc , map);
        return "jsp/back/main/message";
    }
}
