/**
 * UserMapper.java
 * ©2006-2016 四海兴唐科技有限公司
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2017-12-19 10:52:01
 **/
package com.shxt.back.user.mapper;

import java.util.List;
import java.util.Map;

import com.shxt.back.user.model.User;

public interface UserMapper {
    int delete(Integer user_id);
    int add(User user);
    User load(Integer user_id);
    int update(User user);
    int count(Map<String , Object> map);
    List<User> userList(Map<String , Object> map);
    User login(User user);
}