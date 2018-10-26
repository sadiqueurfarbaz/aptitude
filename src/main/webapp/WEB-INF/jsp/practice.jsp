<%-- 
    Document   : practice
    Created on : Oct 11, 2018, 10:13:42 PM
    Author     : Admin
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" /> ">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/util.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/practice.css" /> ">
</head>
<body>
       
    <div class="container-fluid practice-container-main">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="jumbotron lead">
                            ${question.question}
                        </div>
                    </div>
                    <div>
                        <div class="row">
                            <div class="col-sm-6">
                                <button class="question-optn-btn" onclick="parent.checkAnswer('${question.correctAnswer}','${question.option1}',this)">
					${question.option1}
				</button>
                            </div>
                            <div class="col-sm-6">
                                <button class="question-optn-btn" onclick="parent.checkAnswer('${question.correctAnswer}','${question.option2}',this)">
					${question.option2}
				</button>
                            </div>
                                 
                        </div>
                        
                         <div class="row">
                            <div class="col-sm-6">
                                <button class="question-optn-btn" onclick="parent.checkAnswer('${question.correctAnswer}','${question.option3}',this)">
					${question.option3}
				</button>
                            </div>
                            <div class="col-sm-6">
                                <button class="question-optn-btn" onclick="parent.checkAnswer('${question.correctAnswer}','${question.option4}',this)">
					${question.option4}
				</button>
                            </div>
                                 
                        </div>
                    </div>
                </div>
            </div>
    </div>
</body>

<!--===============================================================================================-->
<script src="<c:url value="/resources/vendor/jquery/jquery-3.2.1.min.js" />" ></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/vendor/animsition/js/animsition.min.js" />" ></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/vendor/bootstrap/js/popper.js" />"></script>
<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
</html>
        
