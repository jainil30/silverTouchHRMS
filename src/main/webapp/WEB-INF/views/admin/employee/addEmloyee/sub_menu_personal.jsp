<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="sub_menu_personal">
    <div class="row-auto">
        <div class="row">
            <div class="col">
                <p class="fs-2" style="color: #3d91f7;">Personal</p>
            </div>
        </div>
    </div>
    <div class="row mt-5">
        <div class="container">
            <form>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="gender" class="text-muted">
                                Gender
                                <span class="text text-danger">*</span>
                            </label>
                            <select id="gender">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="marriageStatus" class="text-muted">Marriage Status</label>
                            <select id="marriageStatus">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="dateOfBirth" class="text-muted">Date of Birth <span class="text text-danger">*</span></label>
                            <input type="date" class="form-control" id="dateOfBirth" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="dateOfMarriage" class="text-muted">Date of Marriage</label>
                            <input type="date" class="form-control" id="dateOfMarriage" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="birthPlace" class="text-muted">Birth Place</label>
                            <input type="text" class="form-control" placeholder="Enter Birth Place" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="communityCategory" class="text-muted">
                                Community Category
                                <span class="text text-danger">*</span>
                            </label>
                            <select id="communityCategory">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="uid" class="text-muted">UID No.</label>
                            <input type="text" class="form-control" placeholder="Enter UID No." />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="gpf" class="text-muted">GPF A/C No.</label>
                            <input type="text" class="form-control" placeholder="Enter GPF A/C No." />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="religion" class="text-muted">
                                Religion
                                <span class="text text-danger">*</span>
                            </label>
                            <select id="religion">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="caste" class="text-muted">Caste</label>
                            <select id="caste">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="form-group">
                            <label for="ccr" class="text-muted">Community Category Reference</label>
                            <input type="text" class="form-control" placeholder="Enter Community Category Reference" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="nationality" class="text-muted">Nationality</label>
                            <select id="nationality">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="postalLifeIPN" class="text-muted">Postal Life Insurance Policy No</label>
                            <input type="text" class="form-control" placeholder="Enter Postal Life Insurance Policy No." />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="hobbies" class="text-muted">Hobbies </label>
                            <input type="text" class="form-control" placeholder="Enter Hobbies." />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="bankName" class="text-muted">
                                Bank Name
                                <span class="text text-danger">*</span>
                            </label>
                            <select id="bankName">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="bankBranchName" class="text-muted">Bank Branch Name</label>
                            <select id="bankBranchName">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="bankAccountNumber" class="text-muted">Bank A/C Number <span class="text text-danger">*</span></label>
                            <input type="text" class="form-control" id="bankAccountNumber" placeholder="Enter Bank A/C Number" />
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="ifscCode" class="text-muted">IFSC Code <span class="text text-danger">*</span></label>
                            <input type="text" class="form-control" id="ifscNumber" placeholder="Enter IFSC Code" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="bsrCode" class="text-muted">BSR Code</label>
                            <input type="text" class="form-control" id="bsrCode" placeholder="Enter BSR Code" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="passportNo" class="text-muted">Passport No</label>
                            <input type="text" class="form-control" id="passportNo" placeholder="Example: A2096457" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="dateOfExpiry" class="text-muted">Date of Expiry</label>
                            <input type="date" class="form-control" id="dateOfExpiry" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="visaDetail" class="text-muted">Visa Detail</label>
                            <input type="text" class="form-control" id="visaDetail" placeholder="Enter Visa Details." />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="drivingLicenseNumber" class="text-muted">Driving License Number</label>
                            <input type="text" class="form-control" id="drivingLicenseNumber" placeholder="Enter Driving License Number" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="vehicleType" class="text-muted">License issue for(Vehicle Type)</label>
                            <select id="vehicleType">
                                <option value="" selected> -- Select Type -- </option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="validUpto" class="text-muted">Valid Upto</label>
                            <input type="date" class="form-control" id="validUpto" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="issuedState" class="text-muted">Issued State/UT</label>
                            <select id="issuedState">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="row form-group">
                            <div class="col">
                                <label class="form-check-label text-muted" for="vahicleProvided"> Government Vehicle Provided? </label>
                                <div>
                                    <input class="form-check-input" type="checkbox" value="" id="vahicleProvided" />
                                </div>
                            </div>
                            <div class="col">
                                <label class="form-check-label text-muted" for="isResidentOfOtherCountry"> Is Resident of Other Country? </label>
                                <div>
                                    <input class="form-check-input" type="checkbox" value="" id="isResidentOfOtherCountry" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="form-check-label text-muted" for="diciplinaryProceeding"> Is Any Diciplinary proceeding? </label>
                            <div>
                                <input class="form-check-input" type="checkbox" value="" id="diciplinaryProceeding" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" id="governmentVehicleProvidedExtra">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="form-check-label text-muted" for="vehicleUsedOnDuty">Government Vehicle Used for On Duty?</label>
                            <div>
                                <input class="form-check-input" type="checkbox" value="" id="vehicleUsedOnDuty" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="form-check-label text-muted" for="detailsOfVehicle"> Details Of Vehicle Provided </label>
                            <div>
                                <input class="form-control" type="text" value="" id="detailsOfVehicle" placeholder="Enter Details Of Vehicle" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" id="isResidentOfOtherCountryExtra">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="migrationDate" class="text-muted">Migration Date Of India</label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="country" class="text-muted">Country</label>
                            <select id="country">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="otherCountryAddress" class="text-muted">Other Country Address</label>
                            <textarea class="form-control" rows="5" cols="5"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <label for="additionalInfo" class="text-muted">Additional Information</label>
                            <textarea class="form-control" rows="5" cols="5"></textarea>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary float-end ms-2">Save & Continue</button>
                <button type="reset" class="btn btn-secondary float-end">Reset</button>
            </form>
        </div>
    </div>
</div>
