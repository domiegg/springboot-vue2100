/**
 * Sc.java
 * ©2006-2016 四海兴唐科技有限公司
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-10 13:25:16
 **/
package com.shxt.back.sc.model;

import com.shxt.back.cars.model.Cars;
import com.shxt.back.client.model.Client;

/**
 * sc 类
 * @Description :
 *
 * @author 胖先生
 * @version 1.0
 * 文件创建于: 2018-03-10 13:25:16
 **/
public class Sc {

    private Integer sc_id;
    private Integer fk_scClient_id;
    private Integer fk_scCars_id;
    private Integer sc_num;
    private Client client;
    private Cars cars;
    public Client getClient() {
        return this.client;
    }
    
    public void setClient(Client client ) {
        this.client = client;
    }
    
    public Cars getCars() {
        return this.cars;
    }
    
    public void setCars(Cars cars ) {
        this.cars = cars;
    }
    
    /**
     * 获取  字段:sc.sc_id
     *
     * @return  sc.sc_id
     */
    public Integer getSc_id() {
        return sc_id;
    }

    /**
     * 设置  字段:sc.sc_id
     *
     * @param sc_id  sc.sc_id
     */
    public void setSc_id(Integer sc_id) {
        this.sc_id = sc_id;
    }

    /**
     * 获取  字段:sc.fk_scClient_id
     *
     * @return  sc.fk_scClient_id
     */
    public Integer getFk_scClient_id() {
        return fk_scClient_id;
    }

    /**
     * 设置  字段:sc.fk_scClient_id
     *
     * @param fk_scClient_id  sc.fk_scClient_id
     */
    public void setFk_scClient_id(Integer fk_scClient_id) {
        this.fk_scClient_id = fk_scClient_id;
    }

    /**
     * 获取  字段:sc.fk_scCars_id
     *
     * @return  sc.fk_scCars_id
     */
    public Integer getFk_scCars_id() {
        return fk_scCars_id;
    }

    /**
     * 设置  字段:sc.fk_scCars_id
     *
     * @param fk_scCars_id  sc.fk_scCars_id
     */
    public void setFk_scCars_id(Integer fk_scCars_id) {
        this.fk_scCars_id = fk_scCars_id;
    }

    /**
     * 获取  字段:sc.sc_num
     *
     * @return  sc.sc_num
     */
    public Integer getSc_num() {
        return sc_num;
    }

    /**
     * 设置  字段:sc.sc_num
     *
     * @param sc_num  sc.sc_num
     */
    public void setSc_num(Integer sc_num) {
        this.sc_num = sc_num;
    }
}