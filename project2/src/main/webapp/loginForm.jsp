<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 스타일 시트(stylesheet)로 사용할 외부 리소스를 불러옴. -->
<link rel="stylesheet" href="css/login.css">



</head>
<body>

<div id="header">
	<h1>로그인</h1>
</div>

<div id="wrapper">

	<div id="content">
		
		
		<!-- userid -->
		<div>
			<span class="box int_userid">
				<input type="text" id="userid" class="int" maxlength="20" placeholder="아이디">
			</span>
		</div>
		
		
		
		<!-- password -->
		<div>
			<span class="box int_password">
				<input type="text" id="password" class="int" maxlength="20" placeholder="비밀번호">
			</span>
		</div>
		
		
		<!-- checkBox -->
		<div class="check">
			<input type="checkbox" id="rememberID" style="width:25px; height:25px;">아이디 저장
		</div>
		
		
		<!-- login btn -->
		<div class="btn_area">
				<button type="button" id="btnLogin">
					<span>로그인</span>
				</button>
		</div>
		
		
		<!-- 링크연결 -->
		<div class="link"> 
			<a href="">ID/PW 찾기</a>&nbsp&nbsp&nbsp&nbsp&nbsp
			<a href="siginupServlet">회원가입</a>&nbsp&nbsp&nbsp&nbsp&nbsp
			<a href="">비회원 예매 확인</a>
		</div>	
		
		
	</div>

</div>


</body>
</html>