<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--定制错误页面--%>
<%@ page errorPage="error/404.jsp" %>
<%--显式的声明这是一个错误的页面--%>
<%@ page isELIgnored="true" %>
<%@ page pageEncoding="utf-8" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="common/header.jsp"%>
<h1>网页主体</h1>
<%@ include file="common/footer.jsp"%>
<%
    int x = 1/1;
%>
</body>
</html>
