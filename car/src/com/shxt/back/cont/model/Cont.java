/**
 * Cont.java
 * ©2006-2016 四海兴唐科技有限公司
 * All rights reserved.
 * <link>胖先生作品</link>
 * 创建于: 2018-03-12 00:05:04
 **/
package com.shxt.back.cont.model;

import com.shxt.back.client.model.Client;

/**
 * cont 类
 * @Description :
 *
 * @author 胖先生
 * @version 1.0
 * 文件创建于: 2018-03-12 00:05:04
 **/
public class Cont {

    private Integer cont_id;
    private Integer fk_contClient_id;
    private String cont_message;
    private Client client;

    public Client getClient() {
        return this.client;
    }
    
    public void setClient(Client client ) {
        this.client = client;
    }
    
    /**
     * 获取  字段:cont.cont_id
     *
     * @return  cont.cont_id
     */
    public Integer getCont_id() {
        return cont_id;
    }

    /**
     * 设置  字段:cont.cont_id
     *
     * @param cont_id  cont.cont_id
     */
    public void setCont_id(Integer cont_id) {
        this.cont_id = cont_id;
    }

    /**
     * 获取  字段:cont.fk_contClient_id
     *
     * @return  cont.fk_contClient_id
     */
    public Integer getFk_contClient_id() {
        return fk_contClient_id;
    }

    /**
     * 设置  字段:cont.fk_contClient_id
     *
     * @param fk_contClient_id  cont.fk_contClient_id
     */
    public void setFk_contClient_id(Integer fk_contClient_id) {
        this.fk_contClient_id = fk_contClient_id;
    }

    /**
     * 获取  字段:cont.cont_message
     *
     * @return  cont.cont_message
     */
    public String getCont_message() {
        return cont_message;
    }

    /**
     * 设置  字段:cont.cont_message
     *
     * @param cont_message  cont.cont_message
     */
    public void setCont_message(String cont_message) {
        this.cont_message = cont_message == null ? null : cont_message.trim();
    }
}