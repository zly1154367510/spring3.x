package com.zly.main;

import com.zly.daomain.Car;
import com.zly.daomain.MyBeanPost;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;

/**
 * Created by zly11 on 2018/4/8.
 */
public class BeanFactoryTest {

    public static void main(String[] args){
        ResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
        Resource res = resolver.getResource("classpath:com/zly/beanfactory/beans.xml");
        BeanFactory bf = new XmlBeanFactory(res);
        MyBeanPost car = bf.getBean("myBeanPost",MyBeanPost.class);

    }
}
