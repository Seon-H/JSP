<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.Enumeration" 
    %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>4주차 첫번째 과제: 개인면담카드</title>
  <style>
   table {
           border-collapse : collapse; /*중복되는 테두리를 한 줄 표시*/
   }
   th{
          padding : 5px;
   }
   td{
          padding : 5px;
          width : 600px;
   }
   
 </style>
</head>
<body>
 <h2>사용자 입력 확인</h2>
   <%
    request.setCharacterEncoding("utf-8");
    String affiliation = request.getParameter("affiliation");
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String date = request.getParameter("date");
    String level = request.getParameter("level");
    String memo = request.getParameter("memo");
    
  %>
  
  <table border ="1">
  
  <tr>
  <th>컨트롤 요소</th>
  <td><b>입력값</b></td>
  </tr>
  
  <tr>
  <th>소속</th>
  <td><%= affiliation %></td>
  </tr>
  
  <tr>
  <th>성명</th>
  <td><%= name %></td>
  </tr>
  
  <tr>
  <th>현주소</th>
  <td><%= address %></td>
  </tr>
  
  <tr>
  <th>입사년월일</th>
  <td><%= date%></td>
  </tr>
  
  <tr>
  <th>최종학력</th>
  <td><%= level %></td>
  </tr>
  
  <tr>
  <th>자격증</th>
  <td>
  <% String[] license = request.getParameterValues("license");
  for(int i =0; i< license.length; i++){
	  out.println(license[i] + " ");
  }
  %>
  
  </td>
  </tr>
  
  <tr>
  <th>상담내용</th>
  <td><%= memo %></td>
  </tr>
  
  <tr>
  <th>각 폼 컨트롤의 이름들</th>
  <td>
  <%
  Enumeration Names = request.getParameterNames();

  while(Names.hasMoreElements()){

   String names = (String)Names.nextElement();

   out.println(names);
  }
  %>
  </td>
  </tr>
  
  </table>

</body>
</html>