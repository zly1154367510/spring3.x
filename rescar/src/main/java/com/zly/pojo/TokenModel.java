package com.zly.pojo;

/**
 * Created by zly11 on 2018/4/5.
 */
public class TokenModel {

    private String username;
    private String uuid;

    public TokenModel(String username,String uuid){
        this.username = username;
        this.uuid = uuid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }
}
