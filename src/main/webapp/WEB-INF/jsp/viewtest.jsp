<%-- 
    Document   : viewusers
    Created on : Oct 24, 2018, 3:37:32 AM
    Author     : Administrator
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" /> ">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/util.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/practice.css" /> ">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/perfect-scrollbar/perfect-scrollbar.css" /> ">
    </head>
    <body>
        <div id="scroller">
            <div id="form" class="container-fluid">
                <p style="font-size:20px">
                    All Tests
                </p>
                <table class="table table-bordered table-responsive-md table-striped">
                    <thead>
                      <tr>
                        <th>Username</th>
                        <th> Fullname</th>
                        <th>Start time</th>
                        <th>Finish time</th>
                        <th>Question Attempted</th>
                        <th>Correct Answers</th>
                        <th>Wrong Answers</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:if test="${empty tests}">
                        <tr>
                          <td colspan="8">No Tests to display</td>
                        </tr>
                      </c:if>
                      <c:if test="${not empty tests}">

                        <c:forEach var="q" items="${tests}">
                          <tr>
                            <td> ${q.username}</td>
                            <td>${q.fullname}</td>
                            <td> ${q.startTime}</td>
                            <td> ${q.finishTime}</td>
                            <td> ${q.questionAttempted}</td>
                            <td> ${q.correctAnswer}</td>
                            <td> ${q.wrongAnswer}</td>
                          </tr>
                        </c:forEach>
                      </c:if>
                    </tbody>
                </table>
            </div>
   </div> 
    </body>
            
        <script src="<c:url value="/resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js" />" ></script>
        <script src="<c:url value="/resources/vendor/jquery/jquery-3.2.1.min.js" />" ></script>
<!--===============================================================================================-->
        <script src="<c:url value="/resources/vendor/animsition/js/animsition.min.js" />"></script>
<!--===============================================================================================-->
        <script src="<c:url value="/resources/vendor/bootstrap/js/popper.js" />"></script>
        <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js" /> " ></script>
        <script src="<c:url value="/resources/js/utils.js" />" ></script>
</html>
