<%--
  Created by IntelliJ IDEA.
  User: zly11
  Date: 2018/4/26
  Time: 12:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <fieldset>
        <h5>全部product</h5>
        <tr>
            <c:forEach items="${producrMap}" var="product">
                <td>${product.value.id}</td>
                <td>${product.value.name}</td>
                <td>${product.value.price}</td>
                <td>${product.value.errorDate}</td>

                <br>
            </c:forEach>
        </tr>
    </fieldset>
</body>
</html>
