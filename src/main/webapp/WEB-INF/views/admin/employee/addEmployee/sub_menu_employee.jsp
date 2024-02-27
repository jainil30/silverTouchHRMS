<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="sub_menu_employee">
    <div class="row-auto">
        <div class="row">
            <div class="col">
                <p class="fs-2" style="color: #3d91f7;">Employee</p>
            </div>
            <div class="col-auto">
                <a href="#" class="btn btn-primary">Download Excel template</a>
            </div>
        </div>
    </div>
    <div class="row mt-5">
        <div class="container">
            <form action="/admin/saveEmployeeInfo" method="POST">
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="employeeCode" class="text-muted">Employee Code <span class="text text-danger">*</span> </label>
                            <div class="input-group"><input type="text" class="form-control" name="employeeCodePrefix" id="employeeCode" placeholder="Employee ID" /> <input type="number" class="form-control" id="employeeCode" name="employeeCodeSuffix" placeholder="Employee ID" /></div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="panNumber" class="text-muted">
                                Pan Number
                                <span class="text text-danger">*</span>
                            </label>
                            <input type="text" class="form-control" id="panNumber" name="employeePanNumber" placeholder="Enter Pan Number" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group"><label for="oldEmployeeCode" class="text-muted">Old Employee Code</label> <input type="text" class="form-control" id="oldEmployeeCode" placeholder="Enter Old Employee Code" name="employeeOldEmployeeCode" /></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="dateOfAppointment" class="text-muted">Date of Appointment <span class="text text-danger">*</span> </label>
                            <input type="date" class="form-control" id="dateOfAppointment" name="dateOfAppointment" placeholder="Enter Date of Appointment" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group"><label for="ioMetricId" class="text-muted">Bio Metric ID</label> <input type="text" class="form-control" id="bioMetricId" name="employeeBioMetricId" placeholder="Enter Bio Metric ID" /></div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="salutation" class="text-muted">
                                Salutation
                                <span class="text text-danger">*</span>
                            </label>
                            <select id="salutation" name="employeeSalution">
                                <option value="Shree" selected>Shree</option>
                                <option value="Kumar" selected>Kumar</option>
                                <option value="Kumari" selected>Kumari</option>
                                <option value="Shreemati" selected>Shreemati</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="department" class="text-muted">
                                Department
                                <span class="text text-danger">*</span>
                            </label>
                            <select id="department" name="employeeDepartment">
                                <option value="Java" selected>Java</option>
                                <option value=".Net" selected>.Net</option>
                                <option value="PHP" selected>PHP</option>
                                <option value="Odoo" selected>Odoo</option>
                                <option value="SAP" selected>SAP</option>
                                <option value="Mobile Application Development" selected>Mobile Application Development</option>
                                <option value="Human Resources" selected>Human Resources</option>
                                <option value="RPA" selected>RPA</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="firstName" class="text-muted">
                                First Name
                                <span class="text text-danger">*</span>
                            </label>
                            <input type="text" class="form-control" id="firstName" name="employeeFirstName" placeholder="Enter First Name" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group"><label for="middleName" class="text-muted">Middle Name</label> <input type="text" class="form-control" id="middleName" name="employeeMiddleName" placeholder="Enter Middle Name" /></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group"><label for="lastName" class="text-muted">Last Name</label> <input type="text" class="form-control" id="lastName" name="employeeLastName" placeholder="Enter Last Name" /></div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="unit" class="text-muted">Unit</label>

                            <select id="unit" style="padding: 10px;" name="employeeUnit">
                                <option value="Ahmedabad Unit" selected>Ahmedabad Unit</option>
                                <option value="Mumbai Unit" selected>Mumbai Unit</option>
                                <option value="Delhi Unit" selected>Delhi Unit</option>
                                <option value="Canada Unit" selected>Canada Unit</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="designation" class="text-muted">
                                Designation
                                <span class="text text-danger">*</span>
                            </label>
                            <select id="designation" name="empDesignation">
                            <c:forEach var="designation" items="${designations}">
                                <option value="${designation.designationId}">${designation.designationName}</option>
                            </c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="group" class="text-muted">Group <span class="text text-danger">*</span></label>
                            <select id="group" name="employeeGroup">
                                <option value="The Boys" selected>The Boys</option>
                                <option value="The Girls" selected>The Girls</option>
                                <option value="The Interns" selected>The Interns</option>
                                <option value="Jr. Developers" selected>Jr. Developers</option>
                                <option value="Sr. Developers" selected>Sr. Developers</option>
                                <option value="Leads" selected>Leads</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group"><label class="form-check-label text-muted" for="isGazetted"> Is Gazetted </label> <input class="form-check-input" type="checkbox" name="employeeIsGazetted" id="isGazetted" /></div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="employeeEligibleFor" class="text-muted">Employee Eligible For <span class="text text-danger">*</span> </label>
                            <select id="employeeEligibleFor">
                                <option value="Rent Allowance" selected>Rent Allowance</option>
                                <option value="Car Allowance" selected>Car Allowance</option>
                                <option value="Trip Allowance" selected>Trip Allowance</option>
                                <option value="Food Allowance" selected>Food Allowance</option>

                            </select>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="form-check-label text-muted" for="grautuityAct"> Is Employee Cover Under Grautuity Act </label> <input class="form-check-input" type="checkbox" name="employeeIsCoveredUnderGratuityAct" id="grautuityAct" />
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary float-end ms-2">Save & Continue</button>
                <button type="reset" class="btn btn-secondary float-end">Reset</button>
            </form>
        </div>
    </div>
</div>
