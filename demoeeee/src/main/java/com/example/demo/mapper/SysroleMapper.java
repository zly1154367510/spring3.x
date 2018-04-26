package com.example.demo.mapper;

import com.example.demo.pojo.SysRoleUser;
import com.example.demo.pojo.Sysrole;
import com.example.demo.util.MyMapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface SysroleMapper extends MyMapper<Sysrole> {

    @Select("select * from sysrole")
    public List<Sysrole> findAllSysroler();
}