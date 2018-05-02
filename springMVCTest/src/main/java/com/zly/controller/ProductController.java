package com.zly.controller;

import com.zly.form.ProductForm;
import com.zly.pojo.Category;
import com.zly.pojo.Product;
import com.zly.serice.ProductService;
import com.zly.validation.ProductValidator;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


/**
 * Created by zly11 on 2018/4/26.
 */
@Controller
public class ProductController {
    private static final Log logger = LogFactory.getLog(ProductController.class);

    @Autowired
    private ProductService productService;


    @RequestMapping(value = "/file")
    public String deleteCusomer(){
        return "fileUpload";
    }

    @RequestMapping(value = "/product_input")
    public String inputProduct(Model model){
       // System.out.println("哈哈哈哈");
        logger.info("InputProduct called");
        List<Category> list = productService.findAllCategory();
        model.addAttribute("product",new Product());
        model.addAttribute("categorys",list);
        return "productForm";
    }

    @RequestMapping(value = "/product_save")
    public String saveProduct(@ModelAttribute@Valid Product product, BindingResult bindingResult, HttpServletRequest request){
        Category category = productService.findCategory(product.getCategory().getId()-1);
        List<MultipartFile> files = product.getImages();
        List<String> fileNames = new ArrayList<String>();
        if (files != null && files.size()>0){
            for (MultipartFile multipartFile:files) {
                String fileName = multipartFile.getOriginalFilename();
                fileNames.add(fileName);
                File imagesFile = new File(request.getServletContext().getRealPath("/images"), fileName);
                try {
                    multipartFile.transferTo(imagesFile);
                }catch (IOException e){
                    e.printStackTrace();
                }
            }
        }
        //System.out.println(product.getName());
        product.setCategory(category);
        if (bindingResult.hasErrors()){
            FieldError fieldError = bindingResult.getFieldError();

            logger.info("code:"+fieldError.getField()
                        + ",field:"+fieldError.getField()
            );
            return "productForm";
        }else {
            productService.add(product);
            return "redirect:/product_view/" + product.getId();
        }
    }

    @RequestMapping("/product_view")
    public String viewProduct(Model model){
        model.addAttribute("producrMap",productService.findAll());
        return "productView";
    }
    @RequestMapping("/product_view/{id}")
    public String viewProductById(@PathVariable Long id,Model model){
        Product product = productService.findByNewId(id);
        model.addAttribute("product",product);
        return "productView1";
    }
}
