package com.zly.controller;

import com.zly.service.ShappingService;
import com.zly.service.UserService;
import com.zly.utils.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

/**
 * Created by zly11 on 2018/4/21.
 */

@RestController
public class ShappingCarController {


    @Autowired
    private ShappingService shappingService;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "mi/addShoppingCar")
    public JsonResult addShoppingCar(HttpServletResponse response, HttpServletRequest request){
        Date date = new Date();
        System.out.println(request.getParameter("username"));
        shappingService.addShappingCar(request.getParameter("carId"),request.getParameter("username"),date);
        return JsonResult.ok("添加购物车成功");
    }

}
