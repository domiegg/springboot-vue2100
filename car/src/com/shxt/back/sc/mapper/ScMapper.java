/**
 * ScMapper.java
 * ©2006-2016 四海兴唐科技有限公司
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-10 13:25:16
 **/
package com.shxt.back.sc.mapper;

import java.util.List;
import java.util.Map;

import com.shxt.back.sc.model.Sc;

public interface ScMapper {

    int delete(Integer sc_id);
    int add(Sc sc);
    Sc load(Integer sc_id);
    int update(Sc sc);
    int count(Map<String , Object> map);
    List<Sc> scList(Map<String , Object> map);
}