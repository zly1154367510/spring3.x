package com.zly.dao;

import com.zly.model.Item;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ItemMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Item record);

    int insertSelective(Item record);

    Item selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Item record);

    @Select("select title,sell_point as sellPoint,price,num,created,updated from tb_item")
    List<Item> selectItem();

    @Select("select count(*) from tb_item")
    long selectItemNum();

    int updateByPrimaryKey(Item record);
}