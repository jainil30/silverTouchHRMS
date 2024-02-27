<div class="w-100" style="border-top-left-radius: 25px; border-top-right-radius: 25px; background-color: #e6e7f4;">
    <div class="mt-5 ms-5" style="height: 90px;">
        <div class="row align-items-center">
            <div class="col-md-10 p-0">
                <h3 class="mb-0">Add New Employee</h3>
                <div class="mt-2">
                    <span>DashBoard</span> <span><i class="px-2 fa-solid fa-angle-right"></i></span> <span>Employee Information</span> <span><i class="px-2 fa-solid fa-angle-right"></i></span>
                    <span class="text-muted">Add New Employee</span>
                </div>
            </div>
        </div>
    </div>
    <hr class="mx-4" />
    <div class="mx-4">
        <div class="card mb-4" style="border-radius: 20px;">
            <div class="card-body shadow" style="border-radius: 20px;">
                <div class="row">
                    <div class="col-md-auto">
                        <div class="custom-sidebar">
                            <ul>
                                <li class="custom-main-menu active">
                                    <a href="#" class="fs-5" style="font-weight: 500;">Employee Information <i class="fas fa-minus" style="color: #3d91f7;"></i></a>
                                    <ul class="custom-submenu">
                                        <li class="active" id="subMenuEmployee">
                                            <a href="">Employee <i class="fas fa-chevron-right"></i></a>
                                        </li>
                                        <li id="subMenuPersonal">
                                            <a href="">Personal <i class="fas fa-chevron-right"></i></a>
                                        </li>
                                        <li id="subMenuContact">
                                            <a href="">Contact <i class="fas fa-chevron-right"></i></a>
                                        </li>
                                        <li id="subMenuFamily">
                                            <a href="">Family <i class="fas fa-chevron-right"></i></a>
                                        </li>
                                        <li id="subMenuEmergency">
                                            <a href="">Emergency <i class="fas fa-chevron-right"></i></a>
                                        </li>
                                        <li id="subMenuNominee">
                                            <a href="">Nominee <i class="fas fa-chevron-right"></i></a>
                                        </li>
                                        <li id="subMenuHealth">
                                            <a href="">Health <i class="fas fa-chevron-right"></i></a>
                                        </li>
                                        <li id="subMenuPhotograph">
                                            <a href="">Photograph <i class="fas fa-chevron-right"></i></a>
                                        </li>
                                        <li id="subMenuAttachments">
                                            <a href="">Attachments <i class="fas fa-chevron-right"></i></a>
                                        </li>
                                    </ul>
                                </li>
                                <hr class="mx-3" />
                                <li class="custom-main-menu">
                                    <a href="#" class="fs-5" style="font-weight: 500;">Employment <i class="fas fa-plus" style="color: #3d91f7;"></i></a>
                                    <ul class="custom-submenu">
                                        <li>
                                            <a href="#">Allowance Declaration <i class="fas fa-chevron-right"></i></a>
                                        </li>
                                        <li id="subMenuJob">
                                            <a href="#">Job <i class="fas fa-chevron-right"></i></a>
                                        </li>
                                        <li>
                                            <a href="#">Reporting Officer <i class="fas fa-chevron-right"></i></a>
                                        </li>
                                        <li>
                                            <a href="#">Salary <i class="fas fa-chevron-right"></i></a>
                                        </li>
                                        <li>
                                            <a href="#">Previous Employment <i class="fas fa-chevron-right"></i></a>
                                        </li>
                                    </ul>
                                </li>
                                <hr class="mx-3" />
                                <li class="custom-main-menu">
                                    <a href="#" class="fs-5" style="font-weight: 500;">Qualification <i class="fas fa-plus" style="color: #3d91f7;"></i></a>
                                    <ul class="custom-submenu">
                                        <li>
                                            <a href="#">Education Qualification <i class="fas fa-chevron-right"></i></a>
                                        </li>
                                    </ul>
                                </li>
                                <hr class="mx-3" />
                            </ul>
                        </div>
                    </div>
                    <div class="col-md" id="content-area">
                        <jsp:include page="sub_menu_employee.jsp"></jsp:include>
                        <jsp:include page="sub_menu_personal.jsp"></jsp:include>
                        <jsp:include page="sub_menu_contact.jsp"></jsp:include>
                        <jsp:include page="sub_menu_family.jsp"></jsp:include>
                        <jsp:include page="sub_menu_emergency.jsp"></jsp:include>
                        <jsp:include page="sub_menu_nominee.jsp"></jsp:include>
                        <jsp:include page="sub_menu_health.jsp"></jsp:include>
                        <jsp:include page="sub_menu_photograph.jsp"></jsp:include>
                        <jsp:include page="sub_menu_attachments.jsp"></jsp:include>
                        <jsp:include page="sub_menu_job.jsp"></jsp:include>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/addEmployee.js"></script>
