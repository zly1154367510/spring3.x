package com.zly.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.test.annotation.Commit;

/**
 * Created by zly11 on 2018/4/17.
 */
/*
@Component ：spring注解配置 该类注解为一个bean
@Scope ：bean的作用范围
 */
@Component
@Scope("prototype")
public class UserDao {

    private String he = "hello";

    public String getHe() {
        return he;
    }
}
