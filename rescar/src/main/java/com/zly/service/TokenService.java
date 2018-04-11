package com.zly.service;

import com.zly.pojo.TokenModel;

/**
 * Created by zly11 on 2018/4/5.
 */
public interface TokenService {

    public String createToken(String username);
    public boolean selectToken(String username,String token);
    public void deleteToken(String username);
}
