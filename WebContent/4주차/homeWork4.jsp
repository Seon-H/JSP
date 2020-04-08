<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>Insert title here</title>
</head>
<body>
<% 
String url = request.getParameter("url");
   
switch(Integer.parseInt(url)) // String 형식의 변수값을 int 형으로 변환
{
     case 1:
             response.sendRedirect("http://www.oracle.com");
             break;
     case 2:
             response.sendRedirect("http://apache.org");
             break;
     default:
         response.sendRedirect("https://www.eclipse.org/");
         break;

     
}


%>

 
</body>
</html>