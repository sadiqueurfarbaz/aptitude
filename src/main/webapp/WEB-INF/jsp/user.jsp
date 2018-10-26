<%-- 
    Document   : login
    Created on : Sep 21, 2018, 8:45:13 PM
    Author     : Admin
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Register</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
<link rel="icon" type="image/png" href="<c:url value="/resources/images/icons/favicon.ico" />" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css" />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/animate/animate.css" />">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/css-hamburgers/hamburgers.min.css" />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/animsition/css/animsition.min.css" />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/select2/select2.min.css" />">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/daterangepicker/daterangepicker.css" />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/util.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css" />">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
                            <div class="login100-form-title" style="background-image: url(<c:url value="/resources/images/bg-01.jpg)" />">
					<span class="login100-form-title-1">
						Register here
					</span>
				</div>

                                    <form:form class="login100-form validate-form" id="loginForm" modelAttribute="user" action="${pageContext.request.contextPath}/login/newuser" >
					<div class="wrap-input100 validate-input m-b-26" data-validate="First name">
						<span class="label-input100">First Name</span>
						<form:input path="firstname" class="input100" type="text" name="firstname" placeholder="Enter first name"/>
						<span class="focus-input100"></span>
					</div>
                                        
                                        <div class="wrap-input100 validate-input m-b-26" data-validate="Last name">
						<span class="label-input100">Last Name</span>
						<form:input path="lastname" class="input100" type="text" name="lastname" placeholder="Enter last name"/>
						<span class="focus-input100"></span>
					</div>
                                        
                                        <div class="wrap-input100 validate-input m-b-26" data-validate="Mobile number is invalid">
						<span class="label-input100">Mobile</span>
						<form:input path="mobile" class="input100" type="text" name="mobile" placeholder="Enter Mobile number"/>
						<span class="focus-input100"></span>
					</div>
                                        
                                        <div class="wrap-input100 validate-input m-b-26" data-validate="User name">
						<span class="label-input100">Username</span>
						<form:input path="username" class="input100" type="email" name="username" placeholder="Enter user name"/>
						<span class="focus-input100"></span>
					</div>
                                        
                                        
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<form:input path="password" class="input100" type="password" name="password" placeholder="Enter password"/>
						<span class="focus-input100"></span>
					</div>
                                              
					

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Register
						</button>
					</div>
                                        
				</form:form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
<script src="<c:url value="/resources/vendor/jquery/jquery-3.2.1.min.js" />" ></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/vendor/animsition/js/animsition.min.js" />" ></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/vendor/bootstrap/js/popper.js" />"></script>
<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/vendor/select2/select2.min.js" />"></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/vendor/daterangepicker/moment.min.js" />" ></script>
<script src="<c:url value="/resources/vendor/daterangepicker/daterangepicker.js" />"></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/vendor/countdowntime/countdowntime.js" />" ></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/js/tplmain.js" />" ></script>

</body>
</html>
