package com.example.demo.controller;

import com.example.demo.pojo.Msg;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zly11 on 2018/4/25.
 */
@Controller
public class HomeController {

    @RequestMapping("/index")
    public String index(Model model){
        Msg msg = new Msg();
        msg.setTitle("用户就能看");
        msg.setContent("特殊内容：只有管理员能访问");
        msg.setInfo("2018-4-25");
        model.addAttribute("msg",msg);
        return "index";
    }

    @RequestMapping("/login")
    public String loginPage(){
        return "login";
    }



}
