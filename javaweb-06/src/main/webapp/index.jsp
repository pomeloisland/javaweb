<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--jsp表达式--%>
<%= new Date()%>

<hr>

<%--jsp脚本片段--%>
<%
    int sum = 0;
    for (int i = 0; i <= 100; i++) {
        sum += i;
    }
    out.println("<h1>Sum="+sum+"<h1>");
%>

<%
    int x = 10;
    out.println(x);
%>
<p>这是一个jsp文档</p>
<%
    int y = 2;
    out.println(y);
%>

<hr>
<%--在代码中嵌入HTML元素--%>
<%
    for (int i = 0; i < 5; i++) {
%>
<h1>Hello <%=i%></h1>
<%
    }
%>

<hr>

<%!
    static {
        System.out.println("Loading Servlet!");
    }

    private int globalVar = 0;

    public void test(){
        System.out.println("进入了方法test");
    }
%>
</body>
</html>
