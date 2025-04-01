package com.shxt.back.re.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.shxt.back.re.model.Re;
import com.shxt.back.re.service.ReService;
import com.shxt.main.PageBean;

@Controller
public class ReController {
    @Autowired
    private ReService reService;
    //查询列表
    @RequestMapping("/back/reList")
    public String reList(@RequestParam(required=false,defaultValue="1")int pages,@RequestParam(required=false,defaultValue="5")int num,Re re,Map<String,Object> map,HttpServletRequest request ){
        map = PageBean.backMap(map , pages , num,request);
        map = reService.reList(map);
        return "jsp/back/re/reList";
    }
    //添加页面
    @RequestMapping("/back/reAdd")
    public String reAdd(Map<String,Object> map){
        return "jsp/back/re/reAdd";
    }
    //添加后台
    @RequestMapping("/back/reAddDo")
    public String reAddDo(Map<String,Object> map,Re re){
        map = reService.add(re , map);
        map.put("url" , "back/reAdd");
        return "jsp/back/main/addMessage";
    }
    //删除页面
    @RequestMapping("/back/reDel")
    public String reDel(Integer re_id,Map<String,Object> map){
        map.put("re_id" , re_id);
        return "jsp/back/re/reDel";
    }
    //删除
    @RequestMapping("/back/reDelDo")
    public String reDelDo(Re re,Map<String,Object> map){
        map = reService.delete(re , map);
        return "jsp/back/main/message";
    }
    //通过id查询一条记录
    @RequestMapping("/back/reLoad")
    public String reload(Integer re_id,Map<String,Object> map){
        Re re = reService.load(re_id);
        map.put("re" , re);
        return "jsp/back/re/reMdi";
    }
    //修改
    @RequestMapping("/back/reMdi")
    public String reMdi(Re re,Map<String,Object> map){
        map = reService.update(re , map);
        return InternalResourceViewResolver.FORWARD_URL_PREFIX+"/back/reList";
    }

    
    

}
