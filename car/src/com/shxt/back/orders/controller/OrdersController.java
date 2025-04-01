package com.shxt.back.orders.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.shxt.back.cars.service.CarsService;
import com.shxt.back.orders.model.Orders;
import com.shxt.back.orders.service.OrdersService;
import com.shxt.main.PageBean;

@Controller
public class OrdersController {
    @Autowired
    private OrdersService ordersService;
    @Autowired
    private CarsService carsService;
    //查询列表
    @RequestMapping("/back/ordersList")
    public String ordersList(@RequestParam(required=false,defaultValue="1")int pages,@RequestParam(required=false,defaultValue="5")int num,Orders orders,Map<String,Object> map,HttpServletRequest request ){
        map = PageBean.backMap(map , pages , num,request);
        map = ordersService.ordersList(map);
        System.out.println(map.get("ordersList"));
        return "jsp/back/orders/ordersList";
    }
    //修改
    @RequestMapping("/back/ordersMdi")
    public String ordersMdi(Orders orders,Map<String,Object> map,int pages,Integer cars_id,Integer cars_num){
        map = ordersService.update(orders , map);
        map.put("pages" , pages);
        if(cars_id!=null){
            map.put("cars_id" , cars_id);
            map.put("cars_num" , cars_num);
            carsService.tui(map);
        }
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX+"/back/ordersList";
    }
}
