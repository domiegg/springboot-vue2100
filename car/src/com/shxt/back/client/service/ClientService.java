package com.shxt.back.client.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.shxt.back.client.model.Client;

public interface ClientService {
    Map<String , Object> delete(Client client,Map<String , Object> map);
    Map<String , Object> add(Client client,Map<String , Object> map);
    Client load(Integer client_id);
    Map<String , Object> update(Client client,Map<String , Object> map);
    Map<String , Object> clientList(Map<String , Object> map);
    Map<String , Object> login(Client client,HttpSession session);
}
