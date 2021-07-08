<%--
  Created by IntelliJ IDEA.
  User: huawei
  Date: 2021/7/8
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    Object userSession = request.getSession().getAttribute("USER_SESSION");
    if(userSession==null){
        response.sendRedirect("/login.jsp");
    }

%>
<body>
<h1>主页</h1>
<a href="/servlet/logout">注销</a>
</body>
</html>
