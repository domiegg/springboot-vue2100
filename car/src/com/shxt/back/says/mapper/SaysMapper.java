/**
 * SaysMapper.java
 * ©2006-2016 四海兴唐科技有限公司
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-12 19:39:10
 **/
package com.shxt.back.says.mapper;

import java.util.List;
import java.util.Map;

import com.shxt.back.says.model.Says;

public interface SaysMapper {
    int delete(Integer says_id);

    int add(Says says);

    Says load(Integer says_id);

    int update(Says says);
    int count(Map<String , Object> map);
    List<Says> saysList(Map<String , Object> map);
}