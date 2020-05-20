<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage = "error.jsp" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>에러 연습</title>
</head>
<body>
 <%
  int a, b, c;
  a =10;
  b=0;
  c =a/b;
  
  out.println(c);
 %>
 <%=c %>
</body>
</html>