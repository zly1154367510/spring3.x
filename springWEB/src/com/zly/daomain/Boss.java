package com.zly.daomain;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * 构造方法注入
 * Created by zly11 on 2018/4/16.
 */


public class Boss {

    private Location location;
    private String name;
    private Car car;
    private Office office;
    private List favorList = new ArrayList();
    private Map deposit = new HashMap();


    Boss(){
        super();
    }

    Boss(String name,Location location,Car car){
        this.name = name;
        this.location = location;
        this.car = car;
    }

    public Map getDeposit() {
        return deposit;
    }

    public void setDeposit(Map deposit) {
        this.deposit = deposit;
    }

    public List getFavorList() {
        return favorList;
    }

    public void setFavorList(List favorList) {
        this.favorList = favorList;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Location getLocation() {
        return location;
    }

    public void setLocation(Location location) {
        this.location = location;
    }

    public Car getCar() {
        return car;
    }




    public Office getOffice() {
        return office;
    }

    public void setOffice(Office office) {
        this.office = office;
    }
}
