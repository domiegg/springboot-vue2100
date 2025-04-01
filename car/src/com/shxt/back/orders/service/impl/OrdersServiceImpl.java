package com.shxt.back.orders.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shxt.back.orders.mapper.OrdersMapper;
import com.shxt.back.orders.model.Orders;
import com.shxt.back.orders.service.OrdersService;
import com.shxt.main.PageBean;

@Service
public class OrdersServiceImpl implements OrdersService{
    @Autowired
    private OrdersMapper ordersMapper;
    @Override
    public Map<String , Object> delete(Orders orders,Map<String , Object> map) {
        int result = ordersMapper.delete(orders.getOr_id());
        if(result>0){
            map.put("message" , "删除成功");
        }else {
            map.put("message" , "删除失败");
        }
        return map;
    }
    
    @Override
    public Map<String , Object> add(Orders orders,Map<String , Object> map ) {
        int result = ordersMapper.add(orders);
        if(result>0){
            map.put("message" , "添加订单成功");
        }else {
            map.put("message" , "添加订单失败");
        }
        return map;
    }
    
    @Override
    public Orders load(Integer orders_id ) {
        return ordersMapper.load(orders_id);
    }
    

    @Override
    public Map<String , Object> ordersList(Map<String , Object> map ) {
        List<Orders> ordersList = ordersMapper.ordersList(map);
        Integer count = ordersMapper.count(map);
        map = PageBean.bfMap(map , count , ordersList , Orders.class);
        return map;
    }
    
    @Override
    public Map<String , Object> update(Orders orders , Map<String , Object> map ) {
        int result = ordersMapper.update(orders);
        if(result>0){
            map.put("message" , "修改成功");
        }else {
            map.put("message" , "修改失败");
        }
        return map;
    }

    
    
    
    
}
