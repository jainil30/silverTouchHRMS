package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Employee;
import com.jainil.silverTouchHRMS.entity.Role;
import com.jainil.silverTouchHRMS.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImplementation implements EmployeeService{

    @Autowired
    private EmployeeRepository employeeRepository;

    @Override
    public void saveEmployee(Employee employee) {
        employee.setPassword("123");
        employee.setRole(Role.ROLE_EMPLOYEE);
        employeeRepository.save(employee);
    }

    @Override
    public Employee fetchById(Long empId) {
        return employeeRepository.findById(empId).get();
    }

    @Override
    public Employee fetchByUsername(String username) {
        return employeeRepository.findByEmployeeFirstName(username);
    }


    @Override
    public List<Employee> fetchAll() {
        return employeeRepository.findAll();
    }

    @Override
    public void deleteById(Long empId) {
        employeeRepository.deleteById(empId);
    }
}
