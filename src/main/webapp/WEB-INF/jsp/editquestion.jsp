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
        <form:form modelAttribute="question">
            <div class="form-group col-sm-8" style="padding-left: inherit;">
                    <label for="moduleId">Module</label>
                    <form:select path="moduleId" onchange="parent.onModuleChange(this)" items="${moduleList}" class="form-control" id="module" itemLabel="name" itemValue="id">
                    </form:select>  
             </div>
            
        </form:form>
        <table class="table table-bordered table-responsive-md table-striped">
            <thead>
              <tr>
                <th>Question ID</th>
                <th> Question Text</th>
                <th>Edit</th>
                <th>Delete</th>
              </tr>
            </thead>
            <tbody>
              <c:if test="${empty questionList}">
                <tr>
                  <td colspan="8">No Questions to display</td>
                </tr>
              </c:if>
              <c:if test="${not empty questionList}">

                <c:forEach var="q" items="${questionList}">
                  <tr>
                      <td> ${q.id}</td>
                    <td>${q.question}</td>
                    <td><span class="table-remove"><button id="edit" onclick="parent.getQuestionForEdit('${q.id}')" type="button" class="btn btn-primary btn-rounded btn-sm my-0">Edit</button></span></td>
                    <td><span class="table-remove"><button type="button" onclick="parent.deleteQuestion('${q.id}')" class="btn btn-danger btn-rounded btn-sm my-0">Delete</button></span></td>
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
