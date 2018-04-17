package com.zly.main;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.config.BeanFactoryPostProcessor;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;

/**
 * Created by zly11 on 2018/4/16.
 */
public class MyBeanFactoryPostProcesser  {

//    @Override
//    public void postProcessBeanFactory(ConfigurableListableBeanFactory configurableListableBeanFactory) throws BeansException {
//        BeanDefinition bd = configurableListableBeanFactory.getBeanDefinition("car1");
//        //bd.getPropertyValues().addPropertyValue("brand","奇瑞");
//    }
}
