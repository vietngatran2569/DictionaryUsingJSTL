<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: vietngatran
  Date: 06/11/2019
  Time: 06:30
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Translate</title>
</head>
<body>
<%
    Map<String,String> dic=new HashMap<>();
%>
<%
    dic.put("hello","xin chao");
    dic.put("key","khoa");
    dic.put("book","sach");
    dic.put("computer","may tinh");

    String search=request.getParameter("inputText");
    String result=dic.get(search);
    if (result!=null){
        out.println ("word "+search);
        out.println("---------------");
        out.println("result "+result);
    }else {
        out.print("not found");
    }

%>
</body>
</html>
