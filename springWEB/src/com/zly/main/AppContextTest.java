package com.zly.main;


import com.zly.daomain.Boss;
import com.zly.daomain.Car;
import com.zly.daomain.MyBeanPost;
import com.zly.utlis.ObjectUtlis;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

;

/**
 * Created by zly11 on 2018/4/8.
 */
public class AppContextTest {

    public static void main(String[] args){
        ApplicationContext atx = new FileSystemXmlApplicationContext("classpath:com/zly/xml/beans.xml") ;
        Car car = (Car) atx.getBean("car1");

        Boss boss = (Boss)atx.getBean("boss");
        ObjectUtlis.browsePropety(boss);
    }

}
