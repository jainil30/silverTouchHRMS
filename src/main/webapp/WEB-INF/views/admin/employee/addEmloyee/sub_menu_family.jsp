<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="sub_menu_family">
    <div class="row-auto">
        <div class="row">
            <div class="col-md">
                <p class="fs-2" style="color: #3d91f7;">Family</p>
            </div>
        </div>
    </div>
    <div class="row mt-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-10 text-center">
                    <a href="" id="addNewRecord" style="text-decoration: none;">
                        <div class="card text-center p-5" style="border: 2px solid #c6c6c6; border-radius: 15px;">
                            <div class="card-body">
                                <h5 class="card-title text-muted">Add New Record</h5>
                                <div>
                                    <i class="text-muted fs-4 fas fa-plus"></i>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="container" id="familyForm">
            <form>
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
                            <select id="relationFamily">
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
                            <select id="genderFamily">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <input class="form-check-input" type="checkbox" value="" id="isNominee" />
                            <label class="form-check-label text-muted" for="isNominee"> is Nominee? </label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="maritalStatus" class="text-muted">Marital Status</label>
                            <select id="maritalStatusFamily">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="occupation" class="text-muted">Occupation</label>
                            <input type="text" class="form-control" id="occupation" placeholder="Enter Occupation" />
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <input class="form-check-input" type="checkbox" value="" id="isDependent" />
                            <label class="form-check-label text-muted" for="isDependent"> is Dependent </label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="contactDetail" class="text-muted">Contact Detail</label>
                            <input type="text" class="form-control" id="contactDetail" placeholder="Enter Contact Detail" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="nationality" class="text-muted">Nationality</label>
                            <select id="nationalityFamily">
                                <option value="" selected>-- Select Nationality --</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <input class="form-check-input" type="checkbox" value="" id="isResidingWith" />
                            <label class="form-check-label text-muted" for="isResidingWith"> Is Residing With </label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="form-check-label text-muted" for="canBeContacted"> Can be Contacted in Emergency?</label>
                            <input class="form-check-input" type="checkbox" value="" id="canBeContacted" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="form-check-label text-muted" for="isPhysicallyDisabled"> Is Physically Disabled? </label>
                            <input class="form-check-input" type="checkbox" value="" id="isPhysicallyDisabled" />
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="address" class="text-muted">Address</label>
                            <textarea rows="3" cols="3" type="text" class="form-control" id="address" placeholder="Enter Address"></textarea>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary float-end ms-2">Continue</button>
                <button id="familyAddRecordBtn" type="button" class="btn btn-primary float-end ms-2">Add Record</button>
                <button type="reset" class="btn btn-secondary float-end">Reset</button>
            </form>
        </div>
        <table id="familyRecords" class="table custom_table" style="width: 100%;">
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
