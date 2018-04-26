package com.example.demo.daomain;

import javax.persistence.Id;

/**
 * Created by zly11 on 2018/4/25.
 */
public class SysRole {
    @Id
    private Integer id;
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
