<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="header.jsp" %>

        <h2><spring:message code="podaci"/></h2>
        <table>
        <tr>
        <td><spring:message code="ime"/></td>
        <td>${ime}</td>
        </tr>
        <tr>
        <td><spring:message code="brojGostiju"/></td>
        <td>${brojGostiju}</td>
        </tr>
        <tr>
        <td><spring:message code="brojTelefona"/> </td>
        <td>${brojTelefona}</td>
        </tr>
        </table>      
<%@ include file="footer.jsp" %>