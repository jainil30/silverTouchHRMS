<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="sub_menu_attachments">
    <div class="row-auto">
        <div class="row">
            <div class="col">
                <p class="fs-2" style="color: #3d91f7;">Attachments</p>
            </div>
        </div>
    </div>
    <div class="row mt-5">
        <div class="container">
            <div class="row">
                <form>
                	<div class="row">
	                    <div class="col-md-6">
	                        <div class="form-group">
	                            <label for="documentCategory" class="text-muted">Document Category <span class="text text-danger">*</span> </label>
	                            <select id="documentCategory">
	                                <option value="" selected>-- Select Type --</option>
	                            </select>
	                        </div>
	                    </div>
	                    <div class="col-md-6">
	                        <div class="form-group">
	                            <label for="titleOfDocument" class="text-muted">
	                                Title of Document
	                                <span class="text text-danger">*</span>
	                            </label>
	                            <input type="text" class="form-control" id="titleOfDocument" placeholder="Enter Title of Document" />
	                        </div>
	                    </div>
	                </div>
                	<div class="row">
	                    <div class="col-md-12">
	                        <div class="form-group">
	                            <label for="documentDescription" class="text-muted">Document Description</label>
	                            <textarea rows="3" class="form-control"></textarea>
	                        </div>
	                    </div>
	                </div>
	                <div class="row">
	                
	                	<div class="col-md-6 mb-5 d-flex align-items-center">
                            
                            <div class="flex-grow-1 me-3">
                                <label class="text-muted">Document <span class="text text-danger">*</span></label>
                                <div class="input-group mb-3 align-items-center">
                                    <input type="text" class="form-control m-0 p-3" id="documentName" aria-describedby="basic-addon2" readonly />
                                    <label class="btn btn-outline-secondary m-0 p-3" for="documentInput">Browse<input type="file" id="documentInput" class="d-none" /></label>
                                </div>
                                <small class="text-muted d-block mt-2">(Only jpg/jpeg/png allowed, Minimum dimension width 200px and height 100px, Maximum file size 500KB)</small>
                            </div>
                            <div class="me-3">
                                <div id="documentPreview" class="image-container">
                                    <div id="noDocumentText" class="no-image-text">No Image</div>
                                </div>
                            </div>
                        </div>
	                </div>
                    <button type="submit" class="btn btn-primary float-end ms-2">Continue</button>
                    <button id="resetAttachments" type="reset" class="btn btn-secondary float-end">Reset</button>
                </form>
            </div>
        </div>
    </div>
</div>
