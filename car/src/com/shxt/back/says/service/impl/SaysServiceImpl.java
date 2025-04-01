package com.shxt.back.says.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shxt.back.says.mapper.SaysMapper;
import com.shxt.back.says.model.Says;
import com.shxt.back.says.service.SaysService;
import com.shxt.main.PageBean;

@Service
public class SaysServiceImpl implements SaysService{
    @Autowired
    private SaysMapper saysMapper;
    @Override
    public Map<String , Object> delete(Says says,Map<String , Object> map) {
        int result = saysMapper.delete(says.getSays_id());
        if(result>0){
            map.put("message" , "删除成功");
        }else {
            map.put("message" , "删除失败");
        }
        return map;
    }

    @Override
    public Map<String , Object> add(Says says,Map<String , Object> map ) {
        int result = saysMapper.add(says);
        if(result>0){
            map.put("message" , "添加留言成功");
        }else {
            map.put("message" , "添加留言失败");
        }
        return map;
    }

    @Override
    public Says load(Integer says_id ) {
        return saysMapper.load(says_id);
    }

    
    @Override
    public Map<String , Object> saysList(Map<String , Object> map ) {
        List<Says> saysList = saysMapper.saysList(map);
        Integer count = saysMapper.count(map);
        map = PageBean.bfMap(map , count , saysList , Says.class);
        return map;
    }

    @Override
    public Map<String , Object> update(Says says , Map<String , Object> map ) {
        int result = saysMapper.update(says);
        if(result>0){
            map.put("message" , "修改成功");
        }else {
            map.put("message" , "修改失败");
        }
        return map;
    }
    




}
