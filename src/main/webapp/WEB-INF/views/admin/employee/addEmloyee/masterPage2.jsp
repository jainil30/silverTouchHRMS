<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../../include/metaInclude.jsp"></jsp:include>
        <title>HRMS Employee Add</title>
        <jsp:include page="../../../include/fontInclude.jsp"></jsp:include>
        <jsp:include page="../../../include/cssInclude.jsp"></jsp:include>
        <jsp:include page="../../../include/jsInclude.jsp"></jsp:include>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/addEmployee.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/masterPage2.css" />
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid py-1">
                <div class="col-md-1">
                    <div class="col-md-9 text-center">
                        <img src="${pageContext.request.contextPath}/images/sttlLogo.png" width="30px" height="30px" alt="" />
                    </div>
                    <div></div>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="col-md-3 nav-item dropdown me-4">
                            <p class="p-0 m-0 text-end">
                                <small>Parent Menu:</small>
                            </p>
                            <a class="nav-link text-end dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> -- Select Parent Menu -- </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#" data-value="Action">Action</a></li>
                                <li><a class="dropdown-item" href="#" data-value="Another action">Another action</a></li>
                                <li>
                                    <hr class="dropdown-divider" />
                                </li>
                                <li><a class="dropdown-item" href="#" data-value="Something else here">Something else here</a></li>
                            </ul>
                        </li>
                        <li class="col-md-auto nav-item dropdown">
                            <p class="p-0 m-0 text-end">
                                <small>Company:</small>
                            </p>
                            <a class="nav-link text-end dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> -- Select Company -- </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#" data-value="Employee Management">Employee Management</a></li>
                                <li><a class="dropdown-item" href="#" data-value="Another action">Another action</a></li>
                                <li>
                                    <hr class="dropdown-divider" />
                                </li>
                                <li><a class="dropdown-item" href="#" data-value="Something else here">Something else here</a></li>
                            </ul>
                        </li>
                        <li class="col-md-auto nav-item dropdown">
                            <p class="p-0 m-0 text-end">
                                <small>Branch:</small>
                            </p>
                            <a class="nav-link text-end dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> -- Select Branch -- </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#" data-value="Ahmedabad Head Office">Ahmedabad Head Office</a></li>
                                <li><a class="dropdown-item" href="#" data-value="Another action">Another action</a></li>
                                <li>
                                    <hr class="dropdown-divider" />
                                </li>
                                <li><a class="dropdown-item" href="#" data-value="Something else here">Something else here</a></li>
                            </ul>
                        </li>
                        <li class="col-md-auto nav-item dropdown">
                            <p class="p-0 m-0 text-end">
                                <small>Role:</small>
                            </p>
                            <a class="nav-link text-end" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> Super Admin </a>
                        </li>
                        <li class="col-md-3 nav-item dropdown">
                            <p class="text-primary p-0 m-0 text-end">
                                <small>Wedneshday, 21 February</small>
                            </p>
                            <p class="text-primary p-0 m-0 text-end">
                                <small>2024</small>
                            </p>
                        </li>
                    </ul>
                    <div class="d-flex row me-3">
                        <div class="col-md">
                            <div class="align-items-center text-center position-relative">
                                <a href="" style="text-decoration: none; color: black;">
                                    <i class="fs-5 fa-regular fa-bell"> <span class="position-absolute top-0 start-60 translate-middle badge rounded-circle bg-danger badge-smaller">1</span> </i>
                                    <p class="mb-0">
                                        <small>Notifications</small>
                                    </p>
                                </a>
                            </div>
                        </div>
                        <div class="vr p-0"></div>
                        <div class="col-md">
                            <div class="align-items-center text-center">
                                <a href="" style="text-decoration: none; color: black;">
                                    <i class="fs-5 fa-solid fa-swatchbook"></i>
                                    <p class="mb-0">
                                        <small>Theme</small>
                                    </p>
                                </a>
                            </div>
                        </div>
                        <div class="vr p-0"></div>
                        <div class="col-md">
                            <div class="align-items-center text-center">
                                <a href="" style="text-decoration: none; color: black;">
                                    <i class="fs-5 fa-solid fa-arrow-right-from-bracket"></i>
                                    <p class="mb-0">
                                        <small>Logout</small>
                                    </p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </nav>
        <div class="container-fluid" style="height: 100vh;">
            <div class="row h-100">
                <div class="col-md-1 p-0 d-flex align-items-stretch">
                    <div class="text-center w-100" style="border-top-right-radius: 25px; background-color: #3d91f7; color: white;">
                        <div class="sidenav">
                            <button class="dropdown-btn p-3">
                                <small>Others</small>
                                <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-container">
                                <a class="p-2" href=""><small>Link 1</small></a>
                            </div>
                            <button class="dropdown-btn p-3">
                                <small>Employee Information</small>
                                <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-container">
                                <a class="p-2" href=""><small>Link 1</small></a>
                            </div>
                            <button class="dropdown-btn p-3">
                                <small>Reports</small>
                                <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-container">
                                <a class="p-2" href=""><small>Link 1</small></a>
                            </div>
                            <button class="dropdown-btn p-3">
                                <small>Location Master</small>
                                <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-container">
                                <a class="p-2" href=""><small>Link 1</small></a>
                            </div>
                            <button class="dropdown-btn p-3">
                                <small>Pay Masters</small>
                                <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-container">
                                <a class="p-2" href=""><small>Link 1</small></a>
                            </div>
                            <button class="dropdown-btn p-3">
                                <small>Job Masters</small>
                                <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-container">
                                <a class="p-2" href=""><small>Link 1</small></a>
                            </div>
                            <button class="dropdown-btn p-3">
                                <small>Personal Masters</small>
                                <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-container">
                                <a class="p-2" href=""><small>Link 1</small></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-11 p-0 d-flex align-items-stretch">
                    <jsp:include page="addEmployee.jsp"></jsp:include>
                </div>
            </div>
        </div>
        
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/masterPage2.js"></script>
    </body>
</html>
