package com.example.finalapp.controllers;

import com.example.finalapp.models.Category;
import com.example.finalapp.models.Product;
import com.example.finalapp.repositories.CategoryRepository;
import com.example.finalapp.security.ProductService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
public class AdminController {

    @GetMapping("/admin")
    public String admin(){
        return "admin";
    }


    @Value("${upload.path}")
    private String uploadPath;

    private final CategoryRepository categoryRepository;

    public AdminController(ProductService productService, CategoryRepository categoryRepository) {

        this.categoryRepository = categoryRepository;
    }




    @GetMapping("admin/product/add")
    public String addProduct(Model model){
        model.addAttribute("product", new Product());
        model.addAttribute("category");
        return "product/addProduct";}



}
