package com.jainil.silverTouchHRMS.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/login")
    public String showHomePage(){
        return "login";
    }
}
