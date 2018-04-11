package com.zly.beanfactory;


import com.zly.context.Beans;
import com.zly.daomain.Car;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

;

/**
 * Created by zly11 on 2018/4/8.
 */
public class AppContextTest {

    public static void main(String[] args){
        ApplicationContext atx = new AnnotationConfigApplicationContext(Beans.class);
        Car car = atx.getBean("car1",Car.class);
        System.out.println(car.getBrand());

    }

}
