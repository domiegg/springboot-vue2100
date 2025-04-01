package com.shxt.back.sc.service;

import java.util.Map;

import com.shxt.back.sc.model.Sc;

public interface ScService {
    Map<String , Object> add(Sc sc,Map<String , Object> map);
    Map<String , Object> delete(Sc sc,Map<String , Object> map);
    
    Sc load(Integer sc_id);
    Map<String , Object> update(Sc sc,Map<String , Object> map);
    Map<String , Object> scList(Map<String , Object> map);
}
