<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <body>
        <h1>Ne mozete na ovu stranicu !</h1>

        <c:choose>
            <c:when test="${empty username}">
                <h2>Login</h2>
            </c:when>
            <c:otherwise>
                <h2>User ${username} <br/> nemate pristup!</h2>
            </c:otherwise>
        </c:choose>
    </body>
</html>