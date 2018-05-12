package com.zly.controller;

import com.zly.model.ItemCat;
import com.zly.service.ItemCatService;
import com.zly.service.serviceImpl.ItemCatServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by zly11 on 2018/4/28.
 */
@Controller
public class controller {

    @Autowired
    private ItemCatService itemCatService;

    @RequestMapping("/index")
    public String index(){
        List<ItemCat> l =  itemCatService.getItemCatParen();
        return "mobilePhone/index";
    }

    @RequestMapping("/treeTest")
    public String in(){

        return "";
    }
}
