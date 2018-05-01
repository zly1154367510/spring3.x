package com.zly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zly11 on 2018/4/28.
 */
@Controller
public class Index {

    @RequestMapping("/index")
    public String index(){
        return "index";
    }
}
