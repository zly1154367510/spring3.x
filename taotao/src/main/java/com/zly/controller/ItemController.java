package com.zly.controller;

import com.github.pagehelper.PageHelper;
import com.zly.model.EUDataGridResult;
import com.zly.model.Item;
import com.zly.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by zly11 on 2018/4/29.
 */
@Controller
public class ItemController {

    @Autowired
    private ItemService itemService;

    @RequestMapping("/item")
    //分页查询商品列表
    public String getItem(@RequestParam int page, Model model){
        //System.out.println(page);
        List<Item> i  = itemService.getItem(page,10);
        long pages = itemService.getItemNum()/10;
        model.addAttribute("list",i);
        model.addAttribute("pages",pages);
        model.addAttribute("nextPage",page+1);
        model.addAttribute("previousPage",page-1);
        return "mobilePhone/index";
    }

}
