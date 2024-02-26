<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="sub_menu_health">
    <div class="row-auto">
        <div class="row">
            <div class="col">
                <p class="fs-2" style="color: #3d91f7;">Health</p>
            </div>
        </div>
    </div>
    <div class="row mt-5">
        <div class="container">
            <form>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="text-muted">Height(Cms) <span class="text text-danger">*</span></label>
                            <input type="number" class="form-control" placeholder="Enter Height in Centimeter" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="text-muted">Weight(kgs)</label>
                            <input type="number" class="form-control" placeholder="Enter Weight in Kg" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="text-muted">Blood Group <span class="text text-danger">*</span></label>
                            <select id="bloodGroup">
                                <option value="" selected>-- Select Type --</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="text-muted">Identification Mark-1</label>
                            <input type="text" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="text-muted">Identification Mark-2</label>
                            <input type="text" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <input class="form-check-input" type="checkbox" value="" />
                            <label class="form-check-label text-muted">Physically Handicapped</label>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary float-end ms-2">Save & Continue</button>
                <button type="reset" class="btn btn-secondary float-end">Reset</button>
            </form>
        </div>
    </div>
</div>
