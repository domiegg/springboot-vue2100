package com.shxt.back.gr.service;

import java.util.Map;

import com.shxt.back.gr.model.Gr;

public interface GrService {
    Map<String , Object> delete(Gr gr,Map<String , Object> map);
    Map<String , Object> add(Gr gr,Map<String , Object> map);
    Gr load(Integer gr_id);
    Map<String , Object> update(Gr gr,Map<String , Object> map);
    Map<String , Object> grList(Map<String , Object> map);
}
