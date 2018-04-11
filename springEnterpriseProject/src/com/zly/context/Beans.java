package com.zly.context;

import com.zly.daomain.Car;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Created by zly11 on 2018/4/8.
 */
@Configuration
public class Beans {

    @Bean(name = "car1")
    public Car BullerCar(){
        Car car = new Car();
        car.setBrand("奔驰");
        car.setColor("blue");
        car.setMaxSpeed("320");
        return car;
    }

}
