package com.shxt.back.cars.controller;

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

import com.shxt.back.cars.model.Cars;
import com.shxt.back.cars.service.CarsService;
import com.shxt.main.FilePath;
import com.shxt.main.PageBean;

@Controller
public class CarsController {
    @Autowired
    private CarsService carsService;
    //查询列表
    @RequestMapping("/back/carsList")
    public String carsList(Integer maxPrice,Integer minPrice, @RequestParam(required=false,defaultValue="1")int pages,@RequestParam(required=false,defaultValue="5")int num,Cars cars,Map<String,Object> map,HttpServletRequest request ){
        map = PageBean.backMap(map , pages , num,request);
        map.put("maxPrice" , maxPrice);
        map.put("minPrice" , minPrice);
        map = carsService.carsList(map);
        return "jsp/back/cars/carsList";
    }
    //查看视频
    @RequestMapping("/back/carsVideo")
    public String carsVideo(Map<String,Object> map,String cars_vi){
        map.put("cars_vi" , cars_vi);
        return "jsp/back/cars/carsVideo";
    }
    //添加页面
    @RequestMapping("/back/carsAdd")
    public String carsAdd(Map<String,Object> map){
        return "jsp/back/cars/carsAdd";
    }
    //添加后台
    @PostMapping("/back/carsAddDo")
    public String carsAddDo(Map<String,Object> map,Cars cars,MultipartFile photo,MultipartFile video) throws IllegalStateException, IOException{
        if(photo.getOriginalFilename()!=null&&photo.getOriginalFilename()!=""){
            String root = FilePath.FILEPATH;
            String real_name = photo.getOriginalFilename();
            String ext = FilenameUtils.getExtension(real_name);
            String newName = UUID.randomUUID().toString().replaceAll("-" , "")+"."+ext;
            //建立一个空文件
            File file = new File(root+"/"+newName);
            //把内容写入空的文件
            photo.transferTo(file);
            cars.setCars_pho(newName);
            System.out.println("1231");
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
            cars.setCars_vi(newName);
        }
        map.put("cars" , cars);
        map = carsService.add(cars , map);
        map.put("url" , "back/carsAdd");
        return "jsp/back/main/addMessage";
    }
    //删除页面
    @RequestMapping("/back/carsDel")
    public String carsDel(Integer cars_id,Map<String,Object> map){
        map.put("cars_id" , cars_id);
        return "jsp/back/cars/carsDel";
    }
    //删除
    @RequestMapping("/back/carsDelDo")
    public String carsDelDo(Cars cars,Map<String,Object> map){
        map = carsService.delete(cars , map);
        return "jsp/back/main/message";
    }
    //通过id查询一条记录
    @RequestMapping("/back/carsLoad")
    public String carsload(Integer cars_id,Map<String,Object> map){
        Cars cars = carsService.load(cars_id);
        map.put("cars" , cars);
        return "jsp/back/cars/carsMdi";
    }
    //修改
    @PostMapping("/back/carsMdi")
    public String carsMdi(Cars cars,Map<String,Object> map,MultipartFile photo,MultipartFile haibao,MultipartFile video) throws IllegalStateException, IOException{
        if(photo.getOriginalFilename()!=null&&photo.getOriginalFilename()!=""){
            String root = FilePath.FILEPATH;
            String real_name = photo.getOriginalFilename();
            String ext = FilenameUtils.getExtension(real_name);
            String newName = UUID.randomUUID().toString().replaceAll("-" , "")+"."+ext;
            //建立一个空文件
            File file = new File(root+"/"+newName);
            //把内容写入空的文件
            photo.transferTo(file);
            cars.setCars_pho(newName);
            System.out.println("1231");
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
            cars.setCars_vi(newName);
        }
        map.put("cars" , cars);
        map = carsService.update(cars , map);
        return "jsp/back/main/message";
    }
    


    
}
