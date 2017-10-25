<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="header.jsp" %>

    <h2><spring:message code="unesite"/></h2>
        <form:form method="POST" action="/DomaciBr02/addRezervacija">
            <table>
                <tr>
                    <td><form:label path="ime"><spring:message code="ime"/></form:label></td>
                    <td><form:input path="ime" /></td>
                </tr>
                <tr>
                    <td><form:label path="brojGostiju"><spring:message code="brojGostiju"/></form:label></td>
                    <td><form:input path="brojGostiju" /></td>
                </tr>
                <tr>
                    <td><form:label path="brojTelefona"><spring:message code="brojTelefona"/></form:label></td>
                    <td><form:input path="brojTelefona" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                    <input type="submit" value="Pošalji"/>
                </td>
                </tr>
            </table>
        </form:form>
  
<%@ include file="footer.jsp" %>
