package com.shxt.back.sc.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shxt.back.sc.mapper.ScMapper;
import com.shxt.back.sc.model.Sc;
import com.shxt.back.sc.service.ScService;
import com.shxt.main.PageBean;
@Service
public class ScServiceImpl implements ScService{
    @Autowired
    private ScMapper scMapper;
    @Override
    public Map<String , Object> add(Sc sc,Map<String , Object> map ) {
        int result = scMapper.add(sc);
        if(result>0){
            map.put("message" , "添加员工成功");
        }else {
            map.put("message" , "添加员工失败");
        }
        return map;
    }
    @Override
    public Map<String , Object> delete(Sc sc,Map<String , Object> map) {
        int result = scMapper.delete(sc.getSc_id());
        if(result>0){
            map.put("message" , "删除成功");
        }else {
            map.put("message" , "删除失败");
        }
        return map;
    }
    @Override
    public Sc load(Integer sc_id ) {
        return scMapper.load(sc_id);
    }

    
    @Override
    public Map<String , Object> scList(Map<String , Object> map ) {
        List<Sc> scList = scMapper.scList(map);
        Integer count = scMapper.count(map);
        map = PageBean.bfMap(map , count , scList , Sc.class);
        return map;
    }
    

    @Override
    public Map<String , Object> update(Sc sc , Map<String , Object> map ) {
        int result = scMapper.update(sc);
        if(result>0){
            map.put("message" , "删除成功");
        }else {
            map.put("message" , "删除失败");
        }

        return map;
    }
}
