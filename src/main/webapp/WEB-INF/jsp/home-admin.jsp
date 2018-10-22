<%-- 
    Document   : home
    Created on : Sep 23, 2018, 8:43:46 PM
    Author     : Admin
--%>

<%-- 
    Document   : login
    Created on : Sep 21, 2018, 8:45:13 PM
    Author     : Admin
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Home  ${message}</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resources/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
    <div class="limiter">
		<div class="container-home-top">
                        <div class="wrap-home">
                            <div class="home-form-banner" style="background-image: url(resources/images/bg-01.jpg);">
					<span class="home-form-title-1">
						Home Page
					</span>
                                
                            </div>
                            <div class="container-fluid">    
                                <div class="home-body">
                                    <div class="row home-row-eq-height shadow-lg">
                                        <div class="col-sm-8 col-md-9">
                                            <div id="iframeDiv" class="home-iframe-div">
                                                <iframe id="homeIframe" src=""></iframe>
                                            </div>
                                        </div>

                                        <div class="col-sm-4 col-md-3">
                                            <div class="admin-vertical-menu">
                                                <a href="#" class="admin-vertical-menu-title">Home</a>
                                                <a href="#" id="question" onclick="homeOptionBtnClick(this)">Add Question</a>
                                                <a href="#" id="question\edit" onclick="homeOptionBtnClick(this)"">Edit Question</a>
                                                <a href="#">Delete</a>
                                                <a href="#">View Users</a>
                                                <a href="#">View Test stats</a>
                                                <a href="#">Add new Module</a>
                                                <a href="#">Edit module</a>
                                                
                                              </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
        </div>
</body>
<!--===============================================================================================-->
	<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="resources/js/tplmain.js"></script>
        <script src="resources/js/utils.js"></script>
        <script src="resources/js/admin.js"></script>

</html>
