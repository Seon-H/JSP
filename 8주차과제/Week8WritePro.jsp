<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>글쓰기 확인</title>
 <style>
 table {border : 1px solid gray ;
         border-collapse : collapse;}
  td{border :1px solid gray; width :150px; }
 </style>
</head>
<body>
 <h1>글쓰기 정보</h1>
 <hr>
 
 
 <jsp:useBean id ="w" class="Week8_1.WriteForm"/>
<jsp:setProperty property="*" name="w"/>

 <table>
   <tr>
   <td>이름</td>
   <td><jsp:getProperty property="name" name="w"/></td>
   </tr>
   
   <tr>
   <td>제목</td>
   <td><jsp:getProperty property="title" name="w"/></td>
   </tr>
   
   <tr>
   <td>이메일</td>
   <td><jsp:getProperty property="email" name="w"/></td>
   </tr>
   
   <tr>
   <td>내용</td>
   <td><jsp:getProperty property="content" name="w"/></td>
   </tr>
   
   <tr>
   <td>비밀번호</td>
   <td>
    	<jsp:getProperty property="pw" name="w"/>
   </td>
   </tr>
   
 </table>
</body>
</html>

</body>
</html>