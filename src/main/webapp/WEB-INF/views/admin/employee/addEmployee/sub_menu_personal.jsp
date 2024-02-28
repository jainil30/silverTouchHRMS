<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                            <select id="gender" name="gender">
                                <option value="male" selected>Male</option>
                                <option value="Female" selected>Female</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="marriageStatus" class="text-muted">Marriage Status</label>
                            <select id="marriageStatus" name="marriageStatus">
                                <option value="Unmarried">Unmarried</option>
                                <option value="Married">Married</option>
                                <option value="Divorced">Divorced</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="dateOfBirth" class="text-muted">Date of Birth <span class="text text-danger">*</span></label>
                            <input type="date" class="form-control" id="dateOfBirth" name="dob" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="dateOfMarriage" class="text-muted">Date of Marriage</label>
                            <input type="date" class="form-control" name="dom" id="dateOfMarriage" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="birthPlace" class="text-muted">Birth Place</label>
                            <input type="text" class="form-control" name="birthPlace" placeholder="Enter Birth Place" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="communityCategory" class="text-muted">
                                Community Category
                                <span class="text text-danger">*</span>
                            </label>
                            <select id="communityCategory" name="communityCategory">
                                <option value="General" selected>General</option>
                                <option value="SEBC" selected>SEBC</option>
                                <option value="SC" selected>SC</option>
                                <option value="ST" selected>ST</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="uid" class="text-muted">UID No.</label>
                            <input type="text" class="form-control" name="UIDNumber" placeholder="Enter UID No." />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="gpf" class="text-muted">GPF A/C No.</label>
                            <input type="text" class="form-control" name="GPFNumberAcNo" placeholder="Enter GPF A/C No." />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="religion" class="text-muted">
                                Religion
                                <span class="text text-danger">*</span>
                            </label>
                            <select id="religion" name="religion">
                                <option value="Hindu" selected>Hindu</option>
                                <option value="Katar Hindu" selected>Katar Hindu</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="caste" class="text-muted">Caste</label>
                            <select id="caste" name="caste">
                                <option value="kadva" selected>Kadva</option>
                                <option value="Leva" selected>Leva</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="form-group">
                            <label for="ccr" class="text-muted">Community Category Reference</label>
                            <input type="text" class="form-control" name="communityCategoryReference"  placeholder="Enter Community Category Reference" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="nationality" class="text-muted">Nationality</label>
                            <select id="nationality" name="nationality" >
                                <option value="" selected></option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="postalLifeIPN" class="text-muted">Postal Life Insurance Policy No</label>
                            <input type="text" class="form-control" name="postalLifeInsuarancePolicyNo" placeholder="Enter Postal Life Insurance Policy No." />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="hobbies" class="text-muted">Hobbies </label>
                            <input type="text" class="form-control" name="hobbies" placeholder="Enter Hobbies." />
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
                            <select id="bankName" name="bankName">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="bankBranchName" class="text-muted">Bank Branch Name</label>
                            <select id="bankBranchName" name="bankBranchName">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="bankAccountNumber" class="text-muted">Bank A/C Number <span class="text text-danger">*</span></label>
                            <input type="text" class="form-control" name="bankAccountNumber" id="bankAccountNumber" placeholder="Enter Bank A/C Number" />
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="ifscCode" class="text-muted">IFSC Code <span class="text text-danger">*</span></label>
                            <input type="text" class="form-control" name="ifscCode" id="ifscNumber" placeholder="Enter IFSC Code" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="bsrCode" class="text-muted">BSR Code</label>
                            <input type="text" class="form-control" name="bsrCode" id="bsrCode" placeholder="Enter BSR Code" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="passportNo" class="text-muted">Passport No</label>
                            <input type="text" class="form-control" id="passportNo" name="passportNumber" placeholder="Example: A2096457" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="dateOfExpiry" class="text-muted">Date of Expiry</label>
                            <input type="date" class="form-control" name="doe" id="dateOfExpiry" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="visaDetail" class="text-muted">Visa Detail</label>
                            <input type="text" class="form-control" name="visaDetail" id="visaDetail" placeholder="Enter Visa Details." />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="drivingLicenseNumber" class="text-muted">Driving License Number</label>
                            <input type="text" class="form-control" name="drivingLicenseNumber" id="drivingLicenseNumber" placeholder="Enter Driving License Number" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="vehicleType" class="text-muted">License issue for(Vehicle Type)</label>
                            <select id="vehicleType" name="vehicleType">
                                <option value="MC With Gear or M/CYCL.WG" selected>MC With Gear or M/CYCL.WG  </option>
                                <option value="MGV">MGV</option>
                                <option value="LMV">LMV</option>
                                <option value="HMV">HMV</option>
                                <option value="MGV">MGV</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="validUpto" class="text-muted">Valid Upto</label>
                            <input type="date" class="form-control" name="validUpTo" id="validUpto" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="issuedState" class="text-muted">Issued State/UT</label>
                            <select id="issuedState" name="state">
                                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                    <option value="Assam">Assam</option>
                                    <option value="Bihar">Bihar</option>
                                    <option value="Chhattisgarh">Chhattisgarh</option>
                                    <option value="Goa">Goa</option>
                                    <option value="Gujarat">Gujarat</option>
                                    <option value="Haryana">Haryana</option>
                                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                                    <option value="Jharkhand">Jharkhand</option>
                                    <option value="Karnataka">Karnataka</option>
                                    <option value="Kerala">Kerala</option>
                                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                                    <option value="Maharashtra">Maharashtra</option>
                                    <option value="Manipur">Manipur</option>
                                    <option value="Meghalaya">Meghalaya</option>
                                    <option value="Mizoram">Mizoram</option>
                                    <option value="Nagaland">Nagaland</option>
                                    <option value="Odisha">Odisha</option>
                                    <option value="Punjab">Punjab</option>
                                    <option value="Rajasthan">Rajasthan</option>
                                    <option value="Sikkim">Sikkim</option>
                                    <option value="Tamil Nadu">Tamil Nadu</option>
                                    <option value="Telangana">Telangana</option>
                                    <option value="Tripura">Tripura</option>
                                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                                    <option value="Uttarakhand">Uttarakhand</option>
                                    <option value="West Bengal">West Bengal</option>
                                    <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                    <option value="Chandigarh">Chandigarh</option>
                                    <option value="Dadra and Nagar Haveli and Daman and Diu">Dadra and Nagar Haveli and Daman and Diu</option>
                                    <option value="Delhi">Delhi</option>
                                    <option value="Lakshadweep">Lakshadweep</option>
                                    <option value="Puducherry">Puducherry</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="row form-group">
                            <div class="col">
                                <label class="form-check-label text-muted" for="vahicleProvided"> Government Vehicle Provided? </label>
                                <div>
                                    <input class="form-check-input" type="checkbox" name="governmentVehicleProvided" id="vahicleProvided" />
                                </div>
                            </div>
                            <div class="col">
                                <label class="form-check-label text-muted" for="isResidentOfOtherCountry"> Is Resident of Other Country? </label>
                                <div>
                                    <input class="form-check-input" type="checkbox" name="isForeigner" id="isResidentOfOtherCountry" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="form-check-label text-muted" for="diciplinaryProceeding"> Is Any Diciplinary proceeding? </label>
                            <div>
                                <input class="form-check-input" type="checkbox" name="isAnyDisciplinaryProceeding" id="diciplinaryProceeding" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" id="governmentVehicleProvidedExtra">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="form-check-label text-muted" for="vehicleUsedOnDuty">Government Vehicle Used for On Duty?</label>
                            <div>
                                <input class="form-check-input" type="checkbox" name="governmentVehicleUsedForOnDuty" id="vehicleUsedOnDuty" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="form-check-label text-muted" for="detailsOfVehicle"> Details Of Vehicle Provided </label>
                            <div>
                                <input class="form-control" type="text" name="detailsOfVehicleProvided" id="detailsOfVehicle" placeholder="Enter Details Of Vehicle" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" id="isResidentOfOtherCountryExtra">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="migrationDate" class="text-muted">Migration Date Of India</label>
                            <input type="date" name="mDoI" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="country" class="text-muted">Country</label>
                            <select id="country" name="migratedCountry">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="otherCountryAddress" class="text-muted">Other Country Address</label>
                            <textarea class="form-control" name="otherCountryAddress" rows="5" cols="5"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <label for="additionalInfo" class="text-muted">Additional Information</label>
                            <textarea class="form-control" name="additionalInformation" rows="5" cols="5"></textarea>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary float-end ms-2">Save & Continue</button>
                <button type="reset" class="btn btn-secondary float-end">Reset</button>
            </form>
        </div>
    </div>
</div>
