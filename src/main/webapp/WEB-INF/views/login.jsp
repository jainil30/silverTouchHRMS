<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="include/metaInclude.jsp"></jsp:include>
    <title>HRMS Login</title>
    <jsp:include page="include/fontInclude.jsp"></jsp:include>
    <jsp:include page="include/cssInclude.jsp"></jsp:include>
    <jsp:include page="include/jsInclude.jsp"></jsp:include>
    <style>
        .center-container {
            display: flex;
            align-items: center;
            height: 100vh;
        }
        .center-card {
            width: 100%;
            max-width: 500px;
            margin: auto;
        }
    </style>
</head>
<body style="background-image: url('/images/loginback.jpg');">
	<div class="center-container" style="background-color: rgba(0, 0, 207, 0.7);">
        <div class="col-md-4 center-card">
            <div class="card shadow p-4" style="border-radius: 3%">
                <div class="card-body">
                	<div class="text-center mb-3">
		                <img src="${pageContext.request.contextPath}/images/Silvertouchlogo.png" width="200px" alt="">
		            </div>
                    <p class="text-md-center fw-bolder fs-5 mb-4" style="color:#264085;">Human Resource Management System</p>
                    <h2 class="text-md-center mb-4">HRMS Login</h2>
                    <form action="/authenticate" method="post">
                        <div class="mb-3">
							  <input type="text" class="form-control" id="username" name="username" placeholder="Username">
                        </div>
                        <div class="mb-3">
                            <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                        </div>
                        <div class="d-grid gap-2">
                        	<button type="submit" class="btn btn-primary">Login</button>
                        </div>
                        <p class="text-md-end mt-2 mb-4 fw-normal">Forgot Password?</p>
                        <div class="row">
                        	<div class="col-6 text-center">	
                        		<p class="fw-bolder" style="color:#8E8E8E;">Download Mobile App</p>
                        	</div>
                        	<div class="col-3 text-center">
                        		<img src="${pageContext.request.contextPath}/images/playstorelogo.png" height="30px" alt="">
                        	</div>
                        	<div class="col-3 text-center">
                        		<img src="${pageContext.request.contextPath}/images/appstorelogo.png" height="30px" alt="">
                        	</div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>