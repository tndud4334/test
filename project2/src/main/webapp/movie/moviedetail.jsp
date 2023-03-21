<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.dto.MovieDTO"%>
<%@page import="java.util.List"%>

<% 
	MovieDTO dto =  (MovieDTO)request.getAttribute("movieList");

	 String mcode = dto.getMcode();
	 String mname = dto.getMname();
	 String mename = dto.getMename();
	 String mdirector = dto.getMdirector();
	 String mactor = dto.getMactor();
	 String mgenre = dto.getMgenre();
	 int mtime = dto.getMtime();
	 String mgrade = dto.getMgrade();
	 String mdate = dto.getMdate();
	 String mcontent = dto.getMcontent();
	 String mimage = dto.getMimage();
%>
<table border="0">
  <tr>
  	<td rowspan="12"><img src="img/<%=mimage %>.jpg"></td>
  	<td><%=mname %></td>
  </tr>
  <tr><td><%=mename %></td></tr>
  <tr><td><hr></td><td><hr></td></tr>
  <tr><td>감독 : </td><td><%=mdirector %></td> </tr>
  <tr><td>배우 : </td><td><%=mactor %></td></tr>
  <tr><td>장르 : </td><td><%=mgenre %></td></tr>
  <tr><td>상영시간 : </td><td><%=mtime %>분 </td></tr>
  <tr><td>등급 : </td><td><%=mgrade %></td></tr>
  <tr><td>개봉일 : </td><td><%=mdate %></td></tr>
  <tr><td colspan="2"><br></td>
  <tr><td>
  	<input type="button" value="예매하기">
  </td></tr>
  <tr><td colspan="2"><br></td>
  <tr><td colspan="3">
    <input type="button" value="주요 정보">
  	<input type="button" value="예고편">
  	<input type="button" value="리뷰">
  </td></tr>
  <tr><td colspan="3">
  	<%=mcontent %>
  </td></tr>
</table>
