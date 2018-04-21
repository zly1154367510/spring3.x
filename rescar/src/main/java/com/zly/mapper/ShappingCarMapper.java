package com.zly.mapper;

import com.zly.pojo.ShappingCar;
import com.zly.utils.MyMapper;
import org.apache.ibatis.annotations.SelectProvider;

import java.util.Date;
import java.util.Map;

public interface ShappingCarMapper extends MyMapper<ShappingCar> {

    @SelectProvider(type = ShappingCarMapperSqlBulid.class,method = "addShappingCar")
    public ShappingCar addShappingCar(Map<String,Object> map);

    class ShappingCarMapperSqlBulid{

        public String addShappingCar(Map<String,Object> map){
            String carId = (String) map.get("carId");
            String username = (String) map.get("username");
            Date createTime = (Date) map.get("createTime");
            String sql = "insert into shapping_car (id,car_id,username,is_pay,create_time) values (null,#{carId},#{username},'0',#{createTime})";
            return sql;
        }

    }
}