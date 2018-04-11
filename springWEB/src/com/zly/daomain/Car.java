package com.zly.daomain;

import org.springframework.beans.BeansException;
import org.springframework.beans.PropertyValues;
import org.springframework.beans.factory.*;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.beans.factory.config.InstantiationAwareBeanPostProcessor;

import java.beans.PropertyDescriptor;

/**
 * Created by zly11 on 2018/4/8.
 */
public class Car{

    private String brand;
    private String color;
    private String maxSpeed;

    Car(){
       // System.out.println("构造方法");
    }

    /**
     *
     * @param beanFactory 实例化bean的容器实例
     * @throws BeansException
     */
//    @Override
//    public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
//        System.out.println("生命周期7：传入实例化bean容器实例");
//    }
//
//    @Override
//    public void setBeanName(String s) {
//        System.out.println("生命周期6，设置bean的Name");
//    }
//
//    @Override
//    public Object postProcessAfterInitialization(Object o, String s) throws BeansException {
//        System.out.println("生命周期11");
//        return s;
//    }
//
//    @Override
//    public Object postProcessBeforeInitialization(Object o, String s) throws BeansException {
//        System.out.println("生命周期8");
//        return s;
//    }
//
//    @Override
//    public void destroy() throws Exception {
//
//    }
//
//    @Override
//    public void afterPropertiesSet() throws Exception {
//
//    }
//
//    public void myInit(){
//        System.out.println("调用myInit");
//    }
//    public void myDestory(){
//        System.out.println("调用myDestory");
//    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        //System.out.println("生命周期5");
        this.brand = brand;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getMaxSpeed() {
        return maxSpeed;
    }

    public void setMaxSpeed(String maxSpeed) {
        this.maxSpeed = maxSpeed;
    }






}
