package com.jainil.silverTouchHRMS.controller;


import com.jainil.silverTouchHRMS.entity.*;
import com.jainil.silverTouchHRMS.service.*;
import jakarta.servlet.http.HttpSession;
import org.apache.jasper.compiler.JspUtil;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.query.JSqlParserUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.net.SocketImpl;
import java.security.Principal;
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


    @Autowired
    private PersonalDetailsService personalDetailsService;

    @Autowired
    private PassportService passportService;

    @Autowired
    private DrivingLicenseNumberService drivingLicenseNumberService;

    @Autowired
    private FamilyService familyService;

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

//    @GetMapping("/masterPage2")
//    public String showMasterPage2() {
//        return "admin/employee/addEmployee/addEmployee";
//    }



    //Post Mapping
    @PostMapping("/saveEmployeeInfo")
    public String saveEmployeeInfo(@ModelAttribute Employee employee, @RequestParam("dateOfAppointment") String dateOfAppointment, @RequestParam("empDesignation") Long designationId, HttpSession httpSession) throws ParseException {
        System.out.println("saveEmployeeInfo() called");

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        employee.setEmployeeDateOfAppointment(dateFormat.parse(dateOfAppointment));

        System.out.println(employee.toString());
        Designation designation = designationService.fetchById(designationId);
        employee.setEmployeeDesignation(designation);

        employeeService.saveEmployee(employee);
        httpSession.setAttribute("employeeUsername",employee);
        return "redirect:/admin/addEmployee?select=subMenuPersonal";
    }

    @PostMapping("/savePersonalInfo")
    public String savePersonalInfo(@ModelAttribute PersonalDetails personalDetails, @ModelAttribute Passport passport, @ModelAttribute DrivingLicenseNumber drivingLicenseNumber, @RequestParam("dob") String dateOfBirth, @RequestParam("dom") String dateOfMarriage, @RequestParam("doe") String dateOfExpiry, @RequestParam("validUpTo") String validUpTo, @RequestParam("mDoI") String dateOfMigration, HttpSession httpSession){

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Employee employee = (Employee) httpSession.getAttribute("employeeUsername");
        employee.toString();
        try {
            personalDetails.setDateOfBirth(dateFormat.parse(dateOfBirth));
            personalDetails.setDateOfMarriage(dateFormat.parse(dateOfMarriage));
            personalDetails.setEmployee(employee);

            passport.setDateOfExpiry(dateFormat.parse(dateOfExpiry));
            passport.setEmployee(employee);

            drivingLicenseNumber.setValidUpto(dateFormat.parse(validUpTo));
            drivingLicenseNumber.setMigrationDateOfIndia(dateFormat.parse(dateOfMigration));
            drivingLicenseNumber.setEmployee(employee);
            personalDetailsService.savePersonalDetails(personalDetails);
            passportService.savePassport(passport);
            drivingLicenseNumberService.saveDrivingLicenseNumber(drivingLicenseNumber);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }finally {
            System.out.println(personalDetails.toString());
            System.out.println(passport.toString());
            System.out.println(drivingLicenseNumber.toString());
        }



        return "redirect:/admin/addEmployee?select=subMenuContact";
    }

    @PostMapping("/saveFamilyInfo")
    public String saveFamilyInfo(@ModelAttribute Family family, @RequestParam("dob") String dateOfBirth, Principal principal, HttpSession httpSession){

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        Employee employee = (Employee) httpSession.getAttribute("employeeUsername");
        employee.toString();
        try {
            family.setDateOfBirth(dateFormat.parse(dateOfBirth));
            family.setEmployee(employee);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }

//        System.out.println(employeeService.fetchByUsername(principal.getName()).toString());
        System.out.println(family.toString());
//        family.setEmployee(employeeService.fetchByUsername(principal.getName()));
        familyService.saveFamily(family);

        return "redirect:/admin/addEmployee?select=subMenuContact";
    }
}
