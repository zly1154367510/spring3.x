package com.zly.validation;

import com.zly.pojo.Product;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.util.Date;

/**
 * Created by zly11 on 2018/4/26.
 */
public class ProductValidator implements Validator {

    @Override
    public boolean supports(Class<?> aClass) {
        return Product.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Product product = (Product)o;
        //检验名字是否为空
        ValidationUtils.rejectIfEmpty(errors,"name","productname.required");
        //校验价格是否为空
        ValidationUtils.rejectIfEmpty(errors,"price","productprice.required");
        float price = product.getPrice();
        if (price <0){
            errors.rejectValue("price","price.negative");
        }
        Date date = product.getErrorDate();
        if (date != null){
            if (date.after(new Date())){
                errors.rejectValue("errorDate","errorDate.invalib");
            }
        }
    }
}
