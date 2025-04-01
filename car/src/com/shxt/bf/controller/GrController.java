package com.shxt.bf.controller;

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
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.shxt.back.gr.model.Gr;
import com.shxt.back.gr.service.GrService;
import com.shxt.main.FilePath;
import com.shxt.main.PageBean;

@Controller
public class GrController {
    @Autowired
    private GrService grService;
    //查询列表
    @RequestMapping("/back/grList")
    public String grList(Integer maxPrice,Integer minPrice, @RequestParam(required=false,defaultValue="1")int pages,@RequestParam(required=false,defaultValue="5")int num,Gr gr,Map<String,Object> map,HttpServletRequest request ){
        map = PageBean.backMap(map , pages , num,request);
        map.put("maxPrice" , maxPrice);
        map.put("minPrice" , minPrice);
        map = grService.grList(map);
        return "jsp/back/gr/grList";
    }
    //查看视频
    @RequestMapping("/back/grVideo")
    public String grVideo(Map<String,Object> map,String gr_vi){
        map.put("gr_vi" , gr_vi);
        return "jsp/back/gr/grVideo";
    }
    //添加页面
    @RequestMapping("/bf/grAdd")
    public String grAdd(Map<String,Object> map,Gr gr,String cars_name,Integer or_id,Integer pages){
        map.put("cars_name" , cars_name);
        map.put("or_id" , or_id);
        map.put("pages" , pages);
        return "jsp/bf/grAdd";
    }
    //添加后台
    @PostMapping("/bf/grAddDo")
    public String grAddDo(Map<String,Object> map,Gr gr,MultipartFile photo,Integer or_id,Integer pages) throws IllegalStateException, IOException{
        if(photo.getOriginalFilename()!=null&&photo.getOriginalFilename()!=""){
            String root = FilePath.FILEPATH;
            String real_name = photo.getOriginalFilename();
            String ext = FilenameUtils.getExtension(real_name);
            String newName = UUID.randomUUID().toString().replaceAll("-" , "")+"."+ext;
            //建立一个空文件
            File file = new File(root+"/"+newName);
            //把内容写入空的文件
            photo.transferTo(file);
            System.out.println("1231");
            gr.setGr_pho(newName);
        }

        map.put("gr" , gr);
        map = grService.add(gr , map);
        return InternalResourceViewResolver.FORWARD_URL_PREFIX+ "/bf/ordersMdi?or_status=6&pages="+pages+"&or_id="+or_id+"&oper=grAdd";
    }
    //删除页面
    @RequestMapping("/back/grDel")
    public String grDel(Integer gr_id,Map<String,Object> map){
        map.put("gr_id" , gr_id);
        return "jsp/back/gr/grDel";
    }
    //删除
    @RequestMapping("/back/grDelDo")
    public String grDelDo(Gr gr,Map<String,Object> map){
        map = grService.delete(gr , map);
        return "jsp/back/main/message";
    }
    //通过id查询一条记录
    @RequestMapping("/back/grLoad")
    public String grload(Integer gr_id,Map<String,Object> map){
        Gr gr = grService.load(gr_id);
        map.put("gr" , gr);
        return "jsp/back/gr/grMdi";
    }
    //修改
    @PostMapping("/back/grMdi")
    public String grMdi(Gr gr,Map<String,Object> map,MultipartFile photo,MultipartFile haibao,MultipartFile video) throws IllegalStateException, IOException{
        System.out.println(photo.getOriginalFilename());
        System.out.println(haibao.getOriginalFilename());
        System.out.println(video.getOriginalFilename());
        if(photo.getOriginalFilename()!=null&&photo.getOriginalFilename()!=""){
            String root = FilePath.FILEPATH;
            String real_name = photo.getOriginalFilename();
            String ext = FilenameUtils.getExtension(real_name);
            String newName = UUID.randomUUID().toString().replaceAll("-" , "")+"."+ext;
            //建立一个空文件
            File file = new File(root+"/"+newName);
            //把内容写入空的文件
            photo.transferTo(file);
            System.out.println("1231");
        }
        if(haibao.getOriginalFilename()!=null&&haibao.getOriginalFilename()!=""){
            String root = FilePath.FILEPATH;
            String real_name = haibao.getOriginalFilename();
            String ext = FilenameUtils.getExtension(real_name);
            String newName = UUID.randomUUID().toString().replaceAll("-" , "")+"."+ext;
            //建立一个空文件
            File file = new File(root+"/"+newName);
            //把内容写入空的文件
            haibao.transferTo(file);
        }
        if(video.getOriginalFilename()!=null&&video.getOriginalFilename()!=""){
            String root = FilePath.FILEPATH;
            String real_name = video.getOriginalFilename();
            String ext = FilenameUtils.getExtension(real_name);
            String newName = UUID.randomUUID().toString().replaceAll("-" , "")+"."+ext;
            //建立一个空文件
            File file = new File(root+"/"+newName);
            //把内容写入空的文件
            video.transferTo(file);
        }
        map.put("gr" , gr);
        map = grService.update(gr , map);
        return "jsp/back/main/message";
    }

    
    

}
