package com.zly.service;

import com.zly.dao.UserDao;
import com.zly.daomain.Boss;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by zly11 on 2018/4/17.
 */
@Service(value = "LogService")
public class LogService {

    @Autowired(required = false)
    public UserDao userDao;

    public UserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public void callHello(){
        System.out.println(userDao.getHe()+"spring");
    }
}
