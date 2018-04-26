package com.example.demo.mapper;

import com.example.demo.pojo.Sysuser;
import com.example.demo.util.MyMapper;
import org.apache.ibatis.annotations.Select;

public interface SysuserMapper extends MyMapper<Sysuser> {

    @Select("select * from sysuser where username = #{username}")
    public Sysuser findSysuserByUsername(String username);
}