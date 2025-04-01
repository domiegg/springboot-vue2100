package com.shxt.back.cont.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shxt.back.cont.model.Cont;
import com.shxt.back.cont.service.ContService;
import com.shxt.main.PageBean;

@Controller
public class ContController {
    @Autowired
    private ContService contService;
    //查询列表
    @RequestMapping("/back/contList")
    public String contList(@RequestParam(required=false,defaultValue="1")int pages,@RequestParam(required=false,defaultValue="5")int num,Cont cont,Map<String,Object> map,HttpServletRequest request ){
        map = PageBean.backMap(map , pages , num,request);
        map = contService.contList(map);
        return "jsp/back/cont/contList";
    }
    //添加页面
    @RequestMapping("/bf/contAdd")
    public String contAdd(Map<String,Object> map){
        return "jsp/bf/contAdd";
    }
    //添加后台
    @RequestMapping("/back/contAddDo")
    public String contAddDo(Map<String,Object> map,Cont cont){
        map = contService.add(cont , map);
        return "jsp/bf/contAdd";
    }
    //删除页面
    @RequestMapping("/back/contDel")
    public String contDel(Integer cont_id,Map<String,Object> map){
        map.put("cont_id" , cont_id);
        return "jsp/back/cont/contDel";
    }
    //删除
    @RequestMapping("/back/contDelDo")
    public String contDelDo(Cont cont,Map<String,Object> map){
        map = contService.delete(cont , map);
        return "jsp/back/main/message";
    }
    //通过id查询一条记录
    @RequestMapping("/back/contLoad")
    public String contload(Integer cont_id,Map<String,Object> map){
        Cont cont = contService.load(cont_id);
        map.put("cont" , cont);
        return "jsp/back/cont/contMdi";
    }
    //修改
    @RequestMapping("/back/contMdi")
    public String contMdi(Cont cont,Map<String,Object> map){
        map = contService.update(cont , map);
        return "jsp/back/main/message";
    }
    


    
}
