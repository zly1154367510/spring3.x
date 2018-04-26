package com.zly.pojo;


import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * Created by zly11 on 2018/4/26.
 */
public class Product implements Serializable{

    private long id;
    @NotEmpty(message = "name不能为空")
    private String name;
    @DecimalMin(value = "0.00",message = "price不能小于0")
    private float price;
    @Past(message = "errorDate不能早于当前时间")
    private Date errorDate;
    private Category category;

    private List<MultipartFile> images;

    public List<MultipartFile> getImages() {
        return images;
    }

    public void setImages(List<MultipartFile> images) {
        this.images = images;
    }

    public Category getCategory() {
        return category;
    }

    public Date getErrorDate() {
        return errorDate;
    }

    public void setErrorDate(Date errorDate) {
        this.errorDate = errorDate;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Product(){}

    public Product(long id,String name,float price ){
        this.id = id;
        this.name = name;
        this.price = price;
    }



    public float getPrice() {
        return price;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getName() {

        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
