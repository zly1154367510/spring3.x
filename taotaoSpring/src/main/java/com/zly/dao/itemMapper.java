package com.zly.dao;

import com.zly.model.item;

public interface itemMapper {
    int deleteByPrimaryKey(Long id);

    int insert(item record);

    int insertSelective(item record);

    item selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(item record);

    int updateByPrimaryKey(item record);
}