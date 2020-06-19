<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.sql.*"%>
    
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>DB에 로그인 데이터 변경</title>
</head>
<body>
 <h2>DB에 로그인 데이터 변경</h2>
 <form action ="updatePro2.jsp" method ="post">
  ID: <input type ="text" name ="id" value="<%=id%>"><br>
  SUBJECT : <input type ="text" name = "subject"><br>
  CONTENT : <input type ="text" name = "content"><br>
  WRITER : <input type ="text" name = "writer"><br>
 
 <input type ="submit" value ="변경">
 <input type="button" value="삭제" onclick="location.href='delete2.jsp?id=<%=id%>'">
 <input type ="reset" value ="재설정">
 </form>
</body>
</html>