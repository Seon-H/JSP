<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>NullPointerException을 발생시키는 페이지</title>
</head>
<body>
 <%
   String msg = null;
   boolean ishello = msg.equals("Hello, world!");//msg가 null이므로  NullPointerException을 발생시킨다.
   
 %>
</body>
</html>