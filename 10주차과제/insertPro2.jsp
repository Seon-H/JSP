<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");
  //연결정보 설정
  String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
  String user = "JSP";
  String password = "1234";
  
  //1.드라이버 로드
  Class.forName("oracle.jdbc.driver.OracleDriver");
  
  //2.연결 객체 생성
  Connection con = DriverManager.getConnection(url,user,password);
  
  //3.sql 준비
  String sql = "INSERT INTO BOARD VALUES(?,?,?,?)";
  PreparedStatement pst = con.prepareStatement(sql);
  pst.setString(1,request.getParameter("id"));
  pst.setString(2,request.getParameter("subject"));
  pst.setString(3,request.getParameter("content"));
  pst.setString(4,request.getParameter("writer"));

  
  //4.sql 실행
  int i = pst.executeUpdate();
  
  //5. 객체해제
  pst.close();
  con.close();
  
  response.sendRedirect("list2.jsp");
   
%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>Insert title here</title>
</head>
<body>
 
</body>
</html>