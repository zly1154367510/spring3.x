package com.zly.conf;

import com.zly.dao.UserDao;
import com.zly.daomain.Boss;
import com.zly.service.LogService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import sun.rmi.runtime.Log;

/**
 * Created by zly11 on 2018/4/17.
 */
/*
@Configuration ：配置文件注解
@Import 引入其他配置文件类
@Bean 方法注解为Bean
 */
@Configuration
@Import(AppConf1.class)
public class AppConf {

    @Bean
    public UserDao UserDao(){
        System.out.println("注入UserDao");
        return new UserDao();
    }

    @Bean
    public LogService getLogService(){
        LogService logService = new LogService();
        logService.setUserDao(UserDao());
        return logService;
    }
}
