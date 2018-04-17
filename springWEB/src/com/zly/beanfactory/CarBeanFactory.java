package com.zly.beanfactory;

import com.zly.daomain.Car;
import org.springframework.beans.factory.FactoryBean;

/**
 * Created by zly11 on 2018/4/17.
 */
public class CarBeanFactory implements FactoryBean<Car>{

    private String carInfo;

    public String getCarInfo() {
        return carInfo;
    }

    public void setCarInfo(String carInfo) {
        this.carInfo = carInfo;
    }

    //修饰bean，并返回
    @Override
    public Car getObject() throws Exception {
        Car car = new Car();
        String[] infos = carInfo.split("，");
        car.setBrand(infos[0]);
        car.setMaxSpeed(Integer.parseInt(infos[1]));
        car.setColor(infos[2]);
        return car;

    }

    //返回bean类型
    @Override
    public Class<?> getObjectType() {
        return Car.class;
    }


    //是否单例
    @Override
    public boolean isSingleton() {
        return false;
    }
}
