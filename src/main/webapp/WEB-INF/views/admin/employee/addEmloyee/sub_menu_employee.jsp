<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            <form>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="employeeCode" class="text-muted">Employee Code <span class="text text-danger">*</span> </label>
                            <div class="input-group"><span class="input-group-text m-2">STT</span> <input type="text" class="form-control" id="employeeCode" placeholder="Employee ID" /></div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="panNumber" class="text-muted">
                                Pan Number
                                <span class="text text-danger">*</span>
                            </label>
                            <input type="text" class="form-control" id="panNumber" placeholder="Enter Pan Number" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group"><label for="oldEmployeeCode" class="text-muted">Old Employee Code</label> <input type="text" class="form-control" id="oldEmployeeCode" placeholder="Enter Old Employee Code" /></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="dateOfAppointment" class="text-muted">Date of Appointment <span class="text text-danger">*</span> </label>
                            <input type="date" class="form-control" id="dateOfAppointment" placeholder="Enter Date of Appointment" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group"><label for="ioMetricId" class="text-muted">Bio Metric ID</label> <input type="text" class="form-control" id="bioMetricId" placeholder="Enter Bio Metric ID" /></div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="salutation" class="text-muted">
                                Salutation
                                <span class="text text-danger">*</span>
                            </label>
                            <select id="salutation">
                                <option value="" selected>-- Select Type --</option>
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
                            <select id="department">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="firstName" class="text-muted">
                                First Name
                                <span class="text text-danger">*</span>
                            </label>
                            <input type="text" class="form-control" id="firstName" placeholder="Enter First Name" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group"><label for="middleName" class="text-muted">Middle Name</label> <input type="text" class="form-control" id="middleName" placeholder="Enter Middle Name" /></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group"><label for="lastName" class="text-muted">Last Name</label> <input type="text" class="form-control" id="lastName" placeholder="Enter Last Name" /></div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="unit" class="text-muted">Unit</label>

                            <select id="unit" style="padding: 10px;">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="designation" class="text-muted">
                                Designation
                                <span class="text text-danger">*</span>
                            </label>
                            <select id="designation">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="group" class="text-muted">Group <span class="text text-danger">*</span></label>
                            <select id="group">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group"><label class="form-check-label text-muted" for="isGazetted"> Is Gazetted </label> <input class="form-check-input" type="checkbox" value="" id="isGazetted" /></div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="employeeEligibleFor" class="text-muted">Employee Eligible For <span class="text text-danger">*</span> </label>
                            <select id="employeeEligibleFor">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="form-check-label text-muted" for="grautuityAct"> Is Employee Cover Under Grautuity Act </label> <input class="form-check-input" type="checkbox" value="" id="grautuityAct" />
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary float-end ms-2">Save & Continue</button>
                <button type="reset" class="btn btn-secondary float-end">Reset</button>
            </form>
        </div>
    </div>
</div>
