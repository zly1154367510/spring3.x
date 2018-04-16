package com.zly.main;

import org.springframework.beans.BeansException;
import org.springframework.beans.PropertyValues;
import org.springframework.beans.factory.config.InstantiationAwareBeanPostProcessor;
import org.springframework.beans.factory.config.InstantiationAwareBeanPostProcessorAdapter;

import java.beans.PropertyDescriptor;

/**
 * Created by zly11 on 2018/4/11.
 */
public class MyInstantiationAwerBeanPostProcessor extends InstantiationAwareBeanPostProcessorAdapter {

    @Override
    public Object postProcessBeforeInstantiation(Class<?> beanClass, String beanName) throws BeansException {
        if ("car1".equals(beanName)){
            System.out.println("bean name is car");
        }
        return super.postProcessBeforeInstantiation(beanClass, beanName);
    }
}
