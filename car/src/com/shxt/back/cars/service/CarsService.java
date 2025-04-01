package com.shxt.back.cars.service;

import java.util.Map;

import com.shxt.back.cars.model.Cars;

public interface CarsService {
    Map<String , Object> delete(Cars cars,Map<String , Object> map);
    Map<String , Object> add(Cars cars,Map<String , Object> map);
    Cars load(Integer cars_id);
    Map<String , Object> update(Cars cars,Map<String , Object> map);
    Map<String , Object> carsList(Map<String , Object> map);
    Map<String , Object> bfMain(Map<String , Object> map);
    void buys(Map<String , Object> map);
    void tui(Map<String , Object> map);
}
