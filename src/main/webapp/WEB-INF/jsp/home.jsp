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
	<title>Home</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resources/images/icons/favicon.ico"/>
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />">
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
  
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/util.css" /> " >
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css" /> ">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/home-options.css" />">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-home-top">
                        <div class="wrap-home">
                            <div class="home-form-banner" style="background-image: url(resources/images/bg-01.jpg);">
                                    <a  href="<c:url value="/home"/>">		
                                        <span class="home-form-title-1">
                                                  E-Apti Test 
                                            </span>
                                    </a>
                                <div class="container-fluid">
                                <div class="row" style="position: absolute">
                                <div class="col-sm-4 col-md-3 sidebar" style="display:contents">
                                    <div class="mini-submenu">
                                        <button class="home-category-btn">
                                            <div class="hamburger-container">
                                                <div class="hamburder-bar1"></div>
                                                <div class="hamburder-bar2"></div>
                                                <div class="hamburder-bar3"></div>
                                            </div>
                                        </button>
                                    </div>
                                    <div class="list-group" style="display:none;margin-top:50px;">
                                        <span href="#" class="list-group-item active" style="border:none;background-color: #57b846">
                                            Modules
                                            <span class="pull-right" id="slide-submenu">
                                                <i class="fa fa-times"></i>
                                            </span>
                                        </span>
                                        <c:if test="${not empty moduleList}">

                                        <c:forEach var="q" items="${moduleList}">
                                          <a href="#" class="list-group-item" id="question/get/${q.id}" onclick="parent.homeModuleOptionClicked(this,'${q.id}')">
                                            <i class="fa fa-comment-o"></i> ${q.name}
                                           </a>
                                        </c:forEach>
                                      </c:if>
                                    </div>        
                                </div>
                               </div>
                              </div>
                            </div>
                              <a href="<c:url value="/login/logout" />" class="logout-float" title="Logout">
                                 <img src="<c:url value="/resources/images/icons/logout.ico" />" class="my-float"/>
                             </a>
                            <div class="container-fluid" style="height:80%">    
                                <div class="home-body" style="height:100%">
                                    <div class="row-fluid" style="height:100%">
                                            <div class="home-iframe-div">
                                                <iframe id="homeIframe" src="homeoptions"></iframe>
                                            </div>
                                        <!--
                                        <div class="col-sm-4 col-md-3">
                                            <div class="home-top-user-div">
                                                <h4>Top Users</h4>
                                                <div class="media" style="padding-top: 20px">
                                                        <div class="media-left">
                                                          <img src="https://www.w3schools.com/booTsTrap/img_avatar1.png" class="media-object" style="width:60px">
                                                        </div>
                                                        <div class="media-body" style="padding-left: 10px">
                                                          <h6 class="media-heading">Kavita Jeena</h6>
                                                          <p>empor incididunt ut labore et dolore magna aliqua.</p>
                                                        </div>
                                                </div>
                                                
                                                <div class="media" style="padding-top: 20px">
                                                        <div class="media-left">
                                                          <img src="https://www.w3schools.com/booTsTrap/img_avatar1.png" class="media-object" style="width:60px">
                                                        </div>
                                                        <div class="media-body" style="padding-left: 10px">
                                                          <h6 class="media-heading">Sana Shaikh</h6>
                                                          <p>empor incididunt ut labore et dolore magna aliqua.</p>
                                                        </div>
                                                </div>
                                            </div>
                                        </div>
                                        -->
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                </div>
        </div>
</body>
	
<!--===============================================================================================-->
<script src="<c:url value="/resources/vendor/jquery/jquery-3.2.1.min.js" /> "></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/vendor/animsition/js/animsition.min.js" />"></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/vendor/bootstrap/js/popper.js" />"></script>
<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/js/tplmain.js" />"></script>

</html>
