package com.jainil.silverTouchHRMS.controller;


import com.jainil.silverTouchHRMS.entity.Designation;
import com.jainil.silverTouchHRMS.entity.Employee;
import com.jainil.silverTouchHRMS.service.DesignationService;
import com.jainil.silverTouchHRMS.service.EmployeeService;
import org.apache.jasper.compiler.JspUtil;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.query.JSqlParserUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private DesignationService designationService;

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

        for(Employee emp : employeeList){
            System.out.println(emp.getEmployeeCodeSuffix());
        }
        return "admin/masterPage";
    }




    @GetMapping("/addEmployee")
    public String showAddEmployeeForm(Model model) {

        List<Designation> designationList = designationService.fetchAllDesignation();
        model.addAttribute("designations",designationList);
//        designationList.forEach(System.out::println);

        return "admin/employee/addEmployee/masterPage2";
    }

    @GetMapping("/masterPage2")
    public String showMasterPage2() {
        return "admin/employee/addEmployee/addEmployee";
    }



    //Post Mapping


    @PostMapping("/saveEmployeeInfo")
    public String saveEmployeeInfo(@ModelAttribute Employee employee, @RequestParam("dateOfAppointment") String dateOfAppointment, @RequestParam("empDesignation") Long designationId) throws ParseException {
        System.out.println("saveEmployeeInfo() called");

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        employee.setEmployeeDateOfAppointment(dateFormat.parse(dateOfAppointment));

        System.out.println(employee.toString());
        Designation designation = designationService.fetchById(designationId);
        employee.setEmployeeDesignation(designation);

        employeeService.saveEmployee(employee);
        return "redirect:/admin/addEmployee";
    }
}
