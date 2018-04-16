package com.zly.utlis;

import java.lang.reflect.Field;

/**
 * Created by zly11 on 2018/4/16.
 */
public class ObjectUtlis {

    public static void browsePropety(Object o){
        //获取实体的所有属性
        Field[] fields = o.getClass().getDeclaredFields();
        for (int i = 0;i<fields.length;i++) {
            Field f = fields[i];
            f.setAccessible(true);
            try {
                System.out.println(f.getName()+":"+f.get(o));
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
    }
}
