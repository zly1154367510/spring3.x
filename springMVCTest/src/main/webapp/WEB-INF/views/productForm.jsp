<%--
  Created by IntelliJ IDEA.
  User: zly11
  Date: 2018/4/26
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--引入数据绑定表单元素-->

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--<form action="product_save" method="post">--%>
        <%--<fieldset>--%>
            <%--<label>name:</label>--%>
            <%--<input type="text" name="name" id="name">--%>
            <%--<label>price:</label>--%>
            <%--<input type="text" name="price" id="price">--%>
            <%--<input type="submit" value="add Product">--%>
        <%--</fieldset>--%>
    <%--</form>--%>
    <fieldset>
        <form:form commandName="product" action="product_save" method="post" enctype="multipart/form-data">
            <p>
                <form:errors path="name" />
            </p>
            <p>
                name:<form:input path="name" id="name"/>
            </p>
            <p>
                <form:errors path="price" />
            </p>
            <p>
                price:<form:input path="price" id="price"/>
            </p>
            <p>
               <label for="categorys">category:</label>
               <form:select id="categorys" path="category.id" items="${categorys}" itemLabel="name" itemValue="id" />
            </p>
            <p>
                <form:errors path="errorDate" />
            </p>
            <p>
                date:<form:input path="errorDate"/>
            </p>
            <p>
                images:<input type="file" name="images[0]">
            </p>
            <p>
                <input type="submit" value="Add">
            </p>


        </form:form>

    </fieldset>
</body>
</html>
