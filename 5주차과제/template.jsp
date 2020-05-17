<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>5주차 과제 : 템플릿</title>
 <link rel = 'stylesheet' href = 'style.css'>
</head>
<body>

  <jsp:include page="topTop.jsp" flush = 'false'/>

 <header>
  <jsp:include page="top.jsp" flush = 'false'/>
 </header>
 
 <div id = "content">
  <section>
   <jsp:include page="left.jsp" flush = 'false'/>
  </section>
  
  <section>
   <jsp:include page="content.jsp" flush = 'false'/>
  </section>
 </div>
 
 <footer>
  <jsp:include page="bottom.jsp" flush = 'false'/>
 </footer>
 
</body>
</html>