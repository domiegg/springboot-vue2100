package com.shxt.bf.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.shxt.back.cars.service.CarsService;
import com.shxt.back.client.model.Client;
import com.shxt.back.client.service.ClientService;
import com.shxt.back.orders.model.Orders;
import com.shxt.back.orders.service.OrdersService;
import com.shxt.main.PageBean;

@Controller
public class OrderBfController {
    @Autowired
    private OrdersService ordersService;
    @Autowired
    private ClientService clientService;
    @Autowired
    private CarsService carsService;
    //添加
    @RequestMapping("/bf/ordersAdd")
    public String ordersAdd(Map<String,Object> map,Orders orders,String cars_name){
        Date date = new Date();
        SimpleDateFormat s = new SimpleDateFormat("yyyyMMddHHmmss");
        String or_code = s.format(date)+(int)(Math.random()*9000+1000);
        orders.setOr_code(or_code);
        map.put("orders" , orders);
        map.put("cars_name" , cars_name);
        return "jsp/bf/ordersAdd";
    }
    //添加后台
    @RequestMapping("/bf/ordersAddDo")
    public String ordersAddDo(Map<String,Object> map,Orders orders,String client_paypassword,HttpServletRequest request,Integer fk_orCars_id,Integer or_num){
        HttpSession session = request.getSession();
        Client client = (Client)session.getAttribute("client");
        
        if(client_paypassword.equals(client.getClient_paypassword())){
            map.put("cars_id" , fk_orCars_id);
            map.put("cars_num" , or_num);
            carsService.buys(map);
            Date date = new Date();
            orders.setOr_date(date);
            map.put("orders" , orders);
            map = ordersService.add(orders , map);
        }else {
            map.put("message" , "支付密码错误");
        }
        return "jsp/back/main/message";
    }
    //查询列表
    @RequestMapping("/bf/clientLoad")
    public String ordersList(@RequestParam(required=false,defaultValue="1")int pages,@RequestParam(required=false,defaultValue="5")int num,Orders orders,Map<String,Object> map,HttpServletRequest request ){
        HttpSession session = request.getSession();
        Client c = (Client)session.getAttribute("client");
        Client client = clientService.load(c.getClient_id());
        map.put("client" , client);
        orders.setFk_orClient_id(client.getClient_id());
        map.put("orders" , orders);
        map = PageBean.backMap(map , pages , num,request);
        map = ordersService.ordersList(map);
        System.out.println(map.get("ordersList"));
        return "jsp/bf/clientLoad";
    }
    //修改
    @RequestMapping("/bf/ordersMdi")
    public String ordersMdi(Orders orders,Map<String,Object> map,int pages,String oper){
        map = ordersService.update(orders , map);
        map.put("pages" , pages);
        if(oper!=null&&oper!=""&&oper.equals("grAdd")){
            map.put("message" , "评价成功");
            return "jsp/back/main/message";
        }else {
            return InternalResourceViewResolver.REDIRECT_URL_PREFIX+"/bf/clientLoad";
        }
        
    }
}
