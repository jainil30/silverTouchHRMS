<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="sub_menu_photograph">
    <div class="row-auto">
        <div class="row">
            <div class="col">
                <p class="fs-2" style="color: #3d91f7;">Photograph</p>
            </div>
        </div>
    </div>
    <div class="row mt-5">
        <div class="container">
            <div class="row">
                <form>
                    <div class="col-md-8 align-items-center">
                        <div class="mb-5 d-flex align-items-center">
                            <div class="me-3">
                                <div id="photoPreview" class="image-container">
                                    <div id="noImageText" class="no-image-text">No Image</div>
                                </div>
                            </div>
                            <div class="flex-grow-1 me-3">
                                <label class="text-muted">Employee Photo <span class="text text-danger">*</span></label>
                                <div class="input-group mb-3 align-items-center">
                                    <input type="text" class="form-control m-0 p-3" id="photoName" aria-describedby="basic-addon2" readonly />
                                    <label class="btn btn-outline-secondary m-0 p-3" for="photoInput">Browse<input type="file" id="photoInput" class="d-none" /></label>
                                    <button type="submit" class="btn p-3 ms-2 btn-upload">Upload</button>
                                </div>
                                <small class="text-muted d-block mt-2">(Only jpg/jpeg/png allowed, Minimum dimension width 200px and height 100px, Maximum file size 500KB)</small>
                            </div>
                        </div>

                        <div class="mb-5 d-flex align-items-center">
                            <div class="me-3">
                                <div id="signaturePreview" class="image-container">
                                    <div id="noSignatureText" class="no-image-text">No Image</div>
                                </div>
                            </div>
                            <div class="flex-grow-1 me-3">
                                <label class="text-muted">Employee Sign <span class="text text-danger">*</span></label>
                                <div class="input-group mb-3 align-items-center">
                                    <input type="text" class="form-control m-0 p-3" id="signatureName" aria-describedby="basic-addon2" readonly />
                                    <label class="btn btn-outline-secondary m-0 p-3" for="signatureInput">Browse<input type="file" id="signatureInput" class="d-none" /></label>
                                    <button type="submit" class="btn p-3 ms-2 btn-upload">Upload</button>
                                </div>
                                <small class="text-muted d-block mt-2">(Only jpg/jpeg/png allowed, Minimum dimension width 200px and height 100px, Maximum file size 500KB)</small>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary float-end ms-2">Continue</button>
                    <button id="resetPhotograph" type="reset" class="btn btn-secondary float-end">Reset</button>
                </form>
            </div>
        </div>
    </div>
</div>
