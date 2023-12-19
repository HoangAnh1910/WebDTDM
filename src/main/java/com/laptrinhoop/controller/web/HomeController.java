package com.laptrinhoop.controller.web;

import java.util.Collections;
import java.util.List;

import com.laptrinhoop.dao.IGeneralDAO;
import com.laptrinhoop.entity.Category;
import com.laptrinhoop.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.laptrinhoop.entity.Product;
import com.laptrinhoop.service.ICategoryService;
import com.laptrinhoop.service.IProductService;
@Controller
public class HomeController {
    @Autowired
    private ICategoryService serviceCategory;
    @Autowired
    private ICategoryService service;
    @Autowired
    private IProductService prodService;
    @Autowired
    ICartService cart;

    @RequestMapping("")
    public String index(Model model) {
        model.addAttribute("cart",cart);
        return "home/index";
    }

    @RequestMapping("/home/about")
    public String about(Model model) {
        model.addAttribute("cart", cart);
        return "home/about";
    }

    @RequestMapping("/home/contact")
    public String contact(Model model) {
        model.addAttribute("cart", cart);
        return "home/contact";
    }

    @RequestMapping("/home/feedback")
    public String feedback(Model model) {
        model.addAttribute("cart", cart);
        return "home/feedback";
    }

    @RequestMapping("/home/faq")
    public String faq(Model model) {
        model.addAttribute("cart", cart);
        return "home/faq";
    }

    @RequestMapping("/home/aside/category")
    public String category(Model model) {
        model.addAttribute("cates", serviceCategory.findAll());
        return "non-layout/layout/_aside-category";
    }

    @RequestMapping("/home/random")
    public String random( Model model) {
        Category category = service.findById(1000);
        List<Product> listProduct = category.getProducts();
        Collections.shuffle(listProduct);
        model.addAttribute("list", listProduct.subList(0, 6));

        Category category1 = service.findById(1001);
        List<Product> listProduct1 = category1.getProducts();
        Collections.shuffle(listProduct1);
        model.addAttribute("list1", listProduct1.subList(0, 6));


        Category category2 = service.findById(1002);
        List<Product> listProduct2 = category2.getProducts();
        Collections.shuffle(listProduct2);
        model.addAttribute("list2", listProduct2.subList(0, 6));

        return "non-layout/product/listHome";
    }

    @RequestMapping("/home/slideshow")
    public String slideshow(Model model) {
        List<Category> list = serviceCategory.getRamDomByCategory();
        list.forEach(x -> System.out.println(x.getNameVN()));
        model.addAttribute("slideshow_cates", list.subList(0,3));
        return "non-layout/home/_slideshow";
    }
}
