package com.zly.controller;

import com.zly.mapper.CarMapper;
import com.zly.service.CarService;
import com.zly.service.impl.CarServiceImpl;
import com.zly.utils.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.server.PathParam;

/**
 * Created by zly11 on 2018/4/18.
 */
@RestController
public class CarController {

    @Autowired
    private CarService carService;

    @GetMapping(value = "car/getCarList/{page}")
    public JsonResult findAllCar(HttpServletResponse response, @PathVariable Integer page) {
        response.addHeader("Access-Control-Allow-Origin", "*");
        return JsonResult.ok(carService.findAllCar(page));
    }

    //@GetMapping(value="car/getCarList/{}")
}