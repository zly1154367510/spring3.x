package com.zly.pojo;

import java.util.Date;
import javax.persistence.*;

@Table(name = "shapping_car")
public class ShappingCar {
    @Id
    private Integer id;

//    @Column(name = "car_Id")
//    private Integer carId;
    private Car car;

//    @Column(name = "user_id")
//    private Integer userId;

    private User user;

    @Column(name = "is_pay")
    private String isPay;

    @Column(name = "create_time")
    private Date createTime;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return car_Id
     */


    /**
     * @return is_pay
     */
    public String getIsPay() {
        return isPay;
    }

    /**
     * @param isPay
     */
    public void setIsPay(String isPay) {
        this.isPay = isPay;
    }

    /**
     * @return create_time
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * @param createTime
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}