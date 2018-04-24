package com.zly.one;

import java.lang.annotation.*;

/**
 * Created by zly11 on 2018/4/24.
 */
@Target(ElementType.METHOD)

//注解保留的阶段，RUNTIME运行时
@Retention(RetentionPolicy.RUNTIME)
@Documented
public interface Action {

    String name();
}
