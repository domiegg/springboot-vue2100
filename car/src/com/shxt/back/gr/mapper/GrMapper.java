/**
 * GrMapper.java
 * ©2006-2016 四海兴唐科技有限公司
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-11 15:34:57
 **/
package com.shxt.back.gr.mapper;

import java.util.List;
import java.util.Map;

import com.shxt.back.gr.model.Gr;

public interface GrMapper {
    int delete(Integer gr_id);
    
    int add(Gr gr);
    
    Gr load(Integer gr_id);
    
    int update(Gr gr);
    int count(Map<String , Object> map);
    List<Gr> grList(Map<String , Object> map);
}