package com.example.finalapp.controllers;

import com.example.finalapp.models.Person;
import com.example.finalapp.security.PersonDetails;
import com.example.finalapp.services.PersonService;
import com.example.finalapp.util.PersonValidator;
import jakarta.validation.Valid;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MainController {

    private final PersonValidator personValidator;
    private final PersonService personService;

    public MainController(PersonValidator personValidator, PersonService personService) {
        this.personValidator = personValidator;
        this.personService = personService;
    }

    @GetMapping("/index")
    public String index(){

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        PersonDetails personDetails = (PersonDetails) authentication.getPrincipal();

        String role = personDetails.getPerson().getRole();
        if(role.equals("ROLE_ADMIN")){
            return "redirect:/admin";
        }
        return "index";
    }
    @GetMapping("/registration")
    public String registration(@ModelAttribute("person") Person person){
        return "registration";
    }

    @PostMapping("/registration")
    public String resultRegistration(@ModelAttribute("person") @Valid Person person, BindingResult bindingResult){
        personValidator.validate(person, bindingResult);
        if(bindingResult.hasErrors()){
            return "registration";
        }
        personService.register(person);
        return "redirect:/index";
    }
}
