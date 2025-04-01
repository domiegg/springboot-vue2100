/**
 * OrdersMapper.java
 * ©2006-2016 四海兴唐科技有限公司
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-10 18:04:16
 **/
package com.shxt.back.orders.mapper;

import java.util.List;
import java.util.Map;

import com.shxt.back.orders.model.Orders;

public interface OrdersMapper {
    int delete(Integer orders_id);

    int add(Orders orders);

    Orders load(Integer orders_id);

    int update(Orders orders);
    int count(Map<String , Object> map);
    List<Orders> ordersList(Map<String , Object> map);
}