package com.shxt.back.user.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ControllerException {
    @ExceptionHandler
    public ModelAndView re(RuntimeException e){
        ModelAndView mav = new ModelAndView();
        mav.addObject("message" , e.getMessage());
        mav.setViewName("jsp/back/main/error");
        e.printStackTrace();
        return mav;
    }
    @ExceptionHandler
    public ModelAndView e(Exception e){
        ModelAndView mav = new ModelAndView();
        mav.addObject("message" , e.getMessage());
        mav.setViewName("jsp/back/main/error");
        e.printStackTrace();
        return mav;
    }
}
