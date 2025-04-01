package com.shxt.back.cars.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shxt.back.cars.mapper.CarsMapper;
import com.shxt.back.cars.model.Cars;
import com.shxt.back.cars.service.CarsService;
import com.shxt.main.PageBean;

@Service
public class CarsServiceImpl implements CarsService{
    @Autowired
    private CarsMapper carsMapper;
    @Override
    public Map<String , Object> delete(Cars cars,Map<String , Object> map) {
        int result = carsMapper.delete(cars.getCars_id());
        if(result>0){
            map.put("message" , "删除成功");
        }else {
            map.put("message" , "删除失败");
        }
        return map;
    }
    
    @Override
    public Map<String , Object> add(Cars cars,Map<String , Object> map ) {
        int result = carsMapper.add(cars);
        if(result>0){
            map.put("message" , "添加客户成功");
        }else {
            map.put("message" , "添加客户失败");
        }
        return map;
    }
    
    @Override
    public Cars load(Integer cars_id ) {
        return carsMapper.load(cars_id);
    }
    

    @Override
    public Map<String , Object> carsList(Map<String , Object> map ) {
        List<Cars> carsList = carsMapper.carsList(map);
        Integer count = carsMapper.count(map);
        map = PageBean.bfMap(map , count , carsList , Cars.class);
        return map;
    }
    
    @Override
    public Map<String , Object> update(Cars cars , Map<String , Object> map ) {
        int result = carsMapper.update(cars);
        if(result>0){
            map.put("message" , "修改成功");
        }else {
            map.put("message" , "修改失败");
        }
        return map;
    }
    
    @Override
    public Map<String , Object> bfMain(Map<String , Object> map ) {
        List<Cars> carsNumList = carsMapper.numMax();
        List<Cars> carsTimeList = carsMapper.timeZao();
        map.put("carsTimeList" , carsTimeList);
        map.put("carsNumList" , carsNumList);
        return map;
    }

    @Override
    public void buys(Map<String , Object> map ) {
        carsMapper.buys(map);
        
    }

    @Override
    public void tui(Map<String , Object> map ) {
        carsMapper.tui(map);
        
    }


    
    
    
    
}
