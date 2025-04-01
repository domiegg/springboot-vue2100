/**
 * Says.java
 * ©2006-2016 四海兴唐科技有限公司
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-12 19:39:10
 **/
package com.shxt.back.says.model;

import java.util.Date;

import com.shxt.back.client.model.Client;

/**
 * says 类
 * @Description :
 *
 * @author 胖先生
 * @version 1.0
 * 文件创建于: 2018-03-12 19:39:10
 **/
public class Says {
    
    private Integer says_id;
    private Integer fk_saysClient_id;
    private String says_message;
    private Date says_date;
    private Client client;
    public Client getClient() {
        return this.client;
    }
    
    public void setClient(Client client ) {
        this.client = client;
    }
    
    /**
     * 获取  字段:says.says_id
     *
     * @return  says.says_id
     */
    public Integer getSays_id() {
        return says_id;
    }
    
    /**
     * 设置  字段:says.says_id
     *
     * @param says_id  says.says_id
     */
    public void setSays_id(Integer says_id) {
        this.says_id = says_id;
    }
    
    /**
     * 获取  字段:says.fk_saysClient_id
     *
     * @return  says.fk_saysClient_id
     */
    public Integer getFk_saysClient_id() {
        return fk_saysClient_id;
    }
    
    /**
     * 设置  字段:says.fk_saysClient_id
     *
     * @param fk_saysClient_id  says.fk_saysClient_id
     */
    public void setFk_saysClient_id(Integer fk_saysClient_id) {
        this.fk_saysClient_id = fk_saysClient_id;
    }
    
    /**
     * 获取  字段:says.says_message
     *
     * @return  says.says_message
     */
    public String getSays_message() {
        return says_message;
    }
    
    /**
     * 设置  字段:says.says_message
     *
     * @param says_message  says.says_message
     */
    public void setSays_message(String says_message) {
        this.says_message = says_message == null ? null : says_message.trim();
    }
    
    /**
     * 获取  字段:says.says_date
     *
     * @return  says.says_date
     */
    public Date getSays_date() {
        return says_date;
    }
    
    /**
     * 设置  字段:says.says_date
     *
     * @param says_date  says.says_date
     */
    public void setSays_date(Date says_date) {
        this.says_date = says_date;
    }
}