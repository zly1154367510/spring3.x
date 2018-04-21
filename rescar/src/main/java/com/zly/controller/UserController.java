package com.zly.controller;

import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.zly.mapper.UserMapper;
import com.zly.pojo.TokenModel;
import com.zly.pojo.User;
import com.zly.service.TokenService;
import com.zly.service.UserService;
import com.zly.utils.AuthCodeUtils;
import com.zly.utils.DaomainUtils;
import com.zly.utils.JsonResult;
import net.sf.json.JSON;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.*;
import sun.org.mozilla.javascript.internal.Token;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.awt.image.RenderedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.UUID;


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


    //生成二维码
    @Autowired
    private DefaultKaptcha defaultKaptcha;

    @RequestMapping("login/loginUser")
    public JsonResult login(@RequestBody String userMassage, HttpSession session){

        JSONObject jsonObject = JSONObject.fromObject(userMassage);
        String username = jsonObject.getString("username");
        String password = jsonObject.getString("password");
        String authCode = jsonObject.getString("authCode");
        String sessionAuthCode = (String)session.getAttribute("authCode");
        System.out.println(session.getId());
//        if ( sessionAuthCode == null|| sessionAuthCode.equals(authCode)){
//            return JsonResult.authCodeError();
//        }
        if (userService.loginUser(username,password)!=null){
            String token = tokenService.createToken(jsonObject.getString("username"));
            return JsonResult.ok(new TokenModel(username,token));
        }else{
            return JsonResult.exitUser();
        }

    }

    @RequestMapping("check/authCode")
    private JsonResult getAutoCode(HttpSession session,HttpServletResponse httpServletResponse){
        byte[] captchaChallengeAsJpeg = null;
        ByteArrayOutputStream jpegOutputStream = new ByteArrayOutputStream();
        try {
            //生产验证码字符串并保存到session中
            String createText = defaultKaptcha.createText();
            System.out.println(createText);
          //  String autoCodeKey = tokenService.createAuthCode(createText);
            PrintWriter out = null ;
//            try{
//                JSONObject jsonObject = JSONObject.fromObject(JsonResult.ok(createText));
//                out = httpServletResponse.getWriter();
//                out.write(jsonObject.toString());
//                out.close();
//            }catch (Exception e){
//                e.printStackTrace();
//            }
           // httpServletResponse.addCookie(new Cookie("authCodeKey",autoCodeKey));
            //System.out.println(session.getId());
            // session.setAttribute("authCode", createText);
            //使用生产的验证码字符串返回一个BufferedImage对象并转为byte写入到byte数组中
            BufferedImage challenge = defaultKaptcha.createImage(createText);
            ImageIO.write(challenge, "jpg", jpegOutputStream);
            //定义response输出类型为image/jpeg类型，使用response输出流输出图片的byte数组
            captchaChallengeAsJpeg = jpegOutputStream.toByteArray();
            httpServletResponse.setHeader("Cache-Control", "no-store");
            httpServletResponse.setHeader("Pragma", "no-cache");
            httpServletResponse.setDateHeader("Expires", 0);
            httpServletResponse.setContentType("image/jpeg");
            ServletOutputStream responseOutputStream =
                    httpServletResponse.getOutputStream();
            responseOutputStream.write(captchaChallengeAsJpeg);
            responseOutputStream.flush();
            responseOutputStream.close();
            return JsonResult.ok(createText);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }

        return JsonResult.ok("ss");
    }

    /**
     * 生成验证码
     * @param username
     * @param response
     * @return
     */
    @PostMapping("check/isLogin")
    public JsonResult checkLogin(@RequestBody String username,HttpServletResponse response){
        //response.setHeader("Access-Control-Allow-Origin","*");
        JSONObject jsonObject = JSONObject.fromObject(username);
        String username1 = jsonObject.getString("username");

        if (tokenService.selectToken(username1) != null){
            return JsonResult.ok();
        }else{
            return JsonResult.noLogin();
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
