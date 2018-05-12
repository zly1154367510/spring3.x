package com.zly.controller;

import com.zly.model.Item;
import com.zly.model.ItemCat;
import com.zly.service.ItemCatService;
import com.zly.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zly11 on 2018/4/29.
 */
@Controller
public class ItemController {

    @Autowired
    private ItemService itemService;

    @Autowired
    private ItemCatService itemCatService;

    @RequestMapping("/item")
    //分页查询商品列表
    public String getItem(@RequestParam(value = "page",required = false,defaultValue = "1")int page, Model model){
        System.out.println(page);
        List<Item> i  = itemService.getItem(page,10);
        long pages = itemService.getItemNum()/10;
        model.addAttribute("list",i);
        model.addAttribute("pages",pages);
        model.addAttribute("nextPage",page+1);
        model.addAttribute("previousPage",page-1);
        return "mobilePhone/index";
    }

    @RequestMapping("/additem")
    public String addItemView(Model model){

        model.addAttribute("Item",new Item());
        model.addAttribute("list",itemCatService.getItemCatParen());
        return "mobilePhone/addItem";
    }

    @RequestMapping("/addItemSelect")
    public List<ItemCat> addItemSelect(){
        return itemCatService.getItemCatParen();
    }

    @RequestMapping("/saveItem")
    public String addItemDo(@ModelAttribute("Item")@Valid Item item, Errors errors, Model model, HttpServletRequest request){
        System.out.println(item.getCid());
        if (errors.hasErrors()){
          //  model.addAttribute("Item",new Item());

            return "mobilePhone/addItem";
        }else{
            List<MultipartFile> files = item.getImages();
            List<String> fileNames = new ArrayList<String>();
            if (files != null && files.size()>0){
                for (MultipartFile multipartFile:files) {
                    String fileName = multipartFile.getOriginalFilename();
                    fileNames.add(fileName);
                    System.out.println(fileName);
                    File imagesFile = new File( request.getServletContext().getRealPath("/")+"images" , fileName);
                    item.setImage(fileName);
                    itemService.addItem(item);

                    try {
                        multipartFile.transferTo(imagesFile);
                    }catch (IOException e){
                        e.printStackTrace();
                    }
                }

                return "/message/success";
            }
            return "";
        }
    }
}
