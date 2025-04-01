package com.shxt.back.orders.service;

import java.util.Map;

import com.shxt.back.orders.model.Orders;

public interface OrdersService {
    Map<String , Object> delete(Orders orders,Map<String , Object> map);
    Map<String , Object> add(Orders orders,Map<String , Object> map);
    Orders load(Integer orders_id);
    Map<String , Object> update(Orders orders,Map<String , Object> map);
    Map<String , Object> ordersList(Map<String , Object> map);
}
