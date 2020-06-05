<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>글쓰기</title>
 <style>
 table {border : 1px solid gray; border-collapse : collapse;}
 td{border :1px solid gray;}
 #list{color:blue;}
 #content{height:150px; width:500px;}
 
 </style>

</head>
<body>
<h1>글쓰기</h1>
<form action = "Week8WritePro.jsp" method = "post">
<table>

<tr>
<td colspan = "2" id ="list" align="right">글목록</td>
</tr>

<tr>
<td>이름</td>
<td width="600px" height="40px"><input type ="text" name ="name"></td>
</tr>

<tr>
<td>제목</td>
<td height="40px"><input type ="text" name ="title"></td>
</tr>

<tr>
<td>이메일</td>
<td height="40px"><input type ="text" name ="email"></td>
</tr>

<tr>
<td>내용</td>
<td height="170px"><textarea type ="text" name ="content" id ="content"></textarea></td>
</tr>

<tr>
<td>비밀번호</td>
<td height="40px"><input type ="text" name ="pw"></td>
</tr>

<tr>
<td colspan = "2"  height="40px">
<center>
<input type = "submit" value = "글쓰기">
<input type = "reset" value = "다시작성">
<input type = "submit" value = "목록보기">
</center>
</td>
</tr>

</table>
 
</body>
</html>
