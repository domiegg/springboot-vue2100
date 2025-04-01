package com.shxt.back.re.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shxt.back.re.mapper.ReMapper;
import com.shxt.back.re.model.Re;
import com.shxt.back.re.service.ReService;
import com.shxt.main.PageBean;

@Service
public class ReServiceImpl implements ReService{
    @Autowired
    private ReMapper reMapper;
    @Override
    public Map<String , Object> delete(Re re,Map<String , Object> map) {
        int result = reMapper.delete(re.getRe_id());
        if(result>0){
            map.put("message" , "删除成功");
        }else {
            map.put("message" , "删除失败");
        }
        return map;
    }
    
    @Override
    public Map<String , Object> add(Re re,Map<String , Object> map ) {
        int result = reMapper.add(re);
        if(result>0){
            map.put("message" , "添加预约成功");
        }else {
            map.put("message" , "添加预约失败");
        }
        return map;
    }
    
    @Override
    public Re load(Integer re_id ) {
        return reMapper.load(re_id);
    }
    

    @Override
    public Map<String , Object> reList(Map<String , Object> map ) {
        List<Re> reList = reMapper.reList(map);
        Integer count = reMapper.count(map);
        map = PageBean.bfMap(map , count , reList , Re.class);
        return map;
    }
    
    @Override
    public Map<String , Object> update(Re re , Map<String , Object> map ) {
        int result = reMapper.update(re);
        if(result>0){
            map.put("message" , "修改成功");
        }else {
            map.put("message" , "修改失败");
        }
        return map;
    }

    
    
    
    
    
}
