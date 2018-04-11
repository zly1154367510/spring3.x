package com.zly.mapper;

import com.zly.pojo.User;
import com.zly.utils.MyMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;

import java.util.List;
import java.util.Map;

public interface UserMapper extends MyMapper<User> {

    @SelectProvider(type=UserSqlBulid.class,method = "findUserByUsernamePssword")
    public User loginUser(Map<String,String>map);

    @SelectProvider(type=UserSqlBulid.class,method = "findAllUser")
    public List<User> findAllUser ();

    class UserSqlBulid{
        public String findUserByUsernamePssword(Map<String,String>map){
            String sql = "select * from user";
            if (map.size()!=0){
                String username = (String)map.get("username");
                String password = (String)map.get("password");
                sql += " where username = #{username} and password = #{password}";
                System.out.print(sql);
            }
            return sql;
        }

        public String findAllUser(){
            return "select * from user";
        }
    }

}