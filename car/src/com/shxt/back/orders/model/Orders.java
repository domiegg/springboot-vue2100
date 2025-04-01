/**
 * Orders.java
 * ©2006-2016 四海兴唐科技有限公司
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-10 18:04:16
 **/
package com.shxt.back.orders.model;

import java.util.Date;

import com.shxt.back.cars.model.Cars;
import com.shxt.back.client.model.Client;

/**
 * orders 类
 * @Description :
 *
 * @author 胖先生
 * @version 1.0
 * 文件创建于: 2018-03-10 18:04:16
 **/
public class Orders {

    private Integer or_id;
    private Integer fk_orClient_id;
    private Integer fk_orCars_id;
    private Double or_money;
    private String or_code;
    private Integer or_num;
    private Date or_date;
    private Integer or_status;
    private Client client;
    private Cars cars;
    private String or_address;
    public String getOr_address() {
        return this.or_address;
    }
    
    public void setOr_address(String or_address ) {
        this.or_address = or_address;
    }
    
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
     * 获取  字段:orders.or_id
     *
     * @return  orders.or_id
     */
    public Integer getOr_id() {
        return or_id;
    }

    /**
     * 设置  字段:orders.or_id
     *
     * @param or_id  orders.or_id
     */
    public void setOr_id(Integer or_id) {
        this.or_id = or_id;
    }

    /**
     * 获取  字段:orders.fk_orClient_id
     *
     * @return  orders.fk_orClient_id
     */
    public Integer getFk_orClient_id() {
        return fk_orClient_id;
    }

    /**
     * 设置  字段:orders.fk_orClient_id
     *
     * @param fk_orClient_id  orders.fk_orClient_id
     */
    public void setFk_orClient_id(Integer fk_orClient_id) {
        this.fk_orClient_id = fk_orClient_id;
    }

    /**
     * 获取  字段:orders.fk_orCars_id
     *
     * @return  orders.fk_orCars_id
     */
    public Integer getFk_orCars_id() {
        return fk_orCars_id;
    }

    /**
     * 设置  字段:orders.fk_orCars_id
     *
     * @param fk_orCars_id  orders.fk_orCars_id
     */
    public void setFk_orCars_id(Integer fk_orCars_id) {
        this.fk_orCars_id = fk_orCars_id;
    }

    /**
     * 获取  字段:orders.or_money
     *
     * @return  orders.or_money
     */
    public Double getOr_money() {
        return or_money;
    }

    /**
     * 设置  字段:orders.or_money
     *
     * @param or_money  orders.or_money
     */
    public void setOr_money(Double or_money) {
        this.or_money = or_money;
    }

    /**
     * 获取  字段:orders.or_code
     *
     * @return  orders.or_code
     */
    public String getOr_code() {
        return or_code;
    }

    /**
     * 设置  字段:orders.or_code
     *
     * @param or_code  orders.or_code
     */
    public void setOr_code(String or_code) {
        this.or_code = or_code == null ? null : or_code.trim();
    }

    /**
     * 获取  字段:orders.or_num
     *
     * @return  orders.or_num
     */
    public Integer getOr_num() {
        return or_num;
    }

    /**
     * 设置  字段:orders.or_num
     *
     * @param or_num  orders.or_num
     */
    public void setOr_num(Integer or_num) {
        this.or_num = or_num;
    }

    /**
     * 获取  字段:orders.or_date
     *
     * @return  orders.or_date
     */
    public Date getOr_date() {
        return or_date;
    }

    /**
     * 设置  字段:orders.or_date
     *
     * @param or_date  orders.or_date
     */
    public void setOr_date(Date or_date) {
        this.or_date = or_date;
    }

    /**
     * 获取  字段:orders.or_status
     *
     * @return  orders.or_status
     */
    public Integer getOr_status() {
        return or_status;
    }

    /**
     * 设置  字段:orders.or_status
     *
     * @param or_status  orders.or_status
     */
    public void setOr_status(Integer or_status) {
        this.or_status = or_status;
    }
}