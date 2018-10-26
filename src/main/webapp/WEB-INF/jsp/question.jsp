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
        <form:form class="validate-form" id="addquestionform" modelAttribute="question" action="${pageContext.request.contextPath}/question/add">
            <div class="form-group col-sm-8" style="padding-left: inherit;">
                <label for="moduleId">Module</label>
                <form:select path="moduleId" items="${moduleList}" class="form-control" id="module" itemLabel="name" itemValue="id">
                </form:select>  
            </div>
            
            <div class="form-group">
                <label for="question">Question Text</label>
                <form:textarea rows="5" path="question" class="form-control" id="queston"/>
            </div>
            
            <div class="row ">
               <div class="form-group col-sm-6 validate-input m-b-26" data-validate="Option 1">
                   <label>Option 1</label>
                   <form:input type="text" path="option1" class="form-control validate-input" id="option1"/>
                   <span class="focus-input100"></span>
               </div>
               <div class="form-group col-sm-6">
                   <label for="option2">Option 2</label>
                   <form:input type="text" path="option2" class="form-control" id="option2"/>
               </div>
            </div>
            
            <div class="row ">
               <div class="form-group col-sm-6">
                   <label for="option3">Option 3</label>
                   <form:input type="text" path="option3" class="form-control" id="option3"/>
               </div>
               <div class="form-group col-sm-6">
                   <label for="option4">Option 4</label>
                   <form:input type="text" path="option4" class="form-control" id="option4"/>
               </div>
            </div>
               
            
            <div class="form-group">
                <label for="correctAnswer">Correct Answer</label>
                <form:input type="text" path="correctAnswer" class="form-control" id="correctAnswer"/>
            </div>
               
            <div class="form-group text-right">
                <input type="submit" class="btn btn-success"/>
            </div>
        </form:form>
    </div>
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
