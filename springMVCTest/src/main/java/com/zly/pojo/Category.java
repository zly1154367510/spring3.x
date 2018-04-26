package com.zly.pojo;

import java.io.Serializable;

/**
 * Created by zly11 on 2018/4/26.
 */
public class Category implements Serializable {

    private int id;
    private String name;

    public Category(){}

    public Category(int id,String name){
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
