<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage = "true"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>에러 페이지</title>
</head>
<body>
 요청하신 페이지에서 문제가 발생했습니다.<br>
 빠른 시일내에 문제를 해결하겠습니다.<br>
 <hr>
 <img src = "http://localhost:8080/studyJSP/6주차/underConstruction.jpg"
  width = "600" height = "300"/><br>
  예외타입 : <%=exception.getClass().getName() %><br>
  에러 메세지 : <%=exception.getMessage() %>
</body>
</html>