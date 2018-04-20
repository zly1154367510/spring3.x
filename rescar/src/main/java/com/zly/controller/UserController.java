package com.zly.controller;

import com.zly.mapper.UserMapper;
import com.zly.pojo.TokenModel;
import com.zly.pojo.User;
import com.zly.service.TokenService;
import com.zly.service.UserService;
import com.zly.utils.DaomainUtils;
import com.zly.utils.JsonResult;
import net.sf.json.JSON;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.*;
import sun.org.mozilla.javascript.internal.Token;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

    @RequestMapping("login/loginUser")
    public JsonResult login(@RequestBody String userMassage){

        JSONObject jsonObject = JSONObject.fromObject(userMassage);
        String username = jsonObject.getString("username");
        String password = jsonObject.getString("password");
        if (userService.loginUser(username,password)!=null){
            String token = tokenService.createToken(jsonObject.getString("username"));
            return JsonResult.ok(new TokenModel(username,token));
        }else{
            return JsonResult.exitUser();
        }

    }
    @PostMapping("register/userRegister")
    public JsonResult register(@RequestBody String registerMassage){
        JSONObject jsonObject = JSONObject.fromObject(registerMassage);
        User user1 = new User();
        User user = (User)DaomainUtils.JsonToDaomain(user1,jsonObject);
        return JsonResult.ok( userService.register(user));
    }

    //@PreAuthorize()
    @GetMapping("api/mi/findAllUser")
    public JsonResult findAllUser() {
        return JsonResult.ok(userService.findAllUser());
    }

    @GetMapping("api/mi/logOut")
    public JsonResult loginOut(@RequestHeader Map<String,String> map){
        String username = map.get("username");
        tokenService.deleteToken(username);
        return JsonResult.ok("注销成功");
    }

}
