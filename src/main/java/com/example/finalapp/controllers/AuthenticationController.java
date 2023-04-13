package com.example.finalapp.controllers;


import com.example.finalapp.models.Product;
import com.example.finalapp.repositories.CategoryRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthenticationController {



    @GetMapping("/authentication")
    public String login(){
        return "authentication";
    }


}
