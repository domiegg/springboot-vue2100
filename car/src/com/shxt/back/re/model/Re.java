/**
 * Re.java
 * ©2006-2016 四海兴唐科技有限公司
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-11 17:44:26
 **/
package com.shxt.back.re.model;

import com.shxt.back.cars.model.Cars;
import com.shxt.back.client.model.Client;

/**
 * re 类
 * @Description :
 *
 * @author 胖先生
 * @version 1.0
 * 文件创建于: 2018-03-11 17:44:26
 **/
public class Re {

    private Integer re_id;
    private Integer fk_reClient_id;
    private Integer fk_reCars_id;
    private Integer re_status;
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
     * 获取  字段:re.re_id
     *
     * @return  re.re_id
     */
    public Integer getRe_id() {
        return re_id;
    }

    /**
     * 设置  字段:re.re_id
     *
     * @param re_id  re.re_id
     */
    public void setRe_id(Integer re_id) {
        this.re_id = re_id;
    }

    /**
     * 获取  字段:re.fk_reClient_id
     *
     * @return  re.fk_reClient_id
     */
    public Integer getFk_reClient_id() {
        return fk_reClient_id;
    }

    /**
     * 设置  字段:re.fk_reClient_id
     *
     * @param fk_reClient_id  re.fk_reClient_id
     */
    public void setFk_reClient_id(Integer fk_reClient_id) {
        this.fk_reClient_id = fk_reClient_id;
    }

    /**
     * 获取  字段:re.fk_reCars_id
     *
     * @return  re.fk_reCars_id
     */
    public Integer getFk_reCars_id() {
        return fk_reCars_id;
    }

    /**
     * 设置  字段:re.fk_reCars_id
     *
     * @param fk_reCars_id  re.fk_reCars_id
     */
    public void setFk_reCars_id(Integer fk_reCars_id) {
        this.fk_reCars_id = fk_reCars_id;
    }

    /**
     * 获取  字段:re.re_status
     *
     * @return  re.re_status
     */
    public Integer getRe_status() {
        return re_status;
    }

    /**
     * 设置  字段:re.re_status
     *
     * @param re_status  re.re_status
     */
    public void setRe_status(Integer re_status) {
        this.re_status = re_status;
    }
}