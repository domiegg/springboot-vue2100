package com.shxt.back.gr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shxt.back.gr.mapper.GrMapper;
import com.shxt.back.gr.model.Gr;
import com.shxt.back.gr.service.GrService;
import com.shxt.main.PageBean;

@Service
public class GrServiceImpl implements GrService{
    @Autowired
    private GrMapper grMapper;
    @Override
    public Map<String , Object> delete(Gr gr,Map<String , Object> map) {
        int result = grMapper.delete(gr.getGr_id());
        if(result>0){
            map.put("message" , "删除成功");
        }else {
            map.put("message" , "删除失败");
        }
        return map;
    }
    
    @Override
    public Map<String , Object> add(Gr gr,Map<String , Object> map ) {
        int result = grMapper.add(gr);
        if(result>0){
            map.put("message" , "添加客户成功");
        }else {
            map.put("message" , "添加客户失败");
        }
        return map;
    }
    
    @Override
    public Gr load(Integer gr_id ) {
        return grMapper.load(gr_id);
    }
    

    @Override
    public Map<String , Object> grList(Map<String , Object> map ) {
        List<Gr> grList = grMapper.grList(map);
        Integer count = grMapper.count(map);
        map = PageBean.bfMap(map , count , grList , Gr.class);
        return map;
    }
    
    @Override
    public Map<String , Object> update(Gr gr , Map<String , Object> map ) {
        int result = grMapper.update(gr);
        if(result>0){
            map.put("message" , "修改成功");
        }else {
            map.put("message" , "修改失败");
        }
        return map;
    }
    


    
    
    
    
}
