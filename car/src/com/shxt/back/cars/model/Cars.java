/**
 * Cars.java
 * ©2006-2016 四海兴唐科技有限公司 
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-09 09:54:57
 **/
package com.shxt.back.cars.model;

/**
 * cars 类
 * @Description : 
 * 
 * @author 胖先生
 * @version 1.0 
 * 文件创建于: 2018-03-09 09:54:57
 **/
public class Cars {

    private Integer cars_id;
    private String cars_name;
    private Double cars_price;
    private Integer cars_grade;
    private String cars_pho;
    private String cars_hai;
    private String cars_vi;
    private Integer cars_num;
    private String cars_message;
    private String cars_zi;

    /**
     * 获取  字段:cars.cars_id
     *
     * @return  cars.cars_id
     */
    public Integer getCars_id() {
        return cars_id;
    }

    /**
     * 设置  字段:cars.cars_id
     *
     * @param cars_id  cars.cars_id
     */
    public void setCars_id(Integer cars_id) {
        this.cars_id = cars_id;
    }

    /**
     * 获取  字段:cars.cars_name
     *
     * @return  cars.cars_name
     */
    public String getCars_name() {
        return cars_name;
    }

    /**
     * 设置  字段:cars.cars_name
     *
     * @param cars_name  cars.cars_name
     */
    public void setCars_name(String cars_name) {
        this.cars_name = cars_name == null ? null : cars_name.trim();
    }

    /**
     * 获取  字段:cars.cars_price
     *
     * @return  cars.cars_price
     */
    public Double getCars_price() {
        return cars_price;
    }

    /**
     * 设置  字段:cars.cars_price
     *
     * @param cars_price  cars.cars_price
     */
    public void setCars_price(Double cars_price) {
        this.cars_price = cars_price;
    }

    /**
     * 获取  字段:cars.cars_grade
     *
     * @return  cars.cars_grade
     */
    public Integer getCars_grade() {
        return cars_grade;
    }

    /**
     * 设置  字段:cars.cars_grade
     *
     * @param cars_grade  cars.cars_grade
     */
    public void setCars_grade(Integer cars_grade) {
        this.cars_grade = cars_grade;
    }

    /**
     * 获取  字段:cars.cars_pho
     *
     * @return  cars.cars_pho
     */
    public String getCars_pho() {
        return cars_pho;
    }

    /**
     * 设置  字段:cars.cars_pho
     *
     * @param cars_pho  cars.cars_pho
     */
    public void setCars_pho(String cars_pho) {
        this.cars_pho = cars_pho == null ? null : cars_pho.trim();
    }

    /**
     * 获取  字段:cars.cars_hai
     *
     * @return  cars.cars_hai
     */
    public String getCars_hai() {
        return cars_hai;
    }

    /**
     * 设置  字段:cars.cars_hai
     *
     * @param cars_hai  cars.cars_hai
     */
    public void setCars_hai(String cars_hai) {
        this.cars_hai = cars_hai == null ? null : cars_hai.trim();
    }

    /**
     * 获取  字段:cars.cars_vi
     *
     * @return  cars.cars_vi
     */
    public String getCars_vi() {
        return cars_vi;
    }

    /**
     * 设置  字段:cars.cars_vi
     *
     * @param cars_vi  cars.cars_vi
     */
    public void setCars_vi(String cars_vi) {
        this.cars_vi = cars_vi == null ? null : cars_vi.trim();
    }

    /**
     * 获取  字段:cars.cars_num
     *
     * @return  cars.cars_num
     */
    public Integer getCars_num() {
        return cars_num;
    }

    /**
     * 设置  字段:cars.cars_num
     *
     * @param cars_num  cars.cars_num
     */
    public void setCars_num(Integer cars_num) {
        this.cars_num = cars_num;
    }

    /**
     * 获取  字段:cars.cars_message
     *
     * @return  cars.cars_message
     */
    public String getCars_message() {
        return cars_message;
    }

    /**
     * 设置  字段:cars.cars_message
     *
     * @param cars_message  cars.cars_message
     */
    public void setCars_message(String cars_message) {
        this.cars_message = cars_message == null ? null : cars_message.trim();
    }

    /**
     * 获取  字段:cars.cars_zi
     *
     * @return  cars.cars_zi
     */
    public String getCars_zi() {
        return cars_zi;
    }

    /**
     * 设置  字段:cars.cars_zi
     *
     * @param cars_zi  cars.cars_zi
     */
    public void setCars_zi(String cars_zi) {
        this.cars_zi = cars_zi == null ? null : cars_zi.trim();
    }
}