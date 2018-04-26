package com.zly.serice;

import com.zly.pojo.Category;
import com.zly.pojo.Product;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by zly11 on 2018/4/26.
 */

public interface ProductService {

    Product add(Product product);
    Product findByNewId(long id);
    Map<Long,Product> findAll();
    List<Category> findAllCategory();
    Category findCategory(int id);

}
