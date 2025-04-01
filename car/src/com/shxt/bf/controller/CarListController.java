package com.shxt.bf.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shxt.back.cars.model.Cars;
import com.shxt.back.cars.service.CarsService;
import com.shxt.back.gr.model.Gr;
import com.shxt.back.gr.service.GrService;
import com.shxt.main.PageBean;

@Controller
public class CarListController {
    @Autowired
    private CarsService carsService;
    @Autowired
    private GrService grService;
    @RequestMapping("/bf/com")
    public String com(){
        return "jsp/bf/com";
    }
    //查询列表
    @RequestMapping("/bf/carsList")
    public String carsList(Integer maxPrice,Integer minPrice, @RequestParam(required=false,defaultValue="1")int pages,@RequestParam(required=false,defaultValue="5")int num,Cars cars,Map<String,Object> map,HttpServletRequest request){
        map = PageBean.backMap(map , pages , num,request);
        map.put("maxPrice" , maxPrice);
        map.put("minPrice" , minPrice);
        map = carsService.carsList(map);
        return "jsp/bf/carsList";
    }
    //通过id查询一条记录
    @RequestMapping("/bf/carsLoad")
    public String carsload(Integer cars_id,Map<String,Object> map,HttpServletRequest request){
        Cars cars = carsService.load(cars_id);
        map.put("cars" , cars);
        Gr gr = new Gr();
        gr.setFk_grCar_id(cars_id);
        map.put("gr" , gr);
        map = PageBean.backMap(map , 1 , 100,request);
        map =  grService.grList(map);
        return "jsp/bf/carsLoad";
    }
    //主页
    @RequestMapping("/bf/main")
    public String main(Map<String,Object> map){
        map = carsService.bfMain(map);
        return "jsp/bf/main";
    }
    
}
