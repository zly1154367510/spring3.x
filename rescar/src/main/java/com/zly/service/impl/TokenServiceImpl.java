package com.zly.service.impl;

import com.zly.pojo.TokenModel;
import com.zly.service.TokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.JdkSerializationRedisSerializer;
import org.springframework.stereotype.Component;
import sun.security.pkcs11.wrapper.Constants;

import javax.annotation.Resource;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/**
 * Created by zly11 on 2018/4/5.
 */
@Component
public class TokenServiceImpl implements TokenService {


    private RedisTemplate redisTemplate;

    @Autowired
    public void setRedis(RedisTemplate redisTemplate){
        this.redisTemplate = redisTemplate;
        redisTemplate.setKeySerializer(new JdkSerializationRedisSerializer());
    }

    @Override
    public String createToken(String username) {

        String uuid = UUID.randomUUID().toString().replace("-","");

        return uuid;
    }

    @Override
    public boolean selectToken(String username,String token) {
       return true;
    }

    @Override
    public void deleteToken(String username) {
        redisTemplate.delete(username);
    }
}
