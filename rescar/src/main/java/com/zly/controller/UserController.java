package com.zly.controller;

import com.zly.mapper.UserMapper;
import com.zly.pojo.TokenModel;
import com.zly.pojo.User;
import com.zly.service.TokenService;
import com.zly.service.UserService;
import com.zly.utils.JsonResult;
import net.sf.json.JSON;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import sun.org.mozilla.javascript.internal.Token;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;


/**
 * Created by zly11 on 2018/4/3.
 */
@RestController
public class UserController {

    private static Logger log = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @Autowired
    private TokenService tokenService;

    @PostMapping("login/loginUser")
    public JsonResult login(@RequestBody String userMassage,HttpServletRequest request){
        JSONObject jsonObject = JSONObject.fromObject(userMassage);
        String username = jsonObject.getString("username");
        String password = jsonObject.getString("password");
        if (userService.loginUser(username,password)!=null){
            String token = tokenService.createToken(jsonObject.getString("username"));
            request.getSession().setAttribute(username,token);
            return JsonResult.ok(new TokenModel(username,token));
        }else{
            return JsonResult.exitUser();
        }

    }

    @GetMapping("/findAllUser")
    public JsonResult findAllUser() {

        return JsonResult.ok(userService.findAllUser());
    }

    @GetMapping("/logOut")
    public JsonResult loginOut(@RequestHeader Map<String,String> map,HttpServletRequest request){
        request.getSession().setAttribute(map.get("username"),"");
        return JsonResult.ok("注销成功");
    }
}