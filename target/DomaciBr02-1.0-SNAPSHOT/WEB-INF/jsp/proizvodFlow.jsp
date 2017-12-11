<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/header.css" />
        <title>Flow zadatak</title>
    </head>
    <body>
        <div class="text">
            <img src="<c:url value="/img/me4.jpg"/>" alt=""/>
            <form method="post" action="${flowExecutionUrl}">
                <input type="hidden" name="_eventId" value="performAction"/>
                <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                Koja je hrana u pitanju na slici iznad:<br>
                <label class="radio-inline"><input type="radio" name="proizvod" value="pohovanaLignja"> Pohovana lignja<br></label>
                <label class="radio-inline"><input type="radio" name="proizvod" value="meso"> Meso<br></label>
                <label class="radio-inline"><input type="radio" name="proizvod" value="pohovaniKackavalj"> Pohovani kackavalj</label><br>
                <input type="submit" class="btn btn-default" value="Probaj" />
            </form>
            <a class="active" href="http://localhost:8084/DomaciBr02/hello">Home</a>
        </div>
    </body>
</html>