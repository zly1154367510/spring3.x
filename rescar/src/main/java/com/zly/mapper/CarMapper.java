package com.zly.mapper;

import com.zly.pojo.Car;
import com.zly.utils.MyMapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;

public interface CarMapper extends MyMapper<Car> {

    @SelectProvider(type = carSqlBulid.class,method = "findAllCarByPage")
    public List<Car> findAllCar(Integer page);

    class carSqlBulid{

        public String findAllCarByPage(Integer page){

            String sql = "select * from car";
            if (page<0){
                sql += "limit 0 ,20";
            }else{
                Integer endPages = page*20;
                Integer staterPages = (page-1)*20;
                sql += " limit "+staterPages+","+endPages;
            }
            return sql;
        }
    }
}