<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!-- session에서 회원 인증확인시 화면 전환 -->
<%
MemberDTO dto2 = (MemberDTO)session.getAttribute("login");
if(dto2 != null){
	String username = dto2.getUsername();
	
%>


<%=username  %> 님 환영합니다.<br>
<a href="LogoutServlet">로그아웃</a>&nbsp
<a href="MyPageServlet">마이페이지</a>&nbsp
<a href="CartListServlet">장바구니</a>&nbsp
<a href="MovieServlet">영화상세보기(예시)</a>&nbsp
<%
} else{
%>

<div class="topmenu">
    <a href="siginupForm.jsp"> 회원가입 </a><!-- mvc 패턴 지키기 --> 
    <a href="loginForm.jsp"> 로그인 </a>
</div>   
	
<%
}
%>
    