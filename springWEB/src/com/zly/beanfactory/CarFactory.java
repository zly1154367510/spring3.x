package com.zly.beanfactory;


import com.zly.daomain.Car;

/**
 * Created by zly11 on 2018/4/16.
 * Car类注入工厂
 */
public class CarFactory {

    private Car createCar(){
        Car car = new Car();
        car.setBrand("Benz");
        return car;
    }
}
