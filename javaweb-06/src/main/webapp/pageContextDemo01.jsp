<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--内置对象--%>
<%
    pageContext.setAttribute("name1","柚屿1号");
    request.setAttribute("name2","柚屿2号");
    session.setAttribute("name3","柚屿3号");
    application.setAttribute("name4","柚屿4号");
%>
<%--脚本片段中的代码，会被原封不动生成到.jsp.java中
    要求：这里面的代码：必须保证Java语法的正确性
--%>
<%
    //从pageContext取出,我们通过寻找的方式来
    pageContext.findAttribute("name1");
    pageContext.findAttribute("name2");
    pageContext.findAttribute("name3");
    pageContext.findAttribute("name4");
    pageContext.findAttribute("name5");

%>

<%--使用EL表达式输出${}--%>
</body>
</html>
