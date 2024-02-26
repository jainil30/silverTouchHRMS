<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../include/metaInclude.jsp"></jsp:include>
        <title>HRMS Admin Dashboard</title>
        <jsp:include page="../include/fontInclude.jsp"></jsp:include>
        <jsp:include page="../include/cssInclude.jsp"></jsp:include>
        <jsp:include page="../include/jsInclude.jsp"></jsp:include>
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
        <style>
            .submenu {
                display: none;
            }
        </style>
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
                        <style>
                            .sidenav {
                                overflow-x: hidden;
                            }
                            .sidenav a,
                            .dropdown-btn {
                                text-decoration: none;
                                display: block;
                                border: none;
                                background: none;
                                width: 100%;
                                text-align: left;
                                cursor: pointer;
                                outline: none;
                                color: white;
                            }
                            .main {
                                margin-left: 200px;
                                font-size: 20px;
                                padding: 0px 10px;
                            }
                            .dropdown-container {
                                display: none;
                                padding-left: 8px;
                            }
                            .fa-caret-down {
                                float: right;
                                padding-right: 8px;
                            }
                            @media screen and (max-height: 450px) {
                                .sidenav {
                                    padding-top: 15px;
                                }
                                .sidenav a {
                                    font-size: 18px;
                                }
                            }
                        </style>
                        <script>
                            var dropdown = document.getElementsByClassName("dropdown-btn");
                            var i;

                            for (i = 0; i < dropdown.length; i++) {
                                dropdown[i].addEventListener("click", function () {
                                    this.classList.toggle("active");
                                    var dropdownContent = this.nextElementSibling;
                                    if (dropdownContent.style.display === "block") {
                                        dropdownContent.style.display = "none";
                                    } else {
                                        dropdownContent.style.display = "block";
                                    }
                                });
                            }
                        </script>
                    </div>
                </div>
                <div class="col-md-9 p-0 d-flex align-items-stretch">
                    <jsp:include page="employee/information/employeeInformation.jsp"></jsp:include>
                </div>
                <div class="col-md-2 p-0 d-flex align-items-stretch">
                    <div class="container-fluid text-center w-100">
                        <div class="mt-5">
                            <div class="row">
                                <div class="col-md text-center">
                                    <img src="images/logo.png" class="rounded-circle" alt="Profile Image" width="150px" height="150px" />
                                    <h2 class="mt-3">User Name</h2>
                                    <div class="row align-items-center justify-content-center">
									    <div class="col-md-auto text-center p-0">
									        <a class="text-primary" href="" style="text-decoration: none;">My Profile</a>
									    </div>
									    <div class="col-md-1">
									        <div class="vr"></div>
									    </div>
									    <div class="col-md-auto text-center p-0">
									        <a class="text-primary" href="" style="text-decoration: none;">My Team</a>
									    </div>
									</div>

                                </div>
                            </div>
                            <hr class="mx-2" />
                            <style>
                            	.smaller-font td {
								    font-size: 0.8rem;
								}
                            </style>
                            <div class="row">
							    <div class="col-md text-center">
							        <table class="table table-borderless text-start smaller-font d-inline-block"> <!-- Added d-inline-block class here -->
							            <tbody>
							                <tr>
							                    <td>EmployeeID:</td>
							                    <td>124fde</td>
							                </tr>
							                <tr>
							                    <td>Department:</td>
							                    <td>Hr</td>
							                </tr>
							                <tr>
							                    <td>Location:</td>
							                    <td>Ahmedabad</td>
							                </tr>
							                <tr>
							                    <td>Reporting:</td>
							                    <td>-</td>
							                </tr>
							            </tbody>
							        </table>
							    </div>
							</div>
					        <hr class="mx-2" />



                            <div class="row">
                                <div class="col-md">
                                    <table class="table table-borderless text-start smaller-font">
                                        <tbody>
                                            <tr>
                                                <td>Last Login:</td>
                                                <td>22-02-2024</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="d-grid gap-2 ms-4">
                                        <a href="" class="btn btn-primary d-flex align-items-center text-start shadow"> <i class="me-4 fs-5 fa-solid fa-clipboard-list"></i> <span>Apply for</span> </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            document.querySelectorAll(".dropdown-item").forEach((item) => {
                item.addEventListener("click", (event) => {
                    const dropdownToggle = item.closest(".dropdown").querySelector(".dropdown-toggle");
                    dropdownToggle.innerText = event.target.dataset.value;
                });
            });
        </script>
    </body>
</html>
