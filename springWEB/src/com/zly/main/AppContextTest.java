package com.zly.main;


import com.zly.conf.AppConf;
import com.zly.daomain.Boss;
import com.zly.daomain.Car;
import com.zly.daomain.MyBeanPost;
import com.zly.service.LogService;
import com.zly.utlis.ObjectUtlis;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

;

/**
 * Created by zly11 on 2018/4/8.
 */
public class AppContextTest {

    public static void main(String[] args){
        ApplicationContext ac = new ClassPathXmlApplicationContext("com/zly/xml/beans1.xml");
        LogService logService = (LogService) ac.getBean("LogService");
        logService.callHello();



    }

}
