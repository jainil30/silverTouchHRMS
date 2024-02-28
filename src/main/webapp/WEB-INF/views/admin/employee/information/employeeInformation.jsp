<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="w-100" style="border-top-left-radius: 25px; border-top-right-radius: 25px; background-color: #e6e7f4;">
    <div class="mt-5 ms-5" style="height: 90px;">
        <div class="row align-items-center">
		    <div class="col-md-auto p-0">
		        <h3 class="mb-0">Employee Information</h3>
		        <div class="mt-2">
		            <span>DashBoard</span>
		            <span>
		                <i class="px-2 fa-solid fa-angle-right"></i>
		            </span>
		            <span class="text-muted">Employee Information</span>
		        </div>
		    </div>
		    <div class="col-md-auto ms-auto text-end me-3">
		        <a href="/admin/addEmployee" class="btn btn-primary"><i class="fa-solid fa-plus"></i> Add Employee</a>
		    </div>
		</div>
    </div>
    <hr class="mx-4" />
    <div class="mx-4">
        <table id="basic" class="table custom_table" style="width: 100%; border-collapse: separate; border-spacing: 0 15px;">
            <thead>
                <tr>
                    <th>Employee</th>
                    <th>Code</th>
                    <th>Designation</th>
                    <th>Department</th>
                    <th>PAN no</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="emp" items="${employees}">
                    <tr>
                        <td>${emp.employeeFirstName}</td>
                        <td>${emp.employeeCodePrefix} / ${emp.employeeCodeSuffix} </td>
                        <td>${emp.employeeLastName} </td>
                        <td>${emp.employeeDepartment}</td>
                        <td>${emp.employeePanNumber}</td>
                        <td><i class="fs-3 me-2 fa-solid fa-circle-info"></i><i class="fs-3 fa-solid fa-circle-info"></i></td>
                    </tr>
                </c:forEach>

            </tbody>
        </table>

        <script type="text/javascript">
            $(document).ready(function () {
                var table = $("#basic").DataTable({});
            });
        </script>

        <style>
            tbody tr td:nth-child(1) {
                border-radius: 10px 0 0 10px;
            }

            tbody tr td:nth-child(6) {
                border-radius: 0 10px 10px 0;
            }

            #basic_wrapper tbody tr {
                background-color: #fff;
                box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
                padding: 5px;
                align-items: center;
            }

            #basic_wrapper tbody tr:hover {
                box-shadow: 0 0 15px rgba(0, 0, 0, 0.4);
                padding: 10px;
            }

            #basic_wrapper thead th {
                background-color: #3d91f9;
                color: white;
            }

            #basic_wrapper thead th:nth-child(1) {
                border-radius: 10px 0 0 0;
            }

            #basic_wrapper thead th:nth-child(6) {
                border-radius: 0 10px 0 0;
            }

            #basic_wrapper tbody tr td {
                vertical-align: middle;
                padding: 15px;
            }
            
            
        </style>
        <script>
	        $(document).ready(function() {
	            $('#basic_wrapper').addClass('pb-5');
	        });
        </script>
    </div>
</div>
