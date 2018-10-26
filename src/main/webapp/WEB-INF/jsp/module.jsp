<%-- 
    Document   : question
    Created on : Oct 21, 2018, 1:26:56 PM
    Author     : Admin
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" /> ">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/util.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/practice.css" /> ">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/perfect-scrollbar/perfect-scrollbar.css" /> ">
</head>
<body >
   <div id="scroller">
    <div id="form" class="container-fluid">
        <form:form class="validate-form" id="addNewModule" modelAttribute="module" action="${pageContext.request.contextPath}/module/add">
           
               <div class="form-group col-sm-6">
                   <label for="name">Module Name </label>
                   <form:input type="text" path="name" class="form-control" id="Module Name"/>
               </div>
            </div>
               
            <div class="form-group text-left" style="margin-left: 30px;">
                <input type="submit" class="btn btn-success"/>
            </div>
        </form:form>
    </div>
</body>
        
        <script src="<c:url value="/resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js" />" ></script>
	<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="<c:url value="/resources/js/utils.js" />" ></script>
</html>
