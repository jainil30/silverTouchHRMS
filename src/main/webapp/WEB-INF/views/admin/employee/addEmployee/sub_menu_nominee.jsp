<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="sub_menu_nominee">
    <div class="row-auto">
        <div class="row">
            <div class="col-md">
                <p class="fs-2" style="color: #3d91f7;">Nominee</p>
                <a href="">Import Information from Family Detail</a>
            </div>
        </div>
    </div>
    <div class="row mt-5">
        <div class="container">
            <form>
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="priority" class="text-muted">Priority <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="priority" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>[ 1 is High Priority]</label>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
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
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="lastName" class="text-muted">Last Name</label>
                            <input type="text" class="form-control" id="lastName" placeholder="Enter Last Name" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="relation" class="text-muted">Relation <span class="text-danger">*</span></label>
                            <select id="relationNominee">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="dateOfBirth" class="text-muted">Date of Birth <span class="text-danger">*</span></label>
                            <input type="date" class="form-control" id="dateOfBirth" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="gender" class="text-muted">Gender</label>
                            <select id="genderNominee">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="uid" class="text-muted">UID Number</label>
                            <input type="text" class="form-control" placeholder="Enter UID No." />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="panNumber" class="text-muted">Pan Number</label>
                            <input type="text" class="form-control" id="panNumber" placeholder="Enter Pan Number" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="contactNumber" class="text-muted">Contact Number</label>
                            <input type="text" class="form-control" id="contactNumber" placeholder="Enter Contact Number" />
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="nomineeInvalidCondition" class="text-muted">Nominee Invalid Condition</label>
                            <textarea rows="3" class="form-control"></textarea>
                        </div>
                    </div>
                </div>
                <table id="nomineeTable" class="table mt-2">
                    <thead>
                        <tr>
                            <th scope="col">Nominee Type Name</th>
                            <th scope="col">Percentage</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="form-group">
                                    <input type="checkbox" class="form-check-input" />
                                    <label class="form-check-label text-muted">Demo1</label>
                                </div>
                            </td>
                            <td>
                                <div class="form-group"><input type="number" class="form-control" /></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-group">
                                    <input type="checkbox" class="form-check-input" />
                                    <label class="form-check-label text-muted">Demo1</label>
                                </div>
                            </td>
                            <td>
                                <div class="form-group"><input type="number" class="form-control" /></div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <button type="submit" class="btn btn-primary float-end ms-2">Continue</button>
                <button id="nomineeAddRecordBtn" type="button" class="btn btn-primary float-end ms-2">Add Record</button>
                <button type="reset" class="btn btn-secondary float-end">Reset</button>
            </form>
        </div>

        <table id="nomineeRecords" class="table custom_table" style="width: 100%;">
            <thead>
                <tr>
                    <th>Sr. No.</th>
                    <th>Name</th>
                    <th>Relation</th>
                    <th>Priority</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>ksndkjdsknr</td>
                    <td>F</td>
                    <td>21/02/2024</td>
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
