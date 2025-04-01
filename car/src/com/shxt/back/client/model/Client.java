/**
 * Client.java
 * ©2006-2016 四海兴唐科技有限公司 
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-08 14:38:44
 **/
package com.shxt.back.client.model;

import java.util.Date;

/**
 * client 类
 * @Description : 
 * 
 * @author 胖先生
 * @version 1.0 
 * 文件创建于: 2018-03-08 14:38:44
 **/
public class Client {

    private Integer client_id;
    private String client_account;
    private String client_password;
    private String client_paypassword;
    private String client_name;
    private String client_tel;
    private Date client_date;
    private Integer client_power;

    /**
     * 获取  字段:client.client_id
     *
     * @return  client.client_id
     */
    public Integer getClient_id() {
        return client_id;
    }

    /**
     * 设置  字段:client.client_id
     *
     * @param client_id  client.client_id
     */
    public void setClient_id(Integer client_id) {
        this.client_id = client_id;
    }

    /**
     * 获取  字段:client.client_account
     *
     * @return  client.client_account
     */
    public String getClient_account() {
        return client_account;
    }

    /**
     * 设置  字段:client.client_account
     *
     * @param client_account  client.client_account
     */
    public void setClient_account(String client_account) {
        this.client_account = client_account == null ? null : client_account.trim();
    }

    /**
     * 获取  字段:client.client_password
     *
     * @return  client.client_password
     */
    public String getClient_password() {
        return client_password;
    }

    /**
     * 设置  字段:client.client_password
     *
     * @param client_password  client.client_password
     */
    public void setClient_password(String client_password) {
        this.client_password = client_password == null ? null : client_password.trim();
    }

    /**
     * 获取  字段:client.client_paypassword
     *
     * @return  client.client_paypassword
     */
    public String getClient_paypassword() {
        return client_paypassword;
    }

    /**
     * 设置  字段:client.client_paypassword
     *
     * @param client_paypassword  client.client_paypassword
     */
    public void setClient_paypassword(String client_paypassword) {
        this.client_paypassword = client_paypassword == null ? null : client_paypassword.trim();
    }

    /**
     * 获取  字段:client.client_name
     *
     * @return  client.client_name
     */
    public String getClient_name() {
        return client_name;
    }

    /**
     * 设置  字段:client.client_name
     *
     * @param client_name  client.client_name
     */
    public void setClient_name(String client_name) {
        this.client_name = client_name == null ? null : client_name.trim();
    }

    /**
     * 获取  字段:client.client_tel
     *
     * @return  client.client_tel
     */
    public String getClient_tel() {
        return client_tel;
    }

    /**
     * 设置  字段:client.client_tel
     *
     * @param client_tel  client.client_tel
     */
    public void setClient_tel(String client_tel) {
        this.client_tel = client_tel == null ? null : client_tel.trim();
    }

    /**
     * 获取  字段:client.client_date
     *
     * @return  client.client_date
     */
    public Date getClient_date() {
        return client_date;
    }

    /**
     * 设置  字段:client.client_date
     *
     * @param client_date  client.client_date
     */
    public void setClient_date(Date client_date) {
        this.client_date = client_date;
    }

    /**
     * 获取  字段:client.client_power
     *
     * @return  client.client_power
     */
    public Integer getClient_power() {
        return client_power;
    }

    /**
     * 设置  字段:client.client_power
     *
     * @param client_power  client.client_power
     */
    public void setClient_power(Integer client_power) {
        this.client_power = client_power;
    }
}