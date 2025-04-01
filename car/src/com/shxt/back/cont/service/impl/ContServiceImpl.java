package com.shxt.back.cont.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shxt.back.cont.mapper.ContMapper;
import com.shxt.back.cont.model.Cont;
import com.shxt.back.cont.service.ContService;
import com.shxt.main.PageBean;

@Service
public class ContServiceImpl implements ContService{
    @Autowired
    private ContMapper contMapper;
    @Override
    public Map<String , Object> delete(Cont cont,Map<String , Object> map) {
        int result = contMapper.delete(cont.getCont_id());
        if(result>0){
            map.put("message" , "删除成功");
        }else {
            map.put("message" , "删除失败");
        }
        return map;
    }

    @Override
    public Map<String , Object> add(Cont cont,Map<String , Object> map ) {
        int result = contMapper.add(cont);
        if(result>0){
            map.put("message" , "添加客户成功");
        }else {
            map.put("message" , "添加客户失败");
        }
        return map;
    }

    @Override
    public Cont load(Integer cont_id ) {
        return contMapper.load(cont_id);
    }

    
    @Override
    public Map<String , Object> contList(Map<String , Object> map ) {
        List<Cont> contList = contMapper.contList(map);
        Integer count = contMapper.count(map);
        map = PageBean.bfMap(map , count , contList , Cont.class);
        return map;
    }

    @Override
    public Map<String , Object> update(Cont cont , Map<String , Object> map ) {
        int result = contMapper.update(cont);
        if(result>0){
            map.put("message" , "修改成功");
        }else {
            map.put("message" , "修改失败");
        }
        return map;
    }
    




}
