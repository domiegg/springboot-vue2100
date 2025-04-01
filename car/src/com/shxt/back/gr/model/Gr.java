/**
 * Gr.java
 * ©2006-2016 四海兴唐科技有限公司
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-11 15:34:57
 **/
package com.shxt.back.gr.model;

import com.shxt.back.cars.model.Cars;
import com.shxt.back.client.model.Client;

/**
 * gr 类
 * @Description :
 *
 * @author 胖先生
 * @version 1.0
 * 文件创建于: 2018-03-11 15:34:57
 **/
public class Gr {
    
    private Integer gr_id;
    private String gr_pho;
    private Integer fk_grClient_id;
    private Integer fk_grCar_id;
    private Integer gr_grade;
    private String gr_message;
    private Cars cars;
    private Client client;
    
    public Cars getCars() {
        return this.cars;
    }
    
    public void setCars(Cars cars ) {
        this.cars = cars;
    }
    
    public Client getClient() {
        return this.client;
    }
    
    public void setClient(Client client ) {
        this.client = client;
    }
    
    /**
     * 获取  字段:gr.gr_id
     *
     * @return  gr.gr_id
     */
    public Integer getGr_id() {
        return gr_id;
    }
    
    /**
     * 设置  字段:gr.gr_id
     *
     * @param gr_id  gr.gr_id
     */
    public void setGr_id(Integer gr_id) {
        this.gr_id = gr_id;
    }
    
    /**
     * 获取  字段:gr.gr_pho
     *
     * @return  gr.gr_pho
     */
    public String getGr_pho() {
        return gr_pho;
    }
    
    /**
     * 设置  字段:gr.gr_pho
     *
     * @param gr_pho  gr.gr_pho
     */
    public void setGr_pho(String gr_pho) {
        this.gr_pho = gr_pho == null ? null : gr_pho.trim();
    }
    
    /**
     * 获取  字段:gr.fk_grClient_id
     *
     * @return  gr.fk_grClient_id
     */
    public Integer getFk_grClient_id() {
        return fk_grClient_id;
    }
    
    /**
     * 设置  字段:gr.fk_grClient_id
     *
     * @param fk_grClient_id  gr.fk_grClient_id
     */
    public void setFk_grClient_id(Integer fk_grClient_id) {
        this.fk_grClient_id = fk_grClient_id;
    }
    
    /**
     * 获取  字段:gr.fk_grCar_id
     *
     * @return  gr.fk_grCar_id
     */
    public Integer getFk_grCar_id() {
        return fk_grCar_id;
    }
    
    /**
     * 设置  字段:gr.fk_grCar_id
     *
     * @param fk_grCar_id  gr.fk_grCar_id
     */
    public void setFk_grCar_id(Integer fk_grCar_id) {
        this.fk_grCar_id = fk_grCar_id;
    }
    
    /**
     * 获取  字段:gr.gr_grade
     *
     * @return  gr.gr_grade
     */
    public Integer getGr_grade() {
        return gr_grade;
    }
    
    /**
     * 设置  字段:gr.gr_grade
     *
     * @param gr_grade  gr.gr_grade
     */
    public void setGr_grade(Integer gr_grade) {
        this.gr_grade = gr_grade;
    }
    
    /**
     * 获取  字段:gr.gr_message
     *
     * @return  gr.gr_message
     */
    public String getGr_message() {
        return gr_message;
    }
    
    /**
     * 设置  字段:gr.gr_message
     *
     * @param gr_message  gr.gr_message
     */
    public void setGr_message(String gr_message) {
        this.gr_message = gr_message == null ? null : gr_message.trim();
    }
}