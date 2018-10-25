<%-- 
    Document   : result
    Created on : Oct 25, 2018, 2:53:18 AM
    Author     : Administrator
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" /> ">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/util.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/practice.css" /> ">
    </head>
    <body>
        <div class="container bootstrap snippet">
            <div class="panel-body inf-content">
                <div class="row">
                    <div class="col-md-4">
                        <img alt="" style="width:600px;" title="" class="img-circle img-thumbnail isTooltip" src="<c:url value="/resources/images/default-user-male.png" />" data-original-title="Usuario"> 
                        <ul title="Ratings" class="list-inline ratings text-center">
                            <li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
                        </ul>
                    </div>
                    <div class="col-md-6">
                        <strong>Test Result</strong><br>
                        <div class="table-responsive">
                        <table class="table table-condensed table-responsive table-user-information">
                            <tbody>
                                <tr>        
                                    <td>
                                        <strong>
                                            <span class="glyphicon glyphicon-asterisk text-primary"></span>
                                            Full Name                                             
                                        </strong>
                                    </td>
                                    <td class="text-primary">
                                        ${fullname}    
                                    </td>
                                </tr>
                                <tr>    
                                    <td>
                                        <strong>
                                            <span class="glyphicon glyphicon-user  text-primary"></span>    
                                            Email Address                                                
                                        </strong>
                                    </td>
                                    <td class="text-primary">
                                        ${result.username}     
                                    </td>
                                </tr>
                                <tr>        
                                    <td>
                                        <strong>
                                            <span class="glyphicon glyphicon-cloud text-primary"></span>  
                                            Test Started On                                                
                                        </strong>
                                    </td>
                                    <td class="text-primary">
                                        ${result.startDateAndTime}  
                                    </td>
                                </tr>

                                <tr>        
                                    <td>
                                        <strong>
                                            <span class="glyphicon glyphicon-bookmark text-primary"></span> 
                                            Test Finished at                                                
                                        </strong>
                                    </td>
                                    <td class="text-primary">
                                        ${result.finishDateAndTime}   
                                    </td>
                                </tr>


                                <tr>        
                                    <td>
                                        <strong>
                                            <span class="glyphicon glyphicon-eye-open text-primary"></span> 
                                            Question Attempted                                                
                                        </strong>
                                    </td>
                                    <td class="text-primary">
                                        ${result.questionAnswered}
                                    </td>
                                </tr>
                                <tr>        
                                    <td>
                                        <strong>
                                            <span class="glyphicon glyphicon-envelope text-primary"></span> 
                                            Correct Answers                                               
                                        </strong>
                                    </td>
                                    <td class="text-primary">
                                        ${result.correctlyAnswered}  
                                    </td>
                                </tr>
                                <tr>        
                                    <td>
                                        <strong>
                                            <span class="glyphicon glyphicon-calendar text-primary"></span>
                                            Wrong Answers                                                
                                        </strong>
                                    </td>
                                    <td class="text-primary">
                                        ${result.wronglyAnswered}
                                    </td>
                                </tr>
                                                                  
                            </tbody>
                        </table>
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
