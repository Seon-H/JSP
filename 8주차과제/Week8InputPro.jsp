<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">

 <title>사용자 입력 확인</title>
 <style>
  table {border : 1px solid gray ;
         border-collapse : collapse;}
  td{border :1px solid gray; width :150px; }
 </style>
</head>
<body>
<h2>학생정보</h2>
<hr>
<jsp:useBean id ="i" class="Week8.InputForm"/>
<jsp:setProperty property="*" name="i"/>

 <table>
   <tr>
   <td>학번</td>
   <td><jsp:getProperty property="num" name="i"/></td>
   </tr>
   
   <tr>
   <td>이름</td>
   <td><jsp:getProperty property="name" name="i"/></td>
   </tr>
   
   <tr>
   <td>학년</td>
   <td><jsp:getProperty property="grade" name="i"/></td>
   </tr>
   
   <tr>
   <td>선택과목</td>
   <td><jsp:getProperty property="subject" name="i"/></td>
   </tr>
   
   <tr>
   <td>취미</td>
   <td>
    	<jsp:getProperty property="hobby" name="i"/>
   </td>
   </tr>
   
 </table>
</body>
</html>