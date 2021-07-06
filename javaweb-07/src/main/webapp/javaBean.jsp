<%@ page import="com.pomeloisland.pojo.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

  <%
    // User user = new User();
    // user.setId();
    // user.setName();
    // user.setPwd();
  %>


  <jsp:useBean id="user" class="com.pomeloisland.pojo.User" scope="page"/>
  <jsp:setProperty name="user" property="id" value="1"/>
  <jsp:setProperty name="user" property="name" value="西安"/>
  <jsp:setProperty name="user" property="pwd" value="132546"/>
  <%--<%=user.getId()%>--%>
  ID:<jsp:getProperty name="user" property="id"/>
  姓名:<jsp:getProperty name="user" property="name"/>
  密码:<jsp:getProperty name="user" property="pwd"/>



</body>
</html>
