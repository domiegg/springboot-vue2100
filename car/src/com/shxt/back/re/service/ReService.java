package com.shxt.back.re.service;

import java.util.Map;

import com.shxt.back.re.model.Re;

public interface ReService {
    Map<String , Object> delete(Re re,Map<String , Object> map);
    Map<String , Object> add(Re re,Map<String , Object> map);
    Re load(Integer re_id);
    Map<String , Object> update(Re re,Map<String , Object> map);
    Map<String , Object> reList(Map<String , Object> map);
}
