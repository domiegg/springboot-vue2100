package com.shxt.back.cont.service;

import java.util.Map;

import com.shxt.back.cont.model.Cont;

public interface ContService {
    Map<String , Object> delete(Cont cont,Map<String , Object> map);
    Map<String , Object> add(Cont cont,Map<String , Object> map);
    Cont load(Integer cont_id);
    Map<String , Object> update(Cont cont,Map<String , Object> map);
    Map<String , Object> contList(Map<String , Object> map);
}
