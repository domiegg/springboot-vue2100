/**
 * CarsMapper.java
 * ©2006-2016 四海兴唐科技有限公司
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-09 09:54:57
 **/
package com.shxt.back.cars.mapper;

import java.util.List;
import java.util.Map;

import com.shxt.back.cars.model.Cars;

public interface CarsMapper {
    int delete(Integer cars_id);

    int add(Cars cars);

    Cars load(Integer cars_id);

    int update(Cars cars);
    int count(Map<String , Object> map);
    List<Cars> carsList(Map<String , Object> map);
    List<Cars> numMax();
    List<Cars> timeZao();
    void buys(Map<String , Object> map);
    void tui(Map<String , Object> map);
}