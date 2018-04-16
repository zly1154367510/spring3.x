package com.zly.daomain;

import org.springframework.beans.BeansException;

import org.springframework.beans.factory.*;


/**
 * Created by zly11 on 2018/4/8.
 */
public class Car implements BeanFactoryAware,BeanNameAware,InitializingBean,DisposableBean {

    private String brand;
    private String color;
    private int maxSpeed;

    public Car(){
       // System.out.println("构造方法");
    }

    /**
     *
     * @param beanFactory 实例化bean的容器实例
     * @throws BeansException
     */
    @Override
    public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
       // System.out.println("生命周期7：传入实例化bean容器实例");
    }

    @Override
    public void setBeanName(String s) {
       // System.out.println("生命周期6，设置bean的Name");
    }



    @Override
    public void destroy() throws Exception {

       // System.out.println("调用destroy");

    }

    @Override
    public void afterPropertiesSet() throws Exception {
       //System.out.println("调用after");
    }

    public void myInit(){
       // System.out.println("调用myInit");
    }
    public void myDestory(){
        //System.out.println("调用myDestory");
    }

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

    public int getMaxSpeed() {
        return maxSpeed;
    }

    public void setMaxSpeed(int maxSpeed) {
        this.maxSpeed = maxSpeed;
    }






}
