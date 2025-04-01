package com.shxt.main;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class PageBean {
    public static Map<String , Object> backMap(Map<String , Object> map,int pages,int num,HttpServletRequest request){
        map.put("pages" , pages);
        map.put("num" , num);
        int begins = (pages-1)*num;
        map.put("begins" , begins);
        map.put("url" , request.getServletPath().substring(1));
        return map;
    }
    public static Map<String , Object> bfMap(Map<String , Object> map,int count,List<?> userList,Class<?> clazz){
        String name = clazz.getSimpleName().toLowerCase();
        map.put(name+"List" , userList);
        int num = Integer.parseInt(map.get("num").toString());
        int sumPage = (count%num==0)?(count/num):(count/num+1);
        if(count==0){
            sumPage=1;
        }
        map.put("sumPage" , sumPage);
        return map;
    }
}
