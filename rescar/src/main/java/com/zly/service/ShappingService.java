package com.zly.service;

import com.zly.pojo.ShappingCar;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Created by zly11 on 2018/4/21.
 */
@Service
public interface ShappingService {

    public ShappingCar addShappingCar(String carId,String UserId,Date date);

}
