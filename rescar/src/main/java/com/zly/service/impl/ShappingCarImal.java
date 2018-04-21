package com.zly.service.impl;

import com.zly.mapper.ShappingCarMapper;
import com.zly.pojo.ShappingCar;
import com.zly.service.ShappingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by zly11 on 2018/4/21.
 */
@Service
public class ShappingCarImal implements ShappingService {

    @Autowired
    private ShappingCarMapper shappingCarMapper;

    @Override
    public ShappingCar addShappingCar(String carId, String username,Date date) {
        System.out.println(username);
        Map<String,Object> map = new HashMap<>();
        map.put("carId",carId);
        map.put("username",username);
        map.put("createTime",date);
        shappingCarMapper.addShappingCar(map);
        return null;
    }
}
