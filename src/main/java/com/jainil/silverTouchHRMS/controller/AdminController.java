package com.jainil.silverTouchHRMS.controller;


import com.jainil.silverTouchHRMS.entity.Employee;
import com.jainil.silverTouchHRMS.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/")
    public String showHomePage(){
        return "login";
    }

    @GetMapping("/dashboard")
    public String showAdminDashboardPage(Model model){

        List<Employee> employeeList = employeeService.fetchAll();
        model.addAttribute("employees",employeeList);

        return "admin/masterPage";
    }



}
