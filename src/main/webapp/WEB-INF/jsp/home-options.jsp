<%-- 
    Document   : home-options
    Created on : Sep 25, 2018, 8:53:09 PM
    Author     : Admin
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/util.css" /> " >
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css" /> ">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/home-options.css" />">
</head>
<body>
       
    <div class="container-fluid container-main">
       
           <div class="col-sm-6 text-center">
                    <div class="col-content">
                        <button class="home-optn-btn col-btn-align" id="question/get" onclick="parent.homeOptionBtnClick(this)">
                            Practice
                        </button>
                    </div>
               <span>
                   Take a practice
               </span>
           </div>
            <div class="col-sm-6 text-center">
                    <div class="col-content">
                        <button class="home-optn-btn col-btn-align" id="question\getTestQuestion" onclick="parent.homeOptionBtnClick(this)">
                            Take a Test
                        </button>
                    </div>
               <span>
                   Take a practice
               </span>
           </div>
      
    </div>
</body>

<script src="<c:url value="/resources/vendor/jquery/jquery-3.2.1.min.js" /> "></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/vendor/animsition/js/animsition.min.js" />"></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/vendor/bootstrap/js/popper.js" />"></script>
<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
</html>
        