package com.zly.serice.impl;

import com.zly.pojo.Category;
import com.zly.pojo.Product;
import com.zly.serice.ProductService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/**
 * Created by zly11 on 2018/4/26.
 */
@Service
public class ProductServiceImpl implements ProductService {

    private Map<Long,Product> map = new HashMap<Long,Product>();
    private AtomicLong generator = new AtomicLong();
    private List<Category> list = new ArrayList<Category>();

    public ProductServiceImpl(){
        list.add(new Category(1,"食品"));
        list.add(new Category(2,"衣服"));
        list.add(new Category(3,"日用品"));
        Product product = new Product();
        product.setName("aaa");
        product.setPrice(17);
        add(product);
    }

    @Override
    public Product add(Product product) {
        long newId = generator.incrementAndGet();
        product.setId(newId);
        map.put(newId,product);
        return product;
    }

    @Override
    public Product findByNewId(long id) {
        return map.get(id);
    }

    @Override
    public Map<Long, Product> findAll() {
        return this.map;
    }

    @Override
    public List<Category> findAllCategory() {
        return this.list;
    }

    @Override
    public Category findCategory(int id) {
        return list.get(id);
    }
}
