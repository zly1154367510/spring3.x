package com.zly.daomain;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;

/**
 * Created by zly11 on 2018/4/11.
 */

/*
BeanPostProcessor 接口在实现bean中无法调用
注册一个代理bean接口，作为其他bean BeanPostProcessor实现类
 */
public class MyBeanPost implements BeanPostProcessor{

    /**
     *实例化bean之后的动作
     * @param o bean对象
     * @param s bean名字
     * @return
     * @throws BeansException
     */
    @Override
    public Object postProcessAfterInitialization(Object o, String s) throws BeansException {

        return o;
    }

    /**
     *
     * 初始化前处理
     * @param o
     * @param s
     * @return
     * @throws BeansException
     */
    @Override
    public Object postProcessBeforeInitialization(Object o, String s) throws BeansException {

        return o;
    }
}
