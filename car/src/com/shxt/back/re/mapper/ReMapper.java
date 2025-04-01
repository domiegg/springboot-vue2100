/**
 * ReMapper.java
 * ©2006-2016 四海兴唐科技有限公司
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-11 17:44:26
 **/
package com.shxt.back.re.mapper;

import java.util.List;
import java.util.Map;

import com.shxt.back.re.model.Re;

public interface ReMapper {
    int delete(Integer re_id);

    int add(Re re);

    Re load(Integer re_id);

    int update(Re re);
    int count(Map<String , Object> map);
    List<Re> reList(Map<String , Object> map);
}