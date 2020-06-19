<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
  //연결정보 설정
  String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
  String user = "JSP";
  String password = "1234";
  
  //1.드라이버 로드
  Class.forName("oracle.jdbc.driver.OracleDriver");
  
  //2.연결 객체 생성
  Connection con = DriverManager.getConnection(url,user,password);
  
  //3.sql 준비 및 실행
  String sql = "SELECT * FROM BOARD";
  Statement st = con.createStatement();
  
  //4. 반환 객체
  ResultSet rs = st.executeQuery(sql);
   
%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>로그인 정보</title>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class ="container">
<h1  class ="text-center font-weight-bold">게시판 정보</h1>
<br>
<br>

 <table class ="table table-hover"> 
 <tr>
 <th>ID</th>
 <th>SUBJECT</th>
 <th>CONTENT</th>
 <th>WRITER</th>
 </tr>
 <%
 //5.결과 집합처리
 while(rs.next()){
	 String id = rs.getString("ID");
	 String subject = rs.getString("SUBJECT");
	 String content = rs.getString("CONTENT");
	 String writer = rs.getString("WRITER");
 
 %>

 <tr>
 <td><a href ="updateForm2.jsp?id=<%=id%>"><%=id %></a></td>
 <td><%=subject %></td>
 <td><%=content %></td>
 <td><%=writer %></td>

 </tr>

 <% } 
 //6. 객체 연결 해제
 rs.close();
 st.close();
 con.close();
 %>
  </table>
  </div>
</body>
</html>