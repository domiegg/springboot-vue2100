/**
 * ContMapper.java
 * ©2006-2016 四海兴唐科技有限公司
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-12 00:05:04
 **/
package com.shxt.back.cont.mapper;

import java.util.List;
import java.util.Map;

import com.shxt.back.cont.model.Cont;

public interface ContMapper {
    int delete(Integer cont_id);
    
    int add(Cont cont);
    
    Cont load(Integer cont_id);
    
    int update(Cont cont);
    int count(Map<String , Object> map);
    List<Cont> contList(Map<String , Object> map);
}