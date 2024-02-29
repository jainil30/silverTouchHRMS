package com.jainil.silverTouchHRMS.controller;


import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/login")
    public String showHomePage(){
        return "login";
    }

    @GetMapping("/logout")
    public String showPage(HttpSession httpSession)
    {
        httpSession.invalidate();
        return "login";
    }
}
