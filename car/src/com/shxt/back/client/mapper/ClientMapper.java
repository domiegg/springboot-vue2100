/**
 * ClientMapper.java
 * ©2006-2016 四海兴唐科技有限公司
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-08 14:38:44
 **/
package com.shxt.back.client.mapper;

import java.util.List;
import java.util.Map;

import com.shxt.back.client.model.Client;

public interface ClientMapper {

    int delete(Integer client_id);
    
    int add(Client client);
    
    Client load(Integer client_id);
    
    int update(Client client);
    int count(Map<String , Object> map);
    List<Client> clientList(Map<String , Object> map);
    Client login(Client client);
}