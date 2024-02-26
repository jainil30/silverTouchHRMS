package com.jainil.silverTouchHRMS.service;


import com.jainil.silverTouchHRMS.entity.Employee;

import java.util.List;

public interface EmployeeService {
    public void saveEmployee(Employee employee);

    public Employee fetchById(Long empId);

    public List<Employee> fetchAll();

    public void deleteById(Long empId);
}
