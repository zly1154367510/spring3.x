package com.zly.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import sun.org.mozilla.javascript.internal.xml.XMLLib;

/**
 * Created by zly11 on 2018/4/16.
 */
public class AppContextTest1 {

    public static void main(String[] args){
        //实例化子容器 加载beans
        ClassPathXmlApplicationContext cpxac = new ClassPathXmlApplicationContext(new String[]{"com/zly/xml/beans1.xml"});

        //实例化父容器 加载beans
        ApplicationContext cpxac1 = new ClassPathXmlApplicationContext(new String[]{"com/zly/xml/beans.xml"});
    }

}
