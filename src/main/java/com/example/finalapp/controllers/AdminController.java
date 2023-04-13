package com.example.finalapp.controllers;

import com.example.finalapp.models.Product;
import com.example.finalapp.repositories.CategoryRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {


    @GetMapping("/admin")
    public String admin(){
        return "admin";
    }
    private final CategoryRepository categoryRepository;
    public AdminController(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }
    @GetMapping("admin/product/add")
    public String addProduct(Model model){
        model.addAttribute("product", new Product());
        model.addAttribute("category");
        return "product/addProduct";}
}
