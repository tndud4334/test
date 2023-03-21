<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acorn Cinema</title>
<link rel="stylesheet" href="css/style_main.css?after">

<!-- 회원가입 성공 창 관련 코드 -->
<%
String mesg = (String)session.getAttribute("memberAdd");
	if(mesg != null){
%>
<script type="text/javascript">
	alert("<%=mesg%>");
</script>

<%
session.removeAttribute("memberAdd");
	} %>

</head>
<body>
<%@ include file="up/menu.jsp" %>
<section>
	<div class="leftcolumn">
	<div class="movie">
      <h1>슬램덩크</h1>
      <div class="mainmovie">
      <img width="350" height="500" src="img/movie/movie1.jpg"></img>
        <div>
          <button onclick="location='loginForm.jsp'" class="mainbutton" style="cursor:pointer">예 매</button>
        </div>
      </div>
    </div>
  </div>  
  <div class="centercolumn">
    <div class="movie">
      <h1>스즈메의 문단속</h1>
      <div class="mainmovie">
      <img width="350" height="500" src="img/movie/movie2.jpg"></img>
      <div>         
          <button onclick="location='loginForm.jsp'" class="mainbutton" style="cursor:pointer">예 매</button>
        </div>
      </div>
    </div>
  </div>
  <div class="rightcolumn">
    <div class="movie">
      <h1>똑똑똑</h1>
      <div class="mainmovie">
      <img width="350" height="500" src="img/movie/movie3.jpg"></img>
      <div>
          <button onclick="location='loginForm.jsp'" class="mainbutton" style="cursor:pointer">예 매</button>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>