<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>4주차 첫번째 과제: 개인면담카드</title>
 <style>
   th{ background: #5F00FF;
       color: #FFE400;
   }
   table {
           border-collapse : collapse; /*중복되는 테두리를 한 줄 표시*/
   }
   td{
          width : 600px;
   }
   div{
          text-align : center;
   }
   
 </style>
</head>
<body>
 <h2><b>개인면담카드</b></h2>
 <hr>
  
  <table border ="1">
  <form action= "homeWorkWeek4.jsp" method = "post" >
  <tr>
  <th>소속</th>
  <td><input type = "text"  name = "affiliation" size = "20"></td>
  </tr>
  
  <tr>
  <th>성명</th>
  <td><input type = "text"  name ="name" size = "20"></td>
  </tr>
  
  <tr>
  <th>현주소</th>
  <td><input type = "text" name ="address" size = "20"></td>
  </tr>
  
  <tr>
  <th>입사년월일</th>
  <td><input type = "date" name = "date"></td>
  </tr>
  
  <tr>
  <th>최종학력</th>
  <td><input type = "radio"  value = "중졸" name ="level">중졸
      <input type = "radio"  value = "고졸" name ="level">고졸
      <input type = "radio"  value = "전문대졸" name ="level">전문대졸
      <input type = "radio"  value = "대졸" name ="level">대졸
  </td>
  </tr>
  
  
  <tr>
  <th>
  <td colspan = "2">
  <fieldset>
   <legend>자격증</legend>
    <ul>
      <input type = "checkbox" value = "자동차2종" name = "license">자동차2종   
      <input type = "checkbox" value = "정보처리산업기사" name = "license">정보처리산업기사
      <input type = "checkbox" value = "컴퓨터활용" name = "license">컴퓨터활용
      <input type = "checkbox" value = "기타" name = "license">기타
    </ul>
  </fieldset>
  </td>
  </th>
  </tr>

  
  <tr>
  <th>상담내용</th>
  <td><textarea cols = "50" rows = "20" name = "memo" placeholder = "상담내역 입력하기"></textarea>
  </td>
  </tr>
  
  <tr>
  <td colspan = "2" >
  <div>
  <input type = "submit" value = "입력완료"> 
  <input type = "reset" value = "다시입력">
  </div>
  </td>
  </tr>
 
  </table>
  <hr>
  


</body>
</html>