<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="sub_menu_emergency">
    <div class="row-auto">
        <div class="row">
            <div class="col-md">
                <p class="fs-2" style="color: #3d91f7;">Emergency</p>
            </div>
        </div>
    </div>
    <div class="row mt-5">
        <div class="container">
            <form>
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="priority" class="text-muted">Priority</label>
                            <input type="text" class="form-control" id="priority" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="firstName" class="text-muted">First Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="firstName" placeholder="Enter First Name" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="middleName" class="text-muted">Middle Name</label>
                            <input type="text" class="form-control" id="middleName" placeholder="Enter Middle Name" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="lastName" class="text-muted">Last Name</label>
                            <input type="text" class="form-control" id="lastName" placeholder="Enter Last Name" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="relation" class="text-muted">Relation <span class="text-danger">*</span></label>
                            <select id="relationEmergency">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="phoneNumber" class="text-muted">Phone Number</label>
                            <input type="text" class="form-control" id="phoneNumber" placeholder="Enter Phone Number" />
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="mobileNumber" class="text-muted">Mobile Number <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="mobileNumber" placeholder="Enter Mobile Number" />
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="form-group">
                            <label for="email" class="text-muted">Email</label>
                            <input type="email" class="form-control" id="email" placeholder="Enter Email" />
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="address" class="text-muted">Address</label>
                            <textarea rows="3" class="form-control" placeholder="Enter Address"></textarea>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary float-end ms-2">Continue</button>
                <button id="emergencyAddRecordBtn" type="button" class="btn btn-primary float-end ms-2">Add Record</button>
                <button type="reset" class="btn btn-secondary float-end">Reset</button>
            </form>
        </div>
        <table id="emergencyRecords" class="table custom_table" style="width: 100%;">
            <thead>
                <tr>
                    <th>Sr. No.</th>
                    <th>First Name</th>
                    <th>Occupation</th>
                    <th>Birthday</th>
                    <th>Relation</th>
                    <th>Gender</th>
                    <th>Maritial Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>ksndkjdsknr</td>
                    <td>F</td>
                    <td>21/02/2024</td>
                    <td>Mother in Law</td>
                    <td>Female</td>
                    <td>-</td>
                    <td>
                        <button class="delete-circle-btn float-end" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete">
                            <span class="icon">
                                <i class="fa-solid fa-xmark"></i>
                            </span>
                        </button>
                        <button class="edit-circle-btn float-end" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Edit">
                            <span class="icon">
                                <i class="fa-solid fa-pen"></i>
                            </span>
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
