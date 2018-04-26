package com.example.demo.mapper;

import com.example.demo.pojo.SysRoleUser;
import com.example.demo.util.MyMapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface SysRoleUserMapper extends MyMapper<SysRoleUser> {

    @Select("select * from sys_role_user")
    public List<SysRoleUser> findAllSysRoleUser();

}