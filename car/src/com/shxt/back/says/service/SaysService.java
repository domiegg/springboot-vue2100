package com.shxt.back.says.service;

import java.util.Map;

import com.shxt.back.says.model.Says;

public interface SaysService {
    Map<String , Object> delete(Says says,Map<String , Object> map);
    Map<String , Object> add(Says says,Map<String , Object> map);
    Says load(Integer says_id);
    Map<String , Object> update(Says says,Map<String , Object> map);
    Map<String , Object> saysList(Map<String , Object> map);
}
