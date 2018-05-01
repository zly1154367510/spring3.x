package com.zly.converter;


import org.springframework.core.convert.converter.Converter;
import org.springframework.core.env.SystemEnvironmentPropertySource;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by zly11 on 2018/4/26.
 * String to date 转换器
 */
public class StringToDateConverter implements Converter<String,Date> {

    private String datePatten;

    public StringToDateConverter(String datePatten){
        this.datePatten = datePatten;
    }

    @Override
    public Date convert(String o) {
        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat(datePatten);
            dateFormat.setLenient(false);
            System.out.println("时间校验");
            return dateFormat.parse((String)o);
        }catch (ParseException e){

           throw new IllegalArgumentException("string to date error");
        }

    }
}
