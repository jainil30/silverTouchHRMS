<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="sub_menu_job">
    <div class="row-auto">
        <div class="row">
            <div class="col">
                <p class="fs-2" style="color: #3d91f7;">Job</p>
            </div>
        </div>
    </div>
    <div class="row mt-5">
        <div class="container">
            <div class="row">
                <form>
                	<div class="row mb-4">
	                    <div class="col-md-4">
	                        <div class="form-group">
	                            <label for="employmentType" class="text-muted">Employment Type <span class="text text-danger">*</span> </label>
	                            <select id="employmentType">
	                                <option value="" selected>-- Select Type --</option>
	                            </select>
	                        </div>
	                    </div>
	                    <div class="col-md-4">
	                        <div class="form-group">
	                            <label for="employmentCategory" class="text-muted">Employment Category <span class="text text-danger">*</span> </label>
	                            <select id="employmentCategory">
	                                <option value="" selected>-- Select Type --</option>
	                            </select>
	                        </div>
	                    </div>
	                    <div class="col-md-4">
	                        <div class="form-group">
	                            <label for="employmentStatus" class="text-muted">Employment Status <span class="text text-danger">*</span> </label>
	                            <select id="employmentStatus">
	                                <option value="" selected>-- Select Type --</option>
	                            </select>
	                        </div>
	                    </div>
	                </div>
                	<div class="row mb-4">
	                    <div class="col-md-4">
	                        <div class="form-group">
	                            <label for="noticePeriod" class="text-muted">Notice Period (In Months)</label>
	                            <input type="number" class="form-control" placeholder="Enter Notice Period in Month"/>
	                        </div>
	                    </div>
	                    <div class="col-md-4">
	                        <div class="form-group">
	                            <label for="employmentGrade" class="text-muted">Employment Grade</label>
	                            <select id="employmentGrade">
	                                <option value="" selected>-- Select Type --</option>
	                            </select>
	                        </div>
	                    </div>
	                    <div class="col-md-4">
	                        <div class="form-group">
	                            <label for="dutyAndResponsibility" class="text-muted">Duty and Responsibility</label>
	                            <textarea rows="3" class="form-control"></textarea>
	                        </div>
	                    </div>
	                </div>
                	<div class="row">
	                    <div class="col-md-4">
	                        <div class="form-group">
	                            <label for="insuranceStartGroup" class="text-muted">Insurance Start Group</label>
	                            <select id="insuranceStartGroup">
	                                <option value="" selected>-- Select Type --</option>
	                            </select>
	                        </div>
	                    </div>
	                    <div class="col-md-4">
	                        <div class="form-group">
	                            <label for="insuranceWithEffectiveFrom" class="text-muted">Insurance With Effective From</label>
	                            <input type="date" class="form-control"/>
	                        </div>
	                    </div>
	                </div>
	                <hr/>
	                <p class="fs-2" style="color: #3d91f7;">Initial Joining Detail</p>
                    <button type="submit" class="btn btn-primary float-end ms-2">Continue</button>
                    <button type="reset" class="btn btn-secondary float-end">Reset</button>
                </form>
            </div>
        </div>
    </div>
</div>
