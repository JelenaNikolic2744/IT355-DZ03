<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><spring:message code="naslov"/></title>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
       
        <nav class="navbar">
            <div class="container-fluid">
               
                    <ul class="nav">
                        <li>
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <a href="http://localhost:8084/DomaciBr02/login"> <spring:message code="login"/></a>
                        </c:if>
                        </li>
                        <li>
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <a href="http://localhost:8084/DomaciBr02/sajt"><spring:message code="plus"/></a>
                        </c:if>
                        </li>
                        <li>
                        
                            <sec:authorize access="hasRole('ROLE_USER')">
                                <a href="http://localhost:8084/DomaciBr02/rezervacija" style="text-align: center"><spring:message code="rez"/></a>
                            </sec:authorize>
                        </li>
                        <li>
                            
                       <c:if test="${pageContext.request.userPrincipal.name != null}">
                                                     <c:url value="/j_spring_security_logout" var="logoutUrl" />
                                                        <form action="${logoutUrl}" method="post" id="logoutForm">
                                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                                        </form>
                                                        <script>
                                                            function formSubmit() {
                                                                document.getElementById("logoutForm").submit();
                                                            }
                                                        </script>
                                                        Username -
                                                        ${pageContext.request.userPrincipal.name} | <a href="javascript:formSubmit()"> <spring:message code="logout"/></a>
                                                </c:if>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>