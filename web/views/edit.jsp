<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mag
  Date: 05.07.2019
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit selected User</title>
</head>
<body>
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Hello! Im edit.jsp page.</h1>
</div>

<div class="w3-container w3-padding">
    Hello!

    <div class="w3-container w3-padding">
        <form method="post" action="/edit" class="w3-selection w3-light-grey w3-padding">
            <label>Name:
                <input type="text" name="name" <%--readonly="readonly"--%> value="<c:out value="${user.userId}"/>" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
            </label>

            <label>Password:
                <input type="password" name="pass" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
            </label>

            <label>Role:
                <select name="roles" value="<c:out value="${user.type}"/>" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%">
                    <c:forEach items="${roles}" var="role">
                        <option value="${role.id}">${role.type}</option>
                    </c:forEach>
                </select><br />
            </label>
            <button type="submit" class="w3-btn w3-green w3-round-large w3-margin-bottom">Submit</button>
        </form>

        <%
            if (request.getAttribute("userName") != null)
                out.println("<div class=\"w3-panel w3-green w3-display-container w3-card-4 w3-round\">\n" +
                        "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                        "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-green w3-border w3-border-green w3-hover-border-grey\">×</span>\n" +
                        "   <h5>User '" + request.getAttribute("userName") + "' added!</h5>\n" +
                        "</div>");
        %>
    </div>
</div>

<div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
    <button class="w3-btn w3-round-large" onclick="location.href='/'">Back to main</button>
</div>
</body>
</html>
